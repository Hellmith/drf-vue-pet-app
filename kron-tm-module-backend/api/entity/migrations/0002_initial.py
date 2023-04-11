# Generated by Django 4.1.7 on 2023-04-06 16:16

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    initial = True

    dependencies = [
        ("entity", "0001_initial"),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.AddField(
            model_name="historicalscript",
            name="history_user",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.SET_NULL,
                related_name="+",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AddField(
            model_name="historicalproperty",
            name="facility_id",
            field=models.ForeignKey(
                blank=True,
                db_constraint=False,
                null=True,
                on_delete=django.db.models.deletion.DO_NOTHING,
                related_name="+",
                to="entity.facility",
                verbose_name="Объект",
            ),
        ),
        migrations.AddField(
            model_name="historicalproperty",
            name="history_user",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.SET_NULL,
                related_name="+",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AddField(
            model_name="historicalfacilitytype",
            name="history_user",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.SET_NULL,
                related_name="+",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AddField(
            model_name="historicalfacility",
            name="facility_type_id",
            field=models.ForeignKey(
                blank=True,
                db_constraint=False,
                null=True,
                on_delete=django.db.models.deletion.DO_NOTHING,
                related_name="+",
                to="entity.facilitytype",
                verbose_name="Тип объекта",
            ),
        ),
        migrations.AddField(
            model_name="historicalfacility",
            name="history_user",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.SET_NULL,
                related_name="+",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AddField(
            model_name="historicalfacility",
            name="script_id",
            field=models.ForeignKey(
                blank=True,
                db_constraint=False,
                null=True,
                on_delete=django.db.models.deletion.DO_NOTHING,
                related_name="+",
                to="entity.script",
                verbose_name="Cкрипт",
            ),
        ),
        migrations.AddField(
            model_name="historicalevent",
            name="facility_id",
            field=models.ForeignKey(
                blank=True,
                db_constraint=False,
                null=True,
                on_delete=django.db.models.deletion.DO_NOTHING,
                related_name="+",
                to="entity.facility",
                verbose_name="Объект",
            ),
        ),
        migrations.AddField(
            model_name="historicalevent",
            name="history_user",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.SET_NULL,
                related_name="+",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AddField(
            model_name="historicalevent",
            name="property_id",
            field=models.ForeignKey(
                blank=True,
                db_constraint=False,
                null=True,
                on_delete=django.db.models.deletion.DO_NOTHING,
                related_name="+",
                to="entity.property",
                verbose_name="Свойство",
            ),
        ),
        migrations.AddField(
            model_name="facility",
            name="facility_type_id",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                to="entity.facilitytype",
                verbose_name="Тип объекта",
            ),
        ),
        migrations.AddField(
            model_name="facility",
            name="script_id",
            field=models.ForeignKey(
                blank=True,
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                to="entity.script",
                verbose_name="Cкрипт",
            ),
        ),
        migrations.AddField(
            model_name="event",
            name="facility_id",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                to="entity.facility",
                verbose_name="Объект",
            ),
        ),
        migrations.AddField(
            model_name="event",
            name="property_id",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                to="entity.property",
                verbose_name="Свойство",
            ),
        ),
    ]