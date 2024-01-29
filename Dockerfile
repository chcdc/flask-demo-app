FROM python:3.10-slim-bullseye

LABEL maintainer="Carlos Carvalho <carlos@chcdc.com.br>"
LABEL version="1.2"
RUN pip install flask

COPY main.py /app/
COPY entrypoint.sh /app/

ENV PORT=5000
EXPOSE ${PORT}

ENTRYPOINT ["/bin/sh","/app/entrypoint.sh"]
