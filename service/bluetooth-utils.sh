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
# start services
service dbus start
service bluetooth start
# --- END ----------------------------------------------------------