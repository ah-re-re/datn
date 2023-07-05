# from django.shortcuts import render

# Create your views here.
# // myapp / views.py
from django.shortcuts import render, redirect, get_object_or_404
from .forms import EmployeeForm, DoctorFrom, PatientForm, CommentForm
from .models import Employee, doctor, patient, comment
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout


# Create your views here.
# def addnew(request):
#     if request.method == "POST":
#         form = EmployeeForm(request.POST, request.FILES)
#         if form.is_valid():
#             try:
#                 form.save()
#                 return redirect('/')
#             except:
#                 pass
#     else:
#         form = EmployeeForm()
#     return render(request, 'index.html', {'form': form})
#
#
# def index(request):
#     employees = Employee.objects.all()
#     return render(request, "show.html", {'employees': employees})
#
#
# def edit(request, id):
#     employee = Employee.objects.get(id=id)
#     return render(request, 'edit.html', {'employee': employee})
#
#
# def update(request, id):
#     employee = Employee.objects.get(id=id)
#     form = EmployeeForm(request.POST, instance=employee)
#     if form.is_valid():
#         form.save()
#         return redirect("/")
#     return render(request, 'edit.html', {'employee': employee})
#
#
# def destroy(request, id):
#     employee = Employee.objects.get(id=id)
#     employee.delete()
#     return redirect("/")

# page doc

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