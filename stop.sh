#!/bin/sh
CURRENT_DIR=$("pwd")
DIR_NAME=${PWD##*/}
PID_FILE="$CURRENT_DIR/run/$DIR_NAME.pid"
kill -9 $(cat $PID_FILE)

