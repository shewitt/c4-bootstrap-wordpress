#!/bin/bash

## Configure apache

a2dissite default
a2ensite bootstrap-wordpress

/etc/init.d/apache2 restart

## configure nginx

rm /etc/nginx/sites-enabled/*
ln -s /etc/nginx/sites-available/bootstrap-wordpress /etc/nginx/sites-enabled/

mkdir -p /mnt/nginx/cache
mkdir -p /mnt/nginx/proxy
chown -Rf www-data.www-data /mnt/nginx

/etc/init.d/nginx restart
