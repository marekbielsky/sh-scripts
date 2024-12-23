#!/bin/bash

WATCH_FILE=$(realpath "$1")
FILE_NAME=$(basename "$WATCH_FILE" | cut -d '.' -f 1)

if [ -z "$WATCH_FILE" ]; then
    echo "Usage: $0 <absolute_path_to_file>"
    exit 1
fi

DIR_PATH=$(dirname "$WATCH_FILE")

COMMAND="gcc -o $DIR_PATH/$FILE_NAME $WATCH_FILE"

trap "exit" INT TERM
trap "kill 0" EXIT

while true; do
    fswatch -1 --latency=0.1 "$WATCH_FILE" | while read; do
        printf "Detected change in $FILE_NAME.c \nRecompiling...\n"
        $COMMAND
        printf "Done\n"
    done
done