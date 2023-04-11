from django.contrib.auth import get_user_model

from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework_simplejwt.exceptions import TokenError

from rest_framework.permissions import IsAuthenticated
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework import views, status

from drf_spectacular.utils import extend_schema

from djoser.views import UserViewSet as BaseUserViewSet

from .serializers import RefreshSerializer, SignupSerializer, ProfileSerializer, EmployeeSerializer

AuthUser = get_user_model()


@extend_schema(tags=["Инициализация"])
class RegisterViewSet(BaseUserViewSet):
    serializer_class = SignupSerializer


@extend_schema(tags=["Инициализация"])
class LoginView(TokenObtainPairView):
    pass


@extend_schema(tags=["Инициализация"])
class LogoutView(views.APIView):
    authentication_classes = (JWTAuthentication,)
    serializer_class = RefreshSerializer

    def post(self, request, *args, **kwargs):
        try:
            token = RefreshToken(request.data.get('refresh'))
            token.blacklist()
            return Response({"detail": "Успешный выход из системы."}, status=status.HTTP_200_OK)
        except TokenError:
            return Response({"detail": "Неверный токен обновления."}, status=status.HTTP_400_BAD_REQUEST)


@extend_schema(tags=["Инициализация"])
class RefreshView(TokenRefreshView):
    pass


@extend_schema(tags=["Профиль"])
class ProfileViewSet(BaseUserViewSet):
    serializer_class = ProfileSerializer
    http_method_names = ['get', 'put', 'patch', 'delete']

    def get_serializer_class(self):
        return self.serializer_class


@extend_schema(tags=["Пользователи"])
class UserViewSet(BaseUserViewSet):
    serializer_class = EmployeeSerializer
    http_method_names = ['post', 'get', 'put', 'patch', 'delete']

    def get_serializer_class(self):
        return self.serializer_class
