#!/bin/bash
if [ -z "$STY" ]; then exec screen -dm -S ngrok_screen /bin/bash "$0"; fi 
cd /home/ngrok/bin
./ngrok -config=ngrok.cfg start ssh web
