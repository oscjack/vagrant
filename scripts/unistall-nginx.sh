#!/usr/bin/env bash

 sudo service nginx stop

 #Uninstall Apache2 and its dependent packages
 sudo apt-get remove -y nginx
 sudo apt-get remove --purge -y nginx

 #clean now
 sudo apt-get remove -y nginx-*
 sudo apt-get purge -y nginx-*
 sudo apt-get clean
 sudo apt-get purge
 sudo apt-get autoremove
