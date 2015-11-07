#!/usr/bin/env bash

# Clear The Old Apache Sites
rm -f /etc/apache2/sites-enabled/*
rm -f /etc/apache2/sites-available/*

#add default site
block="
<VirtualHost *:80>
        # The ServerName directive sets the request scheme, hostname and port that
        # the server uses to identify itself. This is used when creating
        # redirection URLs. In the context of virtual hosts, the ServerName
        # specifies what hostname must appear in the request's Host: header to
        # match this virtual host. For the default virtual host (this file) this
        # value is not decisive as it is used as a last resort host regardless.
        # However, you must set it for any further virtual host explicitly.
        ServerName localhost

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

</VirtualHost>
"

echo "$block" > "/etc/apache2/sites-available/default.conf"
ln -fs "/etc/apache2/sites-available/default.conf" "/etc/apache2/sites-enabled/default.conf"
