#!/usr/bin/env sh
set -e

export FLASK_APP=/app/main.py
exec flask run --host=0.0.0.0 -p ${PORT}
