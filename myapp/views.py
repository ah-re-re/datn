# from django.shortcuts import render

# Create your views here.
# // myapp / views.py
from django.shortcuts import render, redirect, get_object_or_404
from .forms import EmployeeForm, DoctorFrom, PatientForm, CommentForm
from .models import Employee, doctor, patient, comment
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from ninja import NinjaAPI, Form
from .schemas import *
from typing import List



def das(request):
    return render(request, 'base2.html')

def doc(request):
    Doctor = doctor.objects.all()
    return render(request, 'doctor.html', {'Doctor' : Doctor})
# -----------------------patient---------------------
def ttpati(request):
    patienter = patient.objects.all()
    return render(request, 'patienter.html', {'patienter': patienter})

def patientnew(request):
    if request.method == 'POST':
        form = PatientForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('/pati/')
    else:
        form = PatientForm()
    return render(request, 'create_pati.html', {'form': form})

def patient_update(request, pk):
    patientz = patient.objects.get(pk=pk)
    if request.method == 'POST':
        form = PatientForm(request.POST, request.FILES, instance=patientz)
        if form.is_valid():
            form.save()
            return redirect('/pati/')
    else:
        form = PatientForm(instance=patientz)
    return render(request, 'update_com.html', {'form': form, 'patientz': patientz})

def patient_del(request, pk):
    patienty = get_object_or_404(patient, pk=pk)
    patienty.delete()
    return redirect('/pati/')





# ------------------------
def addnewpati(request):
    if request.method == "POST":
        form = CommentForm(request.POST, request.FILES, )
        if form.is_valid():

                form.save()
                return redirect('/com/')

    else:
        form = CommentForm()
    return render(request, 'create_item.html', {'form': form})

def detals(request):
    comments = comment.objects.all()
    return render(request, 'item_detail.html', {'comments': comments})

def comment_update(request, pk):
    commentz = comment.objects.get(pk=pk)
    if request.method == 'POST':
        form = CommentForm(request.POST, instance=commentz)
        if form.is_valid():
            form.save()
            return redirect('/com/')
    else:
        form = CommentForm(instance=commentz)
    return render(request, 'update_com.html', {'form': form, 'commentz': commentz})


def comment_delete(request, pk):
    commenty = get_object_or_404(comment, pk=pk)
    commenty.delete()
    return redirect('/com/')

# --------------



def login_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('/index/')
        else:
            return render(request, './LoginLogOut/login.html', {'error_message': 'Invalid login credentials.'})
    return render(request, './LoginLogOut/login.html')

@login_required(login_url='login')
def form_view(request):
    return render(request, 'base2.html')

@login_required(login_url='login')
def logout_view(request):
    logout(request)
    return redirect('login')

# ----------

api = NinjaAPI()

@api.get('/data', response=List[PatientIn])
def showdata(request):
    qs = patient.objects.all()
    return qs

@api.get('/list_doctor', response=List[DoctorOut])
def showdoctor(request):
    qs = doctor.objects.all()
    return qs

@api.post('/add_new_patient_api')
def add_patient(request, new_patient: PatientIn = Form(...)):
    try:
        # print(new_patient.dict())
        data = new_patient.dict()
        file = request.FILES['images']
        patient.objects.create(Name=data["Name"],
                                        DoctorID=doctor.objects.get(id=data["DoctorID"]),
                                        DateOfBirth=data["DateOfBirth"],
                                        images=file,
                                        ExamDate=data["ExamDate"])
        return {"message":"Done"}
    except Exception as E:
        return {"error": f"{E}"}
