from django.urls import path

from core.api.views import HealthCheckAPIView

urlpatterns = [
    path("healthcheck", HealthCheckAPIView.as_view(), name="healthcheck")
]
