from ninja import ModelSchema
from .models import patient, doctor

class PatientIn(ModelSchema):
    class Config:
        model = patient
        model_fields = ['Name', 'DoctorID', 'DateOfBirth', 'images', 'ExamDate']


class PatientOut(ModelSchema):
    class Config:
        model = patient
        model_fields = ['Name', 'DoctorID', 'DateOfBirth', 'images', 'ExamDate']

class DoctorIn(ModelSchema):
    class Config:
        model = doctor
        model_fields = ['id', 'name', 'NameLogin', 'Password', 'Faculty', 'Image']


class DoctorOut(ModelSchema):
    class Config:
        model = doctor
        model_fields = ['id', 'name', 'NameLogin', 'Password', 'Faculty', 'Image']
