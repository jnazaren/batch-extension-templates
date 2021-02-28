#!/bin/bash
echo '# Running apt-get update ...'
apt-get update
echo '# Installing imagemagick ...'
apt-get install -y imagemagick
echo '# Installing build tools ...'
apt-get install -y build-essential libglu1-mesa
echo '# Installing blender ...'
snap install blender --channel=2.79/stable --classic
echo '# Installing NVidia Drivers ...'
wget https://us.download.nvidia.com/tesla/460.32.03/NVIDIA-Linux-x86_64-460.32.03.run
chmod +x NVIDIA-Linux-x86_64-460.32.03.run
sudo ./NVIDIA-Linux-x86_64-460.32.03.run -silent
echo '# Installing additional tools ...'
apt-get install -y terminator
apt-get install -y dbus-x11
echo "## DONE ##"
exit $?

