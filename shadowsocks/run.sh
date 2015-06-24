#!/bin/bash

eval $(ps -ef | grep "[0-9] python server\\.py a" | awk '{print "kill "$2}')
nohup python server.py a >> ssserver.log 2>&1 &

tail -f ssserver.log
