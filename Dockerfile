FROM python:3.8.16-slim-bullseye
FROM python:3.9-alpine

LABEL maintainer="Carlos Carvalho"

RUN pip install flask

COPY app.py /src/

EXPOSE 5000

ENV FLASK_APP=/src/app.py

ENTRYPOINT ["flask","run","--host=0.0.0.0"]
