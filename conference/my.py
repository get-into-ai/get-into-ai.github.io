
import re

with open("future_ai_programme.html", "r", encoding="utf-8") as f:
    html = f.read()

pattern = re.compile(
    r'<h4 class="talk-title">(.*?)</h4>\s*'
    r'<div class="talk-abstract">\s*(.*?)\s*</div>',
    re.DOTALL
)

matches = pattern.findall(html)

for title, abstract in matches:
    clean_title = re.sub('<.*?>', '', title).strip()
    clean_abstract = re.sub('<.*?>', '', abstract).strip()
    print("TITLE:", clean_title)
    print("ABSTRACT:", clean_abstract)
    print()

