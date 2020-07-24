# python:alpine is 3.{latest}
FROM python:alpine 

LABEL maintainer="Carlos Carvalho"

RUN pip install flask

COPY app.py /src/

EXPOSE 5000

ENV FLASK_APP=/src/app.py

ENTRYPOINT ["flask","run","--host=0.0.0.0"]

