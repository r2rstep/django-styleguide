from django.urls import path, include

urlpatterns = [
    path(
        'auth/', include(('django_template.authentication.urls', 'authentication'))
    ),
    path('common/', include(('django_template.common.urls', 'common'))),
    path('users/', include(('django_template.users.urls', 'users'))),
]
