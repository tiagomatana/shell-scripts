#!/bin/bash

FILE=$1
EXPRESSION=$2

if [ ! $FILE ] ; then
    printf "\n\n\tNeed file parameter information!\n\n\n"
    exit 1
fi

if [ ! $EXPRESSION ] ; then
    EXPRESSION='.'
fi

awk '/'$EXPRESSION'/{line=$0} END{print line}' $FILE


