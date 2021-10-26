#!/bin/bash
#very simple and ugly way to have a constant update of a git repo


        cd debian-conf
while [ true ]
do
        echo "git fetch"
        git fetch
        sleep 10
        echo "git pull"
        git pull
        sleep 10
done
