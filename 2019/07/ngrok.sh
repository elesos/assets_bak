#!/bin/bash
#-S 指定screen作业的名称
if [ -z "$STY" ]; then exec screen -dm -S ngrok_screen /bin/bash "$0"; fi 
cd /home/ngrok/bin
./ngrok -config=ngrok.cfg start ssh web
