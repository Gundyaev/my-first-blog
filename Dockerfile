# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /djangogirls
# �������� ��� ����� �� ������ ���������� ������� � ���������
ADD . /djangogirls
# ��������� ������� pip install ��� ���� ���������, ������������� � requirements.txt

RUN pip install Django
RUN python manage.py runserver localhost:8000