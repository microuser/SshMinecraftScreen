#!/bin/bash
tar cvf ~/mcBackup`date +%s`.tar /usr/local/bin/minecraft/*
echo .
echo .
echo .
echo Spawning background daemond SCREEN named minecraft. To resume type screen -r minecraft. To detach from screen, pressing the magic sequence: ctrl-A, D.
echo .
echo .

cd /usr/local/bin/minecraft
lineCount=`screen -r minecraft | grep "There is no screen to be resumed matching minecraft." | wc -l`

if [ $lineCount -eq 1 ]
  then
    echo linecount: $lineCount. Starting in a deteched screen named minecraft. Use screen -r minecraft to view.
    screen -dmS minecraft java -Xms1024M -Xmx1024M -jar /usr/local/bin/minecraft/minecraft_server.jar nogui
  else
    echo lineCount: $lineCount. Minecraft is already running. Use screen -r minecraft to view. Running now.
    screen -r minecraft
fi

