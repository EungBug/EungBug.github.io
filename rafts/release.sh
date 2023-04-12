#!/bin/bash

# ASSERT: args
if [ $# -ne 2 ]; then
    echo "usage: release.sh CATEGORY TITLE"
    echo "       ex) release.sh Study working-with-draft"
    exit $E_BADARGS
fi

function addExt() {
    FILE=$1
    if [[ ${FILE: -3} == ".md" ]]; then
        echo $1
    elif [[ ${FILE: -9} == ".markdown" ]]; then
        echo $1
    else
        echo $1.md
    fi
}

# constants
SRC_PATH=_drafts
DST_PATH=_posts
CATEGORY=$1
TITLE=$2
TITLE=`addExt ${TITLE}`

if [ ! -f ${SRC_PATH}/${TITLE} ]; then
    echo "File ${SRC_PATH}/${TITLE} is not exist"
fi

TODAY=`date +"%Y-%m-%d"`

mv ${SRC_PATH}/${TITLE} ${DST_PATH}/${CATEGORY}/${TODAY}-${TITLE}

echo "Draft ${TITLE} is moved to ${DST_PATH}/${TODAY}-${TITLE}"