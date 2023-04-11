from django.utils.translation import gettext_lazy as _

from django.contrib import admin

from .models import Event, Facility, FacilityType, Property, Script


@admin.register(Event)
class EventAdmin(admin.ModelAdmin):
    list_display = ('property_value', 'facility_id', 'property_id')
    list_filter = ('confirm_at',)
    search_fields = ('property_value', 'facility_id', 'property_id')
    ordering = ['id']


@admin.register(Facility)
class FacilityAdmin(admin.ModelAdmin):
    list_display = ('name', 'process_rate', 'actual')
    list_filter = ('actual',)
    search_fields = ('name',)
    ordering = ['id']


@admin.register(FacilityType)
class FacilityTypeAdmin(admin.ModelAdmin):
    list_display = ('name', 'short_name', 'system_name', 'type_class', 'node_type')
    search_fields = ('name', 'short_name', 'system_name', 'type_class', 'node_type')
    ordering = ['id']


@admin.register(Property)
class PropertyAdmin(admin.ModelAdmin):
    list_display = ('facility_id', 'description', 'is_fast', 'color')
    list_filter = ('is_fast', 'color')
    search_fields = ('facility_id', 'description')
    ordering = ['id']


@admin.register(Script)
class ScriptAdmin(admin.ModelAdmin):
    list_display = ('name', 'design')
    search_fields = ('name', 'design')
    ordering = ['id']