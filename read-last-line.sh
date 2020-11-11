#!/bin/bash

FILE=$1
EXPRESSION=$2

if [ ! -f $FILE ] ; then
    printf "\n\n\tNeed file parameter information!\n\n\n"
    exit 1
fi

if [ ! $EXPRESSION ] ; then
    EXPRESSION='.'
fi
# awk '/./{line=$0} END{print line}' $FILE
# last="$(awk '/'$EXPRESSION'/{line=$0} END{print line}' $FILE)"
# OR
last=$(grep $EXPRESSION $FILE | tail -1)

echo $last
exit 0

