from django.urls import path
from .views import home, delete_item

urlpatterns = [
    path("", home, name="items-home"),
    path("delete/<int:item_id>/", delete_item, name="items-delete"),
]
