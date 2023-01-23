FROM python:3.8.16-slim-bullseye
FROM python:3.9-alpine

LABEL maintainer="Carlos Carvalho <carlos@chcdc.com.br>"
LABEL version="1.1"
RUN pip install flask

COPY main.py /app/
COPY entrypoint.sh /app/

ENV PORT=5000
EXPOSE ${PORT}

ENTRYPOINT ["/bin/sh","/app/entrypoint.sh"]
