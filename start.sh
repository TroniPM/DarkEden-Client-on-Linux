#!/bin/bash
# tronipm paulomatew@gmail.com

if [ ! -f .wine ]; then
	echo '###############################################################'
	echo '################### RUNNING THIS ONLY ONCE ####################'
	echo '###############################################################'
	sudo dpkg --add-architecture i386
	sudo apt-get update && sudo apt-get install --install-recommends -y wine32 wine64
	touch .wine
	echo '###############################################################'
	echo '###############################################################'
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

DK_FILE=`echo "$DIR/darkeden.exe" | sed 's/ /\\ /g'`

echo ''
echo ''
echo "Starting DARKEDEN. Choose the mode [ENTER to default]:"
echo "1) Fullscreen mode [default]"
echo "2) Windows mode"

echo ''
read -p "So...? " REPLY;

if [ $REPLY != "2" ] && [ $REPLY != "1" ] && [ ! -z "$REPLY" ]; then
	echo ''
	echo 'Unknow command. Try again...'
fi

if [ $REPLY == "1" ] || [ -z "$REPLY" ]; then
	echo ''
	echo 'Starting Darkeden in FULLSCREEN mode.'

	echo ''
	echo ''
	 #export WINEPREFIX='/media/fun/darkeden'
	 #wine --prefix '/media/fun/darkeden'
	 wine explorer /desktop=1024x768 "$DK_FILE" 0000000002 -opengl
fi

if [ $REPLY == "2" ]; then
	echo ''
	echo 'Starting Darkeden in WINDOWS MODE mode.'

	echo ''
	echo ''
	 #export WINEPREFIX='/media/fun/darkeden'
	 #wine --prefix '/media/fun/darkeden'
	 wine explorer /desktop=1024x768 "$DK_FILE" 0000000001 -opengl
fi