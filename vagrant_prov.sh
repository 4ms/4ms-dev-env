#!/usr/bin/env bash

echo "Downloading gcc-arm-none-eabi-9-2019-q4-major"
cd /home/vagrant
wget -nv https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2
echo "Decompressing gcc-arm-none-eabi-9-2019-q4-major"
tar jxf *.tar.bz2
echo "Adding it to the PATH"
echo "export PATH=/home/vagrant/gcc-arm-none-eabi-9-2019-q4-major/bin:\$PATH" >> /home/vagrant/.bashrc

