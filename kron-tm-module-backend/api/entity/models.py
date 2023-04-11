# Create your models here.

from django.utils.translation import gettext_lazy as _

from simple_history.models import HistoricalRecords

from jsonfield import JSONField

from django.db import models

from uuid import uuid4


class Event(models.Model):
    uuid = models.UUIDField(unique=True, default=uuid4, editable=False)

    facility_id = models.ForeignKey('Facility', on_delete=models.CASCADE, verbose_name='Объект')
    property_id = models.ForeignKey('Property', on_delete=models.CASCADE, verbose_name='Свойство')
    property_value = models.FloatField('Значение свойства', blank=True, null=True)

    confirm_at = models.DateTimeField('Дата подтверждения', auto_now=True)

    history = HistoricalRecords()

    class Meta:
        ordering = ['-id']
        verbose_name = 'событие'
        verbose_name_plural = 'события'

    def __str__(self):
        return f'{self.property_value} ({self.facility_id} {self.property_id})'


class Facility(models.Model):
    uuid = models.UUIDField(unique=True, default=uuid4, editable=False)

    name = models.CharField('Название', max_length=40)
    process_rate = models.SmallIntegerField('Период обновления', default='30')
    actual = models.BooleanField('Статус актуальности', default=1)

    facility_type_id = models.ForeignKey('FacilityType', on_delete=models.CASCADE, verbose_name='Тип объекта')
    script_id = models.ForeignKey('Script', on_delete=models.CASCADE, blank=True, null=True, verbose_name='Cкрипт')

    history = HistoricalRecords()

    class Meta:
        ordering = ['-id']
        verbose_name = 'объект'
        verbose_name_plural = 'объекты'

    def __str__(self):
        return f'{self.name} ({self.facility_type_id})'


class FacilityType(models.Model):
    uuid = models.UUIDField(unique=True, default=uuid4, editable=False)

    name = models.CharField('Название', max_length=255)
    short_name = models.CharField('Сокращенное название', max_length=40)
    system_name = models.CharField('Системное название', max_length=40)
    type_class = models.CharField('Класс', max_length=255)
    node_type = models.IntegerField('Тип узла')

    history = HistoricalRecords()

    class Meta:
        ordering = ['-id']
        verbose_name = 'тип объекта'
        verbose_name_plural = 'типы объектов'

    def __str__(self):
        return f'{self.short_name} ({self.name})'


class Property(models.Model):
    uuid = models.UUIDField(unique=True, default=uuid4, editable=False)

    facility_id = models.ForeignKey('Facility', on_delete=models.CASCADE, verbose_name='Объект')
    description = models.CharField('Описание', max_length=1000, default='Без описания')
    is_fast = models.BooleanField('Статус быстрого свойств', default=True)
    color = models.CharField('Цвет', max_length=14)

    history = HistoricalRecords()

    class Meta:
        ordering = ['-id']
        verbose_name = 'свойство'
        verbose_name_plural = 'свойства'

    def __str__(self):
        return f'{self.facility_id} ({self.description} {self.color})'


class Script(models.Model):
    uuid = models.UUIDField(unique=True, default=uuid4, editable=False)

    name = models.CharField('Название', default='Без названия', max_length=40, unique=True)
    design = JSONField()

    history = HistoricalRecords()

    class Meta:
        ordering = ['-id']
        verbose_name = 'скрипт'
        verbose_name_plural = 'скрипты'

    def __str__(self):
        return f'{self.name}'