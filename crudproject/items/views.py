from django.shortcuts import render,redirect
from .models import Item

from django.shortcuts import render, redirect, get_object_or_404
from .models import Item

def home(request):
    if request.method == "POST":
        name = request.POST.get("name", "").strip()
        description = request.POST.get("description", "").strip()

        if name:
            Item.objects.create(name=name, description=description)
            return redirect("items-home")

    items = Item.objects.all().order_by("-created_at")
    return render(request, "items/home.html", {"items": items})

def delete_item(request, item_id):
    if request.method == "POST":
        item = get_object_or_404(Item, id=item_id)
        item.delete()
    return redirect("items-home")
