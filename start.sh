#!/bin/bash

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn hello.wsgi:application \
    --bind 0.0.0.0:$PORT \
    --workers 3