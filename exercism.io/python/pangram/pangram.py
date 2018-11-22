import re, string

def is_pangram(sentence):
    letters = set(re.sub(r'[^a-zA-Z]', '', sentence).lower())
    return len(letters) == len(string.ascii_lowercase)
