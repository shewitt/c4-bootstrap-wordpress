#!/bin/bash

## Configure apache

a2dissite default
a2ensite bootstrap-wordpress

/etc/init.d/apache2 restart

## configure nginx

ln -s /etc/nginx/sites-available/bootstrap-wordpress /etc/nginx/sites-enabled/

/etc/init.d/nginx restart
