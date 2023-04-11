# Create your models here.
from django.contrib.auth.models import AbstractUser, UserManager, GroupManager, PermissionsMixin
from django.utils.translation import gettext_lazy as _
from simple_history.models import HistoricalRecords
from django.db import models

from uuid import uuid4


class Employee(AbstractUser):
    uuid = models.UUIDField(unique=True, default=uuid4, editable=False)
    username = models.EmailField(_('Имя пользователя'), max_length=256, unique=True)

    first_name = models.CharField(max_length=256, null=True, blank=True)
    last_name = models.CharField(max_length=256, null=True, blank=True)

    history = HistoricalRecords()

    USERNAME_FIELD = 'username'
    EMAIL_FIELD = 'username'
    REQUIRED_FIELDS = ['first_name', 'last_name']

    objects = UserManager()

    class Meta:
        ordering = ['-id']
        verbose_name = 'пользователь'
        verbose_name_plural = 'пользователи'

    def __str__(self):
        return f'{self.username} ({self.first_name} {self.last_name})'
