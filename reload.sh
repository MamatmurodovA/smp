#!/bin/sh
CURRENT_DIR=$("pwd")
DIR_NAME=${PWD##*/}
"$CURRENT_DIR/.venv/bin/uwsgi" --reload "$CURRENT_DIR/run/$DIR_NAME.pid"
