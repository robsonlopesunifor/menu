#!/usr/bin/env bash

apt-get update
apt-get -y install build-essential

pip install --upgrade pip
pip install poetry==1.4.0
poetry config virtualenvs.create false && poetry install --with dev

python manage.py compilemessages

pytest tests
