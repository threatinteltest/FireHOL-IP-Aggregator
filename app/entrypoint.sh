#!/bin/sh

apk add --no-cache git postgresql-dev gcc python3-dev musl-dev

cd /app
pip3 install -r requirements.txt

echo "Started sync in background"
python3 firehol_sync.py
