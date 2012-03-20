#!/bin/bash

# remove the empty salts
sed -n '/unique/!p' -i /var/www/wordpress/wp-config.php

# get new random salts
curl https://api.wordpress.org/secret-key/1.1/salt/ >> /var/www/wordpress/wp-config.php

