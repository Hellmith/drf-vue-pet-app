from django.urls import path

from .views import EventViewSet, FacilityViewSet, FacilityTypeViewSet, PropertyViewSet, ScriptViewSet

ACTIONS = {
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy',
}

#   URL-адрес для работы с событиями
urlpatterns = [
    path(
        'events/',
        EventViewSet.as_view({'get': 'list'}),
        name='events'
    ),
    path(
        'events/<int:pk>',
        EventViewSet.as_view(ACTIONS),
        name='event-details'
    )
]

urlpatterns += [
    path(
        'facilities/',
        FacilityViewSet.as_view({'get': 'list'}),
        name='facilities'
    ),
    path(
        'facilities/<int:pk>',
        FacilityViewSet.as_view(ACTIONS),
        name='facility-details'
    )
]

urlpatterns += [
    path(
        'facility-types/',
        FacilityTypeViewSet.as_view({'get': 'list'}),
        name='facility-types'
    ),
    path(
        'facility-types/<int:pk>',
        FacilityTypeViewSet.as_view(ACTIONS),
        name='facility-type-details'
    )
]

urlpatterns += [
    path(
        'properties/',
        PropertyViewSet.as_view({'get': 'list'}),
        name='properties'
    ),
    path(
        'properties/<int:pk>',
        PropertyViewSet.as_view(ACTIONS),
        name='property-details'
    )
]

urlpatterns += [
    path(
        'scripts/',
        ScriptViewSet.as_view({'get': 'list', 'post': 'create'}),
        name='scripts'
    ),
    path(
        'scripts/<int:pk>',
        ScriptViewSet.as_view(ACTIONS),
        name='script-details'
    )
]
