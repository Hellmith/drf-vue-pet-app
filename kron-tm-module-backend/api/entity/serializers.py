from rest_framework import serializers

from .models import Event, Facility, FacilityType, Property, Script


class EventSerializer(serializers.ModelSerializer):

    class Meta:
        model = Event
        fields = ('id', 'uuid', 'facility_id', 'property_id', 'property_value', 'confirm_at')


class FacilitySerializer(serializers.ModelSerializer):

    class Meta:
        model = Facility
        fields = ('id', 'uuid', 'name', 'process_rate', 'actual', 'facility_type_id', 'script_id')


class FacilityTypeSerializer(serializers.ModelSerializer):

    class Meta:
        model = FacilityType
        fields = ('id', 'uuid', 'name', 'short_name', 'system_name', 'type_class', 'node_type')


class PropertySerializer(serializers.ModelSerializer):

    class Meta:
        model = Property
        fields = ('id', 'uuid', 'facility_id', 'description', 'is_fast', 'color')


class ScriptSerializer(serializers.ModelSerializer):

    class Meta:
        model = Script
        fields = ('id', 'uuid', 'name', 'design')
