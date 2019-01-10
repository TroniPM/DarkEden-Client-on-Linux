#!/bin/bash
# tronipm paulomatew@gmail.com

sudo dpkg --add-architecture i386 && sudo apt install wine64 wine32

echo ''
echo ''
echo "Starting DARKEDEN. Choose the mode [ENTER to default]:"
echo "1) Fullscreen mode [default]"
echo "2) Windows mode"

echo ''
read -p "So...? " REPLY;
echo "'${REPLY}'";
if [ $REPLY != "2" ] && [ $REPLY != "1" ] && [ ! -z $REPLY ]; then
	echo ''
	echo 'Unknow command. Try again...'
fi

if [ $REPLY == "1" ] || [ -z $REPLY ]; then
	echo ''
	echo 'Starting Darkeden in FULLSCREEN mode.'

	echo ''
	echo ''
	wine darkeden.exe 0000000002;
fi

if [ $REPLY == "2" ]; then
	echo ''
	echo 'Starting Darkeden in WINDOWS MODE mode.'

	echo ''
	echo ''
	wine darkeden.exe 0000000001;
fi
