#!/bin/sh
CURRENT_DIR=$("pwd")
"$CURRENT_DIR/.venv/bin/uwsgi" --ini "$CURRENT_DIR/project/uwsgi.ini" --master --pidfile "$CURRENT_DIR/run/smp.pid"
