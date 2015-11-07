#!/usr/bin/env bash

 sudo service apache2 stop

 #Uninstall Apache2 and its dependent packages
 sudo apt-get remove --purge apache2
 sudo apt-get remove --purge apache2-utils
 sudo apt-get remove --purge apache2.2-bin
 sudo apt-get remove --purge apache2-common

 #clean now
 sudo apt-get clean
 sudo apt-get purge
 sudo apt-get autoremove
