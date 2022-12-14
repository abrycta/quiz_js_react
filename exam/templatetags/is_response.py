from django import template
register = template.Library()

@register.filter
def get_attempts(attempts, pk):
    return attempts.attempt.filter(answer_to__pk = pk)

@register.filter
def is_response(attempts, pk):
    for i in attempts:
        if int(i.answer) == int(pk):
            return True
    return False
