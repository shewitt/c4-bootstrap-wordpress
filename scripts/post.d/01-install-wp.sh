#!/bin/bash

# Install wordpress latest.tgz if the /var/www/ directory is empty

DIR="/var/www/"

if [ "$(ls -A ${DIR})" ]; then
    echo "Site files already present"
else
    ## Install wget so we can download the latest wordpress
    apt-get update
    apt-get install wget
    ## Grab the latest wordpress
    cd /var/www/
    wget http://wordpress.org/latest.tar.gz
    ## Extract files
    tar xvfz latest.tar.gz -C ${DIR}
fi
