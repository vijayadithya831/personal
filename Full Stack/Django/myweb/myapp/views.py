# from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
from myapp.models import Students

# Create your views here.
# @csrf_exempt
def home(request):
    return render(request, "home.html")

def register(request):
    if request.method == "POST":
        name = request.POST.get("name")
        email = request.POST.get("email")
        phone = request.POST.get("phone")

        student = Students(Name=name,Email=email,Phone=phone)
        student.save()

    return render(request, "register.html")

