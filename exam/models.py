from django.contrib.auth.models import AbstractUser
from django.db import models


# Create your models here.
class User(AbstractUser, models.Model):
    email = models.EmailField(unique=True)


class Choices(models.Model):
    choice = models.CharField(max_length=5000)
    is_answer = models.BooleanField(default=False)

    def __str__(self):
        return str(self.choice)


class Questions(models.Model):
    question = models.CharField(max_length=10000)
    question_type = models.CharField(max_length=20)
    required = models.BooleanField(default=False)
    answer_key = models.CharField(max_length=5000, blank=True)
    answer = models.IntegerField(blank=True, default=0)
    feedback = models.CharField(max_length=5000, null=True)
    choices = models.ManyToManyField(Choices, related_name="choices")

    def __str__(self):
        return str(self.question)


class Answer(models.Model):
    answer = models.CharField(max_length=5000)
    answer_to = models.ForeignKey(Questions, on_delete=models.CASCADE, related_name="answer_to")

    def __str__(self):
        return str(self.answer + " : " + str(self.answer_to))


class Exam(models.Model):
    code = models.CharField(max_length=30)
    title = models.CharField(max_length=200)
    description = models.CharField(max_length=10000, blank=True)
    creator = models.ForeignKey(User, on_delete=models.CASCADE, related_name="creator")
    collect_email = models.BooleanField(default=False)
    authenticated_responder = models.BooleanField(default=False)
    edit_after_submit = models.BooleanField(default=False)
    confirmation_message = models.CharField(max_length=10000, default="Good job answering the exam!")
    is_quiz = models.BooleanField(default=False)
    allow_view_answer = models.BooleanField(default=True)
    createdAt = models.DateTimeField(auto_now_add=True)
    updatedAt = models.DateTimeField(auto_now=True)
    questions = models.ManyToManyField(Questions, related_name="questions")

    def __str__(self):
        return str(self.title)


class StudentAttempt(models.Model):
    attempt_code = models.CharField(max_length=20)
    attempt_to = models.ForeignKey(Exam, on_delete=models.CASCADE, related_name="response_to")
    student_ip = models.CharField(max_length=30)
    student = models.ForeignKey(User, on_delete=models.CASCADE, related_name="responder", blank=True, null=True)
    student_email = models.EmailField(blank=True)
    attempt = models.ManyToManyField(Answer, related_name="attempt")

    def __str__(self):
        return str(str(self.student) + ": " + self.attempt_code)
