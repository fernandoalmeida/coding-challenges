import re

ANSWER = {
    'fine': 'Fine. Be that way!',
    'whoa': 'Whoa, chill out!',
    'calm': "Calm down, I know what I'm doing!",
    'sure': 'Sure.',
    'whatever': 'Whatever.'
}

def hey(phrase):
    if _blank(phrase):
        return ANSWER['fine']
    if _yell(phrase) and _question(phrase):
        return ANSWER['calm']
    if _yell(phrase):
        return ANSWER['whoa']
    if _question(phrase):
        return ANSWER['sure']
    return ANSWER['whatever']

def _blank(phrase):
    return re.sub(r'\s+', '', phrase) == ''

def _yell(phrase):
    return (phrase == phrase.upper() and phrase != phrase.lower())

def _question(phrase):
    return phrase.strip().endswith('?')
