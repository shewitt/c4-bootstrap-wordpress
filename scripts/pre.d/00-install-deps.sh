#!/bin/bash

# Sample file that installs your dependancies on launch

apt-get update
apt-get install -y apache2 php5 php5-mysql php-apc php5-memcached

## Stop apache from running so we can configure it

/etc/init.d/apache2 stop

## Install nginx for our caching layer

apt-get install -y nginx

## Stop Nginx ready for configuration

/etc/init.d/nginx stop

## Install MySQL server

apt-get install -y mysql-server

