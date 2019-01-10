#!/bin/bash
# tronipm paulomatew@gmail.com

###############################################################
##################### RUN THIS ONLY ONCE ######################
sudo dpkg --add-architecture i386
wget -qO- https://dl.winehq.org/wine-builds/Release.key | sudo apt-key add -
sudo apt-add-repository 'deb http://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt-get install --install-recommends winehq-stable mono-complete
###############################################################
###############################################################



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