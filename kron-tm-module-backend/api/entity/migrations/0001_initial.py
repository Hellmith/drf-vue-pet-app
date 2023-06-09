# Generated by Django 4.1.7 on 2023-04-06 16:16

from django.db import migrations, models
import django.db.models.deletion
import jsonfield.fields
import simple_history.models
import uuid


class Migration(migrations.Migration):
    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Event",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "uuid",
                    models.UUIDField(default=uuid.uuid4, editable=False, unique=True),
                ),
                (
                    "property_value",
                    models.FloatField(
                        blank=True, null=True, verbose_name="Значение свойства"
                    ),
                ),
                (
                    "confirm_at",
                    models.DateTimeField(
                        auto_now=True, verbose_name="Дата подтверждения"
                    ),
                ),
            ],
            options={
                "verbose_name": "событие",
                "verbose_name_plural": "события",
                "ordering": ["-id"],
            },
        ),
        migrations.CreateModel(
            name="Facility",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "uuid",
                    models.UUIDField(default=uuid.uuid4, editable=False, unique=True),
                ),
                ("name", models.CharField(max_length=40, verbose_name="Название")),
                (
                    "process_rate",
                    models.SmallIntegerField(
                        default="30", verbose_name="Период обновления"
                    ),
                ),
                (
                    "actual",
                    models.BooleanField(default=1, verbose_name="Статус актуальности"),
                ),
            ],
            options={
                "verbose_name": "объект",
                "verbose_name_plural": "объекты",
                "ordering": ["-id"],
            },
        ),
        migrations.CreateModel(
            name="FacilityType",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "uuid",
                    models.UUIDField(default=uuid.uuid4, editable=False, unique=True),
                ),
                ("name", models.CharField(max_length=255, verbose_name="Название")),
                (
                    "short_name",
                    models.CharField(
                        max_length=40, verbose_name="Сокращенное название"
                    ),
                ),
                (
                    "system_name",
                    models.CharField(max_length=40, verbose_name="Системное название"),
                ),
                ("type_class", models.CharField(max_length=255, verbose_name="Класс")),
                ("node_type", models.IntegerField(verbose_name="Тип узла")),
            ],
            options={
                "verbose_name": "тип объекта",
                "verbose_name_plural": "типы объектов",
                "ordering": ["-id"],
            },
        ),
        migrations.CreateModel(
            name="HistoricalEvent",
            fields=[
                (
                    "id",
                    models.BigIntegerField(
                        auto_created=True, blank=True, db_index=True, verbose_name="ID"
                    ),
                ),
                (
                    "uuid",
                    models.UUIDField(db_index=True, default=uuid.uuid4, editable=False),
                ),
                (
                    "property_value",
                    models.FloatField(
                        blank=True, null=True, verbose_name="Значение свойства"
                    ),
                ),
                (
                    "confirm_at",
                    models.DateTimeField(
                        blank=True, editable=False, verbose_name="Дата подтверждения"
                    ),
                ),
                ("history_id", models.AutoField(primary_key=True, serialize=False)),
                ("history_date", models.DateTimeField(db_index=True)),
                ("history_change_reason", models.CharField(max_length=100, null=True)),
                (
                    "history_type",
                    models.CharField(
                        choices=[("+", "Created"), ("~", "Changed"), ("-", "Deleted")],
                        max_length=1,
                    ),
                ),
            ],
            options={
                "verbose_name": "historical событие",
                "verbose_name_plural": "historical события",
                "ordering": ("-history_date", "-history_id"),
                "get_latest_by": ("history_date", "history_id"),
            },
            bases=(simple_history.models.HistoricalChanges, models.Model),
        ),
        migrations.CreateModel(
            name="HistoricalFacility",
            fields=[
                (
                    "id",
                    models.BigIntegerField(
                        auto_created=True, blank=True, db_index=True, verbose_name="ID"
                    ),
                ),
                (
                    "uuid",
                    models.UUIDField(db_index=True, default=uuid.uuid4, editable=False),
                ),
                ("name", models.CharField(max_length=40, verbose_name="Название")),
                (
                    "process_rate",
                    models.SmallIntegerField(
                        default="30", verbose_name="Период обновления"
                    ),
                ),
                (
                    "actual",
                    models.BooleanField(default=1, verbose_name="Статус актуальности"),
                ),
                ("history_id", models.AutoField(primary_key=True, serialize=False)),
                ("history_date", models.DateTimeField(db_index=True)),
                ("history_change_reason", models.CharField(max_length=100, null=True)),
                (
                    "history_type",
                    models.CharField(
                        choices=[("+", "Created"), ("~", "Changed"), ("-", "Deleted")],
                        max_length=1,
                    ),
                ),
            ],
            options={
                "verbose_name": "historical объект",
                "verbose_name_plural": "historical объекты",
                "ordering": ("-history_date", "-history_id"),
                "get_latest_by": ("history_date", "history_id"),
            },
            bases=(simple_history.models.HistoricalChanges, models.Model),
        ),
        migrations.CreateModel(
            name="HistoricalFacilityType",
            fields=[
                (
                    "id",
                    models.BigIntegerField(
                        auto_created=True, blank=True, db_index=True, verbose_name="ID"
                    ),
                ),
                (
                    "uuid",
                    models.UUIDField(db_index=True, default=uuid.uuid4, editable=False),
                ),
                ("name", models.CharField(max_length=255, verbose_name="Название")),
                (
                    "short_name",
                    models.CharField(
                        max_length=40, verbose_name="Сокращенное название"
                    ),
                ),
                (
                    "system_name",
                    models.CharField(max_length=40, verbose_name="Системное название"),
                ),
                ("type_class", models.CharField(max_length=255, verbose_name="Класс")),
                ("node_type", models.IntegerField(verbose_name="Тип узла")),
                ("history_id", models.AutoField(primary_key=True, serialize=False)),
                ("history_date", models.DateTimeField(db_index=True)),
                ("history_change_reason", models.CharField(max_length=100, null=True)),
                (
                    "history_type",
                    models.CharField(
                        choices=[("+", "Created"), ("~", "Changed"), ("-", "Deleted")],
                        max_length=1,
                    ),
                ),
            ],
            options={
                "verbose_name": "historical тип объекта",
                "verbose_name_plural": "historical типы объектов",
                "ordering": ("-history_date", "-history_id"),
                "get_latest_by": ("history_date", "history_id"),
            },
            bases=(simple_history.models.HistoricalChanges, models.Model),
        ),
        migrations.CreateModel(
            name="HistoricalProperty",
            fields=[
                (
                    "id",
                    models.BigIntegerField(
                        auto_created=True, blank=True, db_index=True, verbose_name="ID"
                    ),
                ),
                (
                    "uuid",
                    models.UUIDField(db_index=True, default=uuid.uuid4, editable=False),
                ),
                (
                    "description",
                    models.CharField(
                        default="Без описания", max_length=1000, verbose_name="Описание"
                    ),
                ),
                (
                    "is_fast",
                    models.BooleanField(
                        default=True, verbose_name="Статус быстрого свойств"
                    ),
                ),
                ("color", models.CharField(max_length=14, verbose_name="Цвет")),
                ("history_id", models.AutoField(primary_key=True, serialize=False)),
                ("history_date", models.DateTimeField(db_index=True)),
                ("history_change_reason", models.CharField(max_length=100, null=True)),
                (
                    "history_type",
                    models.CharField(
                        choices=[("+", "Created"), ("~", "Changed"), ("-", "Deleted")],
                        max_length=1,
                    ),
                ),
            ],
            options={
                "verbose_name": "historical свойство",
                "verbose_name_plural": "historical свойства",
                "ordering": ("-history_date", "-history_id"),
                "get_latest_by": ("history_date", "history_id"),
            },
            bases=(simple_history.models.HistoricalChanges, models.Model),
        ),
        migrations.CreateModel(
            name="HistoricalScript",
            fields=[
                (
                    "id",
                    models.BigIntegerField(
                        auto_created=True, blank=True, db_index=True, verbose_name="ID"
                    ),
                ),
                (
                    "uuid",
                    models.UUIDField(db_index=True, default=uuid.uuid4, editable=False),
                ),
                (
                    "name",
                    models.CharField(
                        db_index=True,
                        default="Без названия",
                        max_length=40,
                        verbose_name="Название",
                    ),
                ),
                ("design", jsonfield.fields.JSONField()),
                ("history_id", models.AutoField(primary_key=True, serialize=False)),
                ("history_date", models.DateTimeField(db_index=True)),
                ("history_change_reason", models.CharField(max_length=100, null=True)),
                (
                    "history_type",
                    models.CharField(
                        choices=[("+", "Created"), ("~", "Changed"), ("-", "Deleted")],
                        max_length=1,
                    ),
                ),
            ],
            options={
                "verbose_name": "historical скрипт",
                "verbose_name_plural": "historical скрипты",
                "ordering": ("-history_date", "-history_id"),
                "get_latest_by": ("history_date", "history_id"),
            },
            bases=(simple_history.models.HistoricalChanges, models.Model),
        ),
        migrations.CreateModel(
            name="Script",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "uuid",
                    models.UUIDField(default=uuid.uuid4, editable=False, unique=True),
                ),
                (
                    "name",
                    models.CharField(
                        default="Без названия",
                        max_length=40,
                        unique=True,
                        verbose_name="Название",
                    ),
                ),
                ("design", jsonfield.fields.JSONField()),
            ],
            options={
                "verbose_name": "скрипт",
                "verbose_name_plural": "скрипты",
                "ordering": ["-id"],
            },
        ),
        migrations.CreateModel(
            name="Property",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "uuid",
                    models.UUIDField(default=uuid.uuid4, editable=False, unique=True),
                ),
                (
                    "description",
                    models.CharField(
                        default="Без описания", max_length=1000, verbose_name="Описание"
                    ),
                ),
                (
                    "is_fast",
                    models.BooleanField(
                        default=True, verbose_name="Статус быстрого свойств"
                    ),
                ),
                ("color", models.CharField(max_length=14, verbose_name="Цвет")),
                (
                    "facility_id",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="entity.facility",
                        verbose_name="Объект",
                    ),
                ),
            ],
            options={
                "verbose_name": "свойство",
                "verbose_name_plural": "свойства",
                "ordering": ["-id"],
            },
        ),
    ]
