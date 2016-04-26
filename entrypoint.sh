#!/usr/bin/env bash

FILE=$1
PASSWORD=$2

if [ $FILE -eq "" ]
then
  pdftk
  exit 0
fi

NAME=$(echo "$FILE" | sed 's/\.[^.]*$//')
EXTENSION=$(echo "$FILE" | sed 's/^.*\.//')

pdftk "/pdftk/$FILE" \
input_pw $PASSWORD \
output "/pdftk/$NAME.unlocked.$EXTENSION"
