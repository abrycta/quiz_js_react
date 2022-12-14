from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name="index"),
    path('login', views.login_view, name="login"),
    path('register', views.register, name="register"),
    path('logout', views.logout_view, name="logout"),
    path('exam/create', views.exam_create, name="exam_create"),

    path('exam/<str:code>/edit', views.exam_edit, name="exam_edit"),
    path('exam/<str:code>/title_edit', views.title_edit, name="title_edit"),
    path('exam/<str:code>/description_edit', views.description_edit, name="description_edit"),

    path('exam/<str:code>/exam_setting_edit', views.exam_setting_edit, name="exam_setting_edit"),
    path('exam/<str:code>/delete', views.exam_delete, name="exam_delete"),
    path('exam/<str:code>/question_edit', views.question_edit, name="question_edit"),
    path('exam/<str:code>/choice_edit', views.choice_edit, name="choice_edit"),
    path('exam/<str:code>/choice_add', views.choice_add, name="choice_add"),
    path('exam/<str:code>/choice_remove', views.choice_remove, name="choice_remove"),
    path('exam/<str:code>/choice_get/<str:question>', views.choice_get, name="choice_get"),
    path('exam/<str:code>/question_add', views.question_add, name="question_add"),
    path('exam/<str:code>/question_delete/<str:question>', views.question_delete, name="question_delete"),
    path('exam/<str:code>/answer', views.answer, name="answer"),
    path('exam/<str:code>/answer_edit', views.answer_edit, name="answer_edit"),
    path('exam/<str:code>/answer_key', views.answer_key, name="answer_key"),

    path('exam/<str:code>/feedback', views.feedback, name="feedback"),
    path('exam/<str:code>/viewform', views.exam_view, name="exam_view"),
    path('exam/<str:code>/submit', views.exam_submit, name="exam_submit"),

    path('exam/<str:code>/attempts', views.attempts, name='attempts'),
    path('exam/<str:code>/attempt/<str:attempt_code>', views.attempt, name="attempt"),
    path('exam/<str:code>/attempt/<str:attempt_code>/edit', views.edit_response, name="edit_response"),
    path('exam/<str:code>/attempts/delete', views.delete_attempts, name="delete_attempts"),
    path('403', views.FourZeroThree, name="403"),
    path('404', views.FourZeroFour, name="404")
]