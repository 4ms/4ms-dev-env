#!/usr/bin/env bash

GCCARM="gcc-arm-none-eabi-8-2018-q4-major"
GCCARM_URL="https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2"

if [ -d "$GCCARM" ]; then
	echo $GCCARM
	echo "GCC ARM directory exists, not downloading"
else
	echo "Downloading..."
	cd /home/vagrant
	wget -nv $GCCARM_URL

	echo "Decompressing..."
	tar jxf *.tar.bz2
	rm *.tar.bz2

	echo "Adding it to the PATH"
	echo "export PATH=/home/vagrant/gcc-arm-none-eabi-8-2018-q4-major/bin:\$PATH" >> /home/vagrant/.bashrc
fi

SWN_DIR="/home/vagrant/SWN"

if [ -d "$SWN_DIR" ]; then
	echo "SWN directory exists, not cloning"
else
	echo "Cloning SWN..."
	git clone https://github.com/4ms/SWN.git $SWN_DIR
fi

