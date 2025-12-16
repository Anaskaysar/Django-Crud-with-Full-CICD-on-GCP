from django.shortcuts import render,redirect
from .models import Item

def home(request):
    if request.method == "POST":
        name = request.POST.get("name", "").strip()
        description = request.POST.get("description", "").strip()

        if name:
            Item.objects.create(name=name, description=description)
            return redirect("items-home")  # redirect after POST

    items = Item.objects.all().order_by("-created_at")
    return render(request, "items/home.html", {"items": items})