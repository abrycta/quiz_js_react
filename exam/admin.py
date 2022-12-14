from django.contrib import admin

# Register your models here.
from django.contrib import admin
from django import forms

from . import models

admin.site.register(models.User)
admin.site.register(models.Exam)
admin.site.register(models.Answer)
admin.site.register(models.Choices)
admin.site.register(models.Questions)
admin.site.register(models.StudentAttempt)