# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /djangogirls
#  опирует все файлы из нашего локального проекта в контейнер
ADD . /djangogirls
# «апускает команду pip install дл€ всех библиотек, перечисленных в requirements.txt

RUN pip install Django
RUN python manage.py runserver localhost:8000