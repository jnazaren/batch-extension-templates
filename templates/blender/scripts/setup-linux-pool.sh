#!/bin/bash
echo '# Running apt-get update ...'
apt-get update
echo '# Installing imagemagick ...'
apt-get install -y imagemagick
echo '# Installing blender ...'
mkdir blender-download && cd blender-download
wget https://download.blender.org/release/Blender2.79/blender-2.79b-linux-glibc219-x86_64.tar.bz2
tar -xvf blender-2.79b-linux-glibc219-x86_64.tar.bz2
export PATH=$PATH:`pwd`/blender-2.79b-linux-glibc219-x86_64
echo $PATH
echo '# Installing python-pip ...'
apt-get install -y python-pip
echo "## DONE ##"
exit $?

