#!/bin/bash

# Install wordpress latest.tgz if the /var/www/ directory is empty

DIR="/var/www/"

if [ -f /var/www/wordpress/wp-config.php ]; then
    echo "Already Restored old site"
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
