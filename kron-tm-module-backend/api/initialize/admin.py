from django.utils.translation import gettext_lazy as _
from django.contrib.auth.admin import UserAdmin, GroupAdmin as RoleAdmin
from django_rest_passwordreset.models import ResetPasswordToken
from django.contrib import admin
from django.contrib.auth.models import Group

from .models import Employee

admin.site.site_header = 'КРОН-ТМ Управление'


@admin.register(Employee)
class EmployeeAdmin(UserAdmin):
    '''Define admin model for custom User model with no email field.'''

    fieldsets = (
        (None, {'fields': ('username', 'password')}),
        (_('Personal info'), {'fields': ('first_name', 'last_name')}),
        (_('Permissions'), {'fields': ('is_active', 'is_staff', 'is_superuser',
                                       'groups', 'user_permissions')}),
        (_('Important dates'), {'fields': ('last_login', 'date_joined')}),
    )
    add_fieldsets = ((None, {
        'classes': ('wide',),
        'fields': ('username', 'password1', 'password2'),
    }),)
    list_display = ('username', 'first_name', 'last_name', 'is_staff')
    search_fields = ('username', 'first_name', 'last_name')
    ordering = ('id',)


admin.site.unregister(Group)
admin.site.unregister(ResetPasswordToken)