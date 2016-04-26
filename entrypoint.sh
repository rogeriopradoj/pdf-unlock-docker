#!/usr/bin/env bash

FILE=$1
PASSWORD=$2

if [ -z "$FILE" ]
  then
    pdftk
    exit 0
fi

if [ -z "$PASSWORD" ]
  then
    echo "Error: PASSWORD is needed."
    exit 1
fi

NAME=$(echo "$FILE" | sed 's/\.[^.]*$//')
EXTENSION=$(echo "$FILE" | sed 's/^.*\.//')

pdftk "/unlock/$FILE" \
input_pw $PASSWORD \
output "/unlock/$NAME.unlocked.$EXTENSION"
