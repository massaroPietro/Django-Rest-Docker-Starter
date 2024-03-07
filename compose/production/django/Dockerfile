FROM python:3.9-slim-buster as builder

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc

COPY ./backend/requirements ./requirements
RUN pip wheel --no-cache-dir --no-deps --wheel-dir /app/wheels -r ./requirements/production.txt

FROM python:3.9-slim-buster

RUN mkdir -p /home/app

RUN addgroup --system app && adduser --system --group app

ENV HOME=/home/app
ENV APP_HOME=/home/app/web
RUN mkdir $APP_HOME
RUN mkdir $APP_HOME/static
RUN mkdir $APP_HOME/media
WORKDIR $APP_HOME

RUN apt-get update && apt-get install -y --no-install-recommends netcat
COPY --from=builder /app/wheels /wheels
COPY --from=builder /app/requirements ./requirements
RUN pip install --upgrade pip
RUN pip install --no-cache /wheels/*

COPY ./backend $APP_HOME

RUN chown -R app:app $APP_HOME

USER app
