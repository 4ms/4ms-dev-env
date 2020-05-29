#!/usr/bin/env bash

echo "Downloading gcc-arm-none-eabi-8-2018-q4-major"
cd /home/vagrant
wget -nv https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-x86_64-linux.tar.bz2
echo "Decompressing gcc-arm-none-eabi-8-2018-q4-major"
tar jxf *.tar.bz2
rm *.tar.bz2
echo "Adding it to the PATH"
echo "export PATH=/home/vagrant/gcc-arm-none-eabi-8-2018-q4-major/bin:\$PATH" >> /home/vagrant/.bashrc

echo "Cloning SWN..."
git clone https://github.com/4ms/SWN.git /home/vagrant/SWN

