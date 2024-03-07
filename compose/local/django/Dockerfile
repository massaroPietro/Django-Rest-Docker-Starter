FROM python:3.9-slim-buster

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

COPY ./backend/requirements ./requirements

RUN pip install -r ./requirements/local.txt

COPY ./backend .

EXPOSE 8000