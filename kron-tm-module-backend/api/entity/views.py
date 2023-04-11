from rest_framework import viewsets

from django_filters.rest_framework import DjangoFilterBackend

from drf_spectacular.utils import extend_schema

from .models import Event, Facility, FacilityType, Property, Script
from .serializers import EventSerializer, FacilitySerializer, FacilityTypeSerializer, PropertySerializer, ScriptSerializer


#   Для всех классов viewset используется модуль rest_framework, который предоставляет реализацию API для работы с данными, а также модуль drf_spectacular.utils для документации API. Каждый класс viewset расширяется декоратором extend_schema, который добавляет к классу метаданные для документации API.
#   Также для всех классов viewset определены свойства queryset и serializer_class, которые определяют соответственно выборку записей и способ преобразования данных в сериализуемый формат. Определены также методы http_method_names для задания разрешенных HTTP-методов и filter_backends для задания фильтров для выборки данных.
#   Данный код описывает набор классов viewset для операций CRUD с моделями Event, Facility, FacilityType, Property и Script.


#   Класс EventViewSet - предоставляет функционал для работы с моделью Event, включая получение списка всех записей, создание, обновление и удаление конкретной записи.
@extend_schema(tags=["События"])
class EventViewSet(viewsets.ModelViewSet):
    queryset = Event.objects.all()
    serializer_class = EventSerializer
    http_method_names = ['get', 'put', 'patch', 'delete']
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ['id', 'uuid', 'facility_id',
                        'property_id', 'property_value', 'confirm_at']

#   Класс FacilityViewSet - предоставляет функционал для работы с моделью Facility, включая получение списка всех записей, создание, обновление и удаление конкретной записи.


@extend_schema(tags=["Объекты"])
class FacilityViewSet(viewsets.ModelViewSet):
    queryset = Facility.objects.all()
    serializer_class = FacilitySerializer
    http_method_names = ['get', 'put', 'patch', 'delete']
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ['id', 'uuid', 'name', 'process_rate',
                        'actual', 'facility_type_id', 'script_id']

#   Класс FacilityTypeViewSet - предоставляет функционал для работы с моделью FacilityType, включая получение списка всех записей, создание, обновление и удаление конкретной записи.


@extend_schema(tags=["Типы объектов"])
class FacilityTypeViewSet(viewsets.ModelViewSet):
    queryset = FacilityType.objects.all()
    serializer_class = FacilityTypeSerializer
    http_method_names = ['get', 'put', 'patch', 'delete']
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ['id', 'uuid', 'name', 'short_name',
                        'system_name', 'type_class', 'node_type']

#   Класс PropertyViewSet - предоставляет функционал для работы с моделью Property, включая получение списка всех записей, создание, обновление и удаление конкретной записи.


@extend_schema(tags=["Свойства"])
class PropertyViewSet(viewsets.ModelViewSet):
    queryset = Property.objects.all()
    serializer_class = PropertySerializer
    http_method_names = ['get', 'put', 'patch', 'delete']
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ['id', 'uuid', 'facility_id',
                        'description', 'is_fast', 'color']

#   Класс ScriptViewSet - предоставляет функционал для работы с моделью Script, включая получение списка всех записей, создание, обновление и удаление конкретной записи.


@extend_schema(tags=["Скрипты"])
class ScriptViewSet(viewsets.ModelViewSet):
    queryset = Script.objects.all()
    serializer_class = ScriptSerializer
    http_method_names = ['get', 'post', 'put', 'patch', 'delete']
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ['id', 'uuid', 'name']
