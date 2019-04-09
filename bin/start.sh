#!/bin/bash

SERVICE_NAME=G2BAngular
PATH_SERVER=/home/adeda/git/go2balkan/dist/server.js
PID_PATH_NAME=/tmp/MyService-pid
case $1 in
    start)
        echo "Starting $SERVICE_NAME"
        if [ ! -f $PID_PATH_NAME ]; then
            node $PATH_SERVER
            echo "$SERVICE_NAME started .."
         else
            echo "$SERVICE_NAME is Already runnung .."
          fi
          ;;
esac

