from django.contrib.auth import get_user_model

from rest_framework import serializers

from djoser.serializers import UserSerializer, UserCreateSerializer
from djoser.conf import settings

Employee = get_user_model()


class RefreshSerializer(serializers.Serializer):
    refresh = serializers.CharField()


class SignupSerializer(UserCreateSerializer):

    class Meta:
        model = Employee
        fields = ('first_name', 'last_name', 'username', 'password')


class ProfileSerializer(UserSerializer):

    class Meta:
        model = Employee
        fields = tuple(Employee.REQUIRED_FIELDS) + (settings.USER_ID_FIELD, settings.LOGIN_FIELD, 'is_staff')
        read_only_fields = [settings.LOGIN_FIELD]


class EmployeeSerializer(UserSerializer):

    class Meta:
        model = Employee
        fields = tuple(Employee.REQUIRED_FIELDS) + (settings.USER_ID_FIELD, settings.LOGIN_FIELD, 'is_staff')
        read_only_fields = [settings.LOGIN_FIELD]
