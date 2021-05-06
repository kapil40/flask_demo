#!/bin/bash
python3 -m venv .
source bin/activate
pip install --upgrade pip
pip install -r requirements.txt
gunicorn -w 4 -b 127.0.0.1:4000 --threads 2  hello_world:APP
