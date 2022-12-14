from django import template
register = template.Library()

@register.filter
def answer(attempts, question):
    attempt = attempts.attempt.filter(answer_to__pk = question)
    for i in attempt:
        if i.answer_to.question_type == "short" or i.answer_to.question_type == "paragraph":
            if i.answer == i.answer_to.answer_key: return i.answer_to.answer
            else: return 0
        elif i.answer_to.question_type == "multiple choice":
            answerKey = None
            for j in i.answer_to.choices.all():
                if j.is_answer: answerKey = j.id
            if answerKey is not None and int(answerKey) == int(i.answer): return i.answer_to.answer
            else: return 0
        elif i.answer_to.question_type == "checkbox":
            answers = []
            answer_keys = []
            for j in attempts.attempt.filter(answer_to__pk = i.answer_to.pk):
                answers.append(int(j.answer))
                for k in j.answer_to.choices.all():
                    if k.is_answer and k.pk not in answer_keys: answer_keys.append(k.pk)
            if answers == answer_keys: return i.answer_to.answer
            else: return 0