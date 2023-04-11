from django.urls import re_path, include

api_urlpatterns = [
    re_path('', include('api.initialize.urls'), name='auth'),
    re_path('', include('api.entity.urls'), name='entity'),
]
