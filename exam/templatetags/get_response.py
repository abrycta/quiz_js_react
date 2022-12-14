from django import template
register = template.Library()

@register.filter
def get_response(attempts, pk):
    return attempts.attempt.get(answer_to__pk = pk).answer