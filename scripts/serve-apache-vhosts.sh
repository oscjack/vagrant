#!/usr/bin/env bash

block="
<VirtualHost *:80>
    ServerName $1
    ServerAlias www.$1 

    ServerAdmin webmaster@localhost
    DocumentRoot $2

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
"

echo "$block" > "/etc/apache2/sites-available/$1.conf"
ln -fs "/etc/apache2/sites-available/$1.conf" "/etc/apache2/sites-enabled/$1.conf"
sudo service apache restart
sudo service php5-fpm restart
