#!/usr/bin/env bash

TTY: docker exec -i --env COLUMNS=`tput cols` --env LINES=`tput lines` -u __APP_USERKEY__ -t __APP_ID__ bash
