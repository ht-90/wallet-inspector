#!/bin/sh
python wallet/manage.py makemigrations api
python wallet/manage.py migrate
python wallet/manage.py runserver 0.0.0.0:8000
