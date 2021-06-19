FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /pythonProject

COPY Pipfile Pipfile.lock /pythonProject/
RUN pip install pipenv && pipenv install --system

COPY . /pythonProject/
