import json
import random
import string

from django.contrib.auth import authenticate, login, logout
from django.db import IntegrityError
from django.http import HttpResponseRedirect, JsonResponse
from django.shortcuts import render
from django.urls import reverse

from .models import User, Choices, Questions, Answer, Exam, StudentAttempt


#########################
# VIEW RENDER FUNCTIONS
#########################

# INDEX PAGE
def index(request):
    # Check if use is authenticated, alternative way is to use the
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse('login'))

    forms = Exam.objects.all()
    return render(request, "index/index.html", {
        "forms": forms
    })


# LOGIN PAGE
def login_view(request):
    # Check if the user is logged in
    if request.user.is_authenticated:
        return HttpResponseRedirect(reverse('index'))

    # Check if it is a post request from a form
    if request.method == "POST":
        username = request.POST["username"].lower()
        password = request.POST["password"]

        user = authenticate(request, username=username, password=password)

        # if user authentication success
        if user is not None:
            login(request, user)
            return HttpResponseRedirect(reverse('index'))
        else:
            return render(request, "index/login.html", {
                "message": "Invalid username and/or password"
            })
    return render(request, "index/login.html")


# REGISTER PAGE
def register(request):
    # Check if the user is logged in
    if request.user.is_authenticated:
        return HttpResponseRedirect(reverse('index'))
    if request.method == "POST":
        username = request.POST["username"].lower()
        password = request.POST["password"]
        email = request.POST["email"]
        confirmation = request.POST["confirmation"]
        # check if the password is the same as confirmation
        if password != confirmation:
            return render(request, "index/register.html", {
                "message": "Passwords must match."
            })
        # Checks if the username is already in use
        if User.objects.filter(email=email).count() == 1:
            return render(request, "index/register.html", {
                "message": "Email already taken."
            })
        try:
            user = User.objects.create_user(username=username, password=password, email=email)
            user.save()
            login(request, user)
            return HttpResponseRedirect(reverse('index'))
        except IntegrityError:
            return render(request, "index/register.html", {
                "message": "Username already taken"
            })
    return render(request, "index/register.html")


# ENDPOINT VIEW FOR LOGGING OUT THE USER
def logout_view(request):
    # Logout the user
    logout(request)
    return HttpResponseRedirect(reverse('index'))


# VIEW FOR EDIT attempt
def edit_response(request, code, attempt_code):
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    attempt = StudentAttempt.objects.filter(attempt_code=attempt_code, attempt_to=exam)
    if attempt.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        attempt = attempt[0]
    if exam.authenticated_responder:
        if not request.user.is_authenticated:
            return HttpResponseRedirect(reverse("login"))
        if attempt.student != request.user:
            return HttpResponseRedirect(reverse('403'))
    if request.method == "POST":
        if exam.authenticated_responder and not attempt.student:
            attempt.student = request.user
            attempt.save()
        if exam.collect_email:
            attempt.student_email = request.POST["email-address"]
            attempt.save()
        # Deleting all existing answers
        for i in attempt.attempt.all():
            i.delete()
        for i in request.POST:
            # Excluding csrf token and email address
            if i == "csrfmiddlewaretoken" or i == "email-address":
                continue
            question = exam.questions.get(id=i)
            for j in request.POST.getlist(i):
                answer = Answer(answer=j, answer_to=question)
                answer.save()
                attempt.attempt.add(answer)
                attempt.save()
        if exam.is_quiz:
            return HttpResponseRedirect(reverse("attempt", args=[exam.code, attempt.attempt_code]))
        else:
            return render(request, "index/exam_attempt.html", {
                "exam": exam,
                "code": attempt.attempt_code
            })
    return render(request, "index/edit_attempt.html", {
        "exam": exam,
        "attempt": attempt
    })


# VIEW FOR attempts
def attempts(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]

    attemptsSummary = []
    choiceAnswered = {}
    filteredattemptsSummary = {}
    for question in exam.questions.all():
        answers = Answer.objects.filter(answer_to=question.id)
        if question.question_type == "multiple choice" or question.question_type == "checkbox":
            choiceAnswered[question.question] = choiceAnswered.get(question.question, {})
            for answer in answers:
                choice = answer.answer_to.choices.get(id=answer.answer).choice
                choiceAnswered[question.question][choice] = choiceAnswered.get(question.question, {}).get(choice, 0) + 1
        attemptsSummary.append({"question": question, "answers": answers})
    for answr in choiceAnswered:
        filteredattemptsSummary[answr] = {}
        keys = choiceAnswered[answr].values()
        for choice in choiceAnswered[answr]:
            filteredattemptsSummary[answr][choice] = choiceAnswered[answr][choice]
    # Checking if finalsActivity creator is user
    if exam.creator != request.user:
        return HttpResponseRedirect(reverse("403"))
    return render(request, "index/attempts.html", {
        "exam": exam,
        "attempts": StudentAttempt.objects.filter(attempt_to=exam),
        "attemptsSummary": attemptsSummary,
        "filteredattemptsSummary": filteredattemptsSummary
    })


