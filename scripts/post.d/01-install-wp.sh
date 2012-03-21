#!/bin/bash

# Install wordpress latest.tgz if the /var/www/ directory is empty

DIR="/var/www/"

if [ -f /var/tmp/c4-bootstrap/SiteContent.tgz ]; then
    echo "Restoring old site"
    tar xvfz /var/tmp/c4-bootstrap/SiteContent.tgz -C /var/www/
else
    echo "Installing fresh Wordpress"
    ## Install wget so we can download the latest wordpress
    apt-get install wget
    ## Grab the latest wordpress
    cd ${DIR}
    wget http://wordpress.org/latest.tar.gz
    ## Extract files
    tar xvfz latest.tar.gz -C ${DIR}
    ## touch .htaccess
    touch ${DIR}wordpress/.htaccess
fi
