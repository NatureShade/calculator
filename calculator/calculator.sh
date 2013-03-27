#!/bin/sh

CUR_DIR=$(dirname $(readlink -f "$0"))

if [ -x /usr/bin/xulrunner ]; then
    /usr/bin/xulrunner "$CUR_DIR/application.ini" $@
elif [ -x /usr/bin/firefox ]; then
    /usr/bin/firefox -app "$CUR_DIR/application.ini" $@
else
    echo "Error: unable to find XULRunner or Firefox!"
fi