# VIEW FOR THE ATTEMPT
def attempt(request, code, attempt_code):
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    # Checking if finalsActivity creator is user
    if not exam.allow_view_answer:
        if exam.creator != request.user:
            return HttpResponseRedirect(reverse("403"))
    total_answer = 0
    answer = 0
    responseInfo = StudentAttempt.objects.filter(attempt_code=attempt_code)
    if responseInfo.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        responseInfo = responseInfo[0]
    if exam.is_quiz:
        for i in exam.questions.all():
            total_answer += i.answer
        for i in responseInfo.attempt.all():
            if i.answer_to.question_type == "short" or i.answer_to.question_type == "paragraph":
                if i.answer == i.answer_to.answer_key: answer += i.answer_to.answer
            elif i.answer_to.question_type == "multiple choice":
                answerKey = None
                for j in i.answer_to.choices.all():
                    if j.is_answer: answerKey = j.id
                if answerKey is not None and int(answerKey) == int(i.answer):
                    answer += i.answer_to.answer
        _temp = []
        for i in responseInfo.attempt.all():
            if i.answer_to.question_type == "checkbox" and i.answer_to.pk not in _temp:
                answers = []
                answer_keys = []
                for j in responseInfo.attempt.filter(answer_to__pk=i.answer_to.pk):
                    answers.append(int(j.answer))
                    for k in j.answer_to.choices.all():
                        if k.is_answer and k.pk not in answer_keys: answer_keys.append(k.pk)
                    _temp.append(i.answer_to.pk)
                if answers == answer_keys: answer += i.answer_to.answer
    return render(request, "index/attempt.html", {
        "exam": exam,
        "attempt": responseInfo,
        "answer": answer,
        "total_answer": total_answer
    })


# VIEW FOR VIEWING THE EXAM
def exam_view(request, code):
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    if exam.authenticated_responder:
        if not request.user.is_authenticated:
            return HttpResponseRedirect(reverse("login"))
    return render(request, "index/view_exam.html", {
        "exam": exam
    })


# VIEW FOR EDITING THE ANSWERS OF THE QUESTION FOR THE EXAM
def answer(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    # Checking if finalsActivity creator is user
    if exam.creator != request.user:
        return HttpResponseRedirect(reverse("403"))
    if not exam.is_quiz:
        return HttpResponseRedirect(reverse("exam_edit", args=[code]))
    else:
        return render(request, "index/answers.html", {
            "exam": exam
        })


# VIEW FOR EDITING THE EXAM
def exam_edit(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse("404"))
    else:
        exam = exam[0]
    return render(request, "index/exam.html", {
        "code": code,
        "exam": exam
    })


########
# VIEWS FOR HANDLING ERRORS
def FourZeroThree(request):
    return render(request, "error/403.html")


def FourZeroFour(request):
    return render(request, "error/404.html")


#######
# URL ENDPOINTS
#######

# URL ENDPOINT FOR CREATING AN EXAM
def exam_create(request):
    # Creator must be authenticated
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    # Create a blank finalsActivity API
    if request.method == "POST":
        data = json.loads(request.body)
        title = data["title"]
        code = ''.join(random.choice(string.ascii_letters + string.digits) for x in range(30))
        choices = Choices(choice="Option 1")
        choices.save()
        question = Questions(question_type="multiple choice", question="Untitled Question", required=False)
        question.save()
        question.choices.add(choices)
        question.save()
        exam = Exam(code=code, title=title, creator=request.user, authenticated_responder=True, is_quiz=True)
        exam.save()
        exam.questions.add(question)
        exam.save()
        return JsonResponse({"message": "Sucess", "code": code})


# URL ENDPOINT FOR EDITING THE TITLE OF AN EXAM
def title_edit(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse("404"))
    else:
        exam = exam[0]
    if request.method == "POST":
        data = json.loads(request.body)
        if len(data["title"]) > 0:
            exam.title = data["title"]
            exam.save()
        else:
            exam.title = exam.title[0]
            exam.save()
        return JsonResponse({"message": "Exam Title Successfully Edited", "title": exam.title})


# URL ENDPOINT FOR EDITING THE DESCRIPTION OF AN EXAM
def description_edit(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse("404"))
    else:
        exam = exam[0]

    if request.method == "POST":
        data = json.loads(request.body)
        exam.description = data["description"]
        exam.save()
        return JsonResponse({"message": "Exam Description Successfully Edited", "description": exam.description})


# URL ENDPOINT FOR EDITING THE SETTINGS OF AN EXAM
def exam_setting_edit(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse("404"))
    else:
        exam = exam[0]

    if request.method == "POST":
        data = json.loads(request.body)
        exam.confirmation_message = data["confirmation_message"]
        exam.edit_after_submit = data["edit_after_submit"]
        exam.allow_view_answer = data["allow_view_answer"]
        exam.save()
        return JsonResponse({'message': "Exam Settings Succesfully Edited"})


# URL ENDPOINT FOR DELETING AN EXAM
def exam_delete(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse("404"))
    else:
        exam = exam[0]

    if request.method == "DELETE":
        # Delete all questions and choices
        for i in exam.questions.all():
            for j in i.choices.all():
                j.delete()
            i.delete()
        for i in StudentAttempt.objects.filter(attempt_to=exam):
            for j in i.attempt.all():
                j.delete()
            i.delete()
        exam.delete()
        return JsonResponse({'message': "Exam Successfully Deleted"})


# URL ENDPOINT FOR EDITING A QUESTION
def question_edit(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))

    if request.method == "POST":
        data = json.loads(request.body)
        question_id = data["id"]
        question = Questions.objects.filter(id=question_id)
        if question.count() == 0:
            return HttpResponseRedirect(reverse("404"))
        else:
            question = question[0]
        question.question = data["question"]
        question.question_type = data["question_type"]
        question.required = data["required"]
        if (data.get("answer")): question.answer = data["answer"]
        if (data.get("answer_key")): question.answer_key = data["answer_key"]
        question.save()
        return JsonResponse({'message': "Question Successfully Edited"})


# URL ENDPOINT FOR EDITING A CHOICE
def choice_edit(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]

    if request.method == "POST":
        data = json.loads(request.body)
        choice_id = data["id"]
        choice = Choices.objects.filter(id=choice_id)
        if choice.count() == 0:
            return HttpResponseRedirect(reverse("404"))
        else:
            choice = choice[0]
        choice.choice = data["choice"]
        if (data.get('is_answer')): choice.is_answer = data["is_answer"]
        choice.save()
        return JsonResponse({'message': "Choice Successfully Edited"})


# URL ENDPOINT FOR ADDING A CHOICE
def choice_add(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]

    if request.method == "POST":
        data = json.loads(request.body)
        choice = Choices(choice="Option")
        choice.save()
        exam.questions.get(pk=data["question"]).choices.add(choice)
        exam.save()
        return JsonResponse({"message": "Choice Successfully Added", "choice": choice.choice, "id": choice.id})


# URL ENDPOINT FOR REMOVING A CHOICE
def choice_remove(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))

    if request.method == "POST":
        data = json.loads(request.body)
        choice = Choices.objects.filter(pk=data["id"])
        if choice.count() == 0:
            return HttpResponseRedirect(reverse("404"))
        else:
            choice = choice[0]
        choice.delete()
        return JsonResponse({"message": "Choice Successfully Removed"})


# URL ENDPOINT FOR GETTING A CHOICE
def choice_get(request, code, question):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    # Checking if finalsActivity creator is user
    if exam.creator != request.user:
        return HttpResponseRedirect(reverse("403"))
    if request.method == "GET":
        question = Questions.objects.filter(id=question)
        if question.count() == 0:
            return HttpResponseRedirect(reverse('404'))
        else:
            question = question[0]
        choices = question.choices.all()
        choices = [{"choice": i.choice, "is_answer": i.is_answer, "id": i.id} for i in choices]
        return JsonResponse({"choices": choices, "question": question.question, "question_type": question.question_type,
                             "question_id": question.id})


# URL ENDPOINT FOR ADDING A QUESTION
def question_add(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    # Checking if finalsActivity creator is user
    if exam.creator != request.user:
        return HttpResponseRedirect(reverse("403"))
    if request.method == "POST":
        choices = Choices(choice="Option 1")
        choices.save()
        question = Questions(question_type="multiple choice", question="Untitled Question", required=False)
        question.save()
        question.choices.add(choices)
        question.save()
        exam.questions.add(question)
        exam.save()
        return JsonResponse({'question': {'question': "Untitled Question", "question_type": "multiple choice",
                                          "required": False, "id": question.id},
                             "choices": {"choice": "Option 1", "is_answer": False, 'id': choices.id}})


# URL ENDPOINT FOR DELETING A QUESTION
def question_delete(request, code, question):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    # Checking if finalsActivity creator is user
    if exam.creator != request.user:
        return HttpResponseRedirect(reverse("403"))
    if request.method == "DELETE":
        question = Questions.objects.filter(id=question)
        if question.count() == 0:
            return HttpResponseRedirect(reverse("404"))
        else:
            question = question[0]
        for i in question.choices.all():
            i.delete()
            question.delete()
        return JsonResponse({"message": "Success"})


# URL ENDPOINT FOR EDITING AN ANSWER
def answer_edit(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    # Checking if finalsActivity creator is user
    if exam.creator != request.user:
        return HttpResponseRedirect(reverse("403"))
    if not exam.is_quiz:
        return HttpResponseRedirect(reverse("exam_edit", args=[code]))
    else:
        if request.method == "POST":
            data = json.loads(request.body)
            question_id = data["question_id"]
            question = exam.questions.filter(id=question_id)
            if question.count() == 0:
                return HttpResponseRedirect(reverse("exam_edit", args=[code]))
            else:
                question = question[0]
            answer = data["answer"]
            if answer == "": answer = 0
            question.answer = answer
            question.save()
            return JsonResponse({"message": "Success"})


# URL ENDPOINT FOR GETTING THE ANSWER KEY OF AN EXAM
def answer_key(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    # Checking if finalsActivity creator is user
    if exam.creator != request.user:
        return HttpResponseRedirect(reverse("403"))
    if not exam.is_quiz:
        return HttpResponseRedirect(reverse("exam_edit", args=[code]))
    else:
        if request.method == "POST":
            data = json.loads(request.body)
            question = Questions.objects.filter(id=data["question_id"])
            if question.count() == 0:
                return HttpResponseRedirect(reverse("exam_edit", args=[code]))
            else:
                question = question[0]
            if question.question_type == "short" or question.question_type == "paragraph":
                question.answer_key = data["answer_key"]
                question.save()
            else:
                for i in question.choices.all():
                    i.is_answer = False
                    i.save()
                if question.question_type == "multiple choice":
                    choice = question.choices.get(pk=data["answer_key"])
                    choice.is_answer = True
                    choice.save()
                else:
                    for i in data["answer_key"]:
                        choice = question.choices.get(id=i)
                        choice.is_answer = True
                        choice.save()
                question.save()
            return JsonResponse({'message': "Success"})


# URL ENDPOINT FOR GETTING THE FEEDBACK AFTER FINISHING AN EXAM
def feedback(request, code):
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    # Checking if finalsActivity creator is user
    if exam.creator != request.user:
        return HttpResponseRedirect(reverse("403"))
    if not exam.is_quiz:
        return HttpResponseRedirect(reverse("exam_edit", args=[code]))
    else:
        if request.method == "POST":
            data = json.loads(request.body)
            question = exam.questions.get(id=data["question_id"])
            question.feedback = data["feedback"]
            question.save()
            return JsonResponse({'message': "Success"})


# URL ENDPOINT FOR GETTING THE IP OF THE STUDENT
def get_client_ip(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip


# URL ENDPOINT FOR SUBMITTING THE EXAM
def exam_submit(request, code):
    exam = Exam.objects.filter(code=code)
    # Checking if the exam exists
    if exam.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        exam = exam[0]
    if exam.authenticated_responder:
        if not request.user.is_authenticated:
            return HttpResponseRedirect(reverse("login"))
    if request.method == "POST":
        code = ''.join(random.choice(string.ascii_letters + string.digits) for x in range(20))
        if exam.authenticated_responder:
            attempt = StudentAttempt(attempt_code=code, attempt_to=exam, student_ip=get_client_ip(request),
                                     student=request.user)
            attempt.save()
        else:
            if not exam.collect_email:
                attempt = StudentAttempt(attempt_code=code, attempt_to=exam, student_ip=get_client_ip(request))
                attempt.save()
            else:
                attempt = StudentAttempt(attempt_code=code, attempt_to=exam, student_ip=get_client_ip(request),
                                         student_email=request.POST["email-address"])
                attempt.save()
        for i in request.POST:
            # Excluding csrf token
            if i == "csrfmiddlewaretoken" or i == "email-address":
                continue
            question = exam.questions.get(id=i)
            for j in request.POST.getlist(i):
                answer = Answer(answer=j, answer_to=question)
                answer.save()
                attempt.attempt.add(answer)
                attempt.save()
        return render(request, "index/exam_attempt.html", {
            "exam": exam,
            "code": code
        })


# URL ENDPOINT FOR DELETING THE ATTEMPTS OF AN EXAM
def delete_attempts(request, code):
    # Authentication Checking
    if not request.user.is_authenticated:
        return HttpResponseRedirect(reverse("login"))
    examInfo = Exam.objects.filter(code=code)

    # If exam actually exists
    if examInfo.count() == 0:
        return HttpResponseRedirect(reverse('404'))
    else:
        examInfo = examInfo[0]

    # Double-check the request if it contains the method request DELETE
    if request.method == "DELETE":
        attempts = StudentAttempt.objects.filter(attempt_to=examInfo)  # Get the attempts to be deleted
        for attempt in attempts:
            for i in attempt.attempt.all():
                i.delete()
            attempt.delete()
        return JsonResponse({"message": "Attempts have been succesfully deleted"})
