#!/bin/bash

FILE=/home/container/Blockland.exe

if [ -f "$FILE"  ]; then
	WINEDEBUG=-all xvfb-run -a wine Blockland.exe ptlaaxobimwroe -dedicated -port ${SERVER_PORT} -gamemode ${GAMEMODE} -dToken ${DTOKEN}
else
	WINEDEBUG=-all xvfb-run -a wine Launcher/BlocklandLauncher.exe -profilePath .. -dedicated -port ${SERVER_PORT} -gamemode ${GAMEMODE} -dToken ${DTOKEN}
fi