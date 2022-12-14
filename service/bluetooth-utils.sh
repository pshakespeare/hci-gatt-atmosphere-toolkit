#!/bin/bash
# ------------------------------------------------------------------
# [Author] Preston Turner Jr
#          Description
#
#          Installs hcitools ( Human Computer Interface) gatttool (to access the “services” running on your bluetooth device. )
#          Dependencies for Atmosphere Beacon Demo.
#          http://code.google.com/p/shflags/
#
# Dependency:
#     
# ------------------------------------------------------------------
wget https://www.kernel.org/pub/linux/bluetooth/bluez-5.18.tar.xz
dpkg --get-selections | grep -v deinstall | grep bluez
tar xvf bluez-5.18.tar.xz
systemd libreadline-dev
.configure --enable-library
make -j8 && sudo make install
cp attrib/gatttool /usr/local/bin/
# --- END ----------------------------------------------------------