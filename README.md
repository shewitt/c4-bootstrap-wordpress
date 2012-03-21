#c4-bootstrap-worpress

Using the c4-bootstrap system for lightweight system setup c4-bootstrap-wordpress provides a quick way to install a fresh copy of wordpress and even allows you to pull changes back into your git repo making rebuilding a server and restoring your site simple.

## Requirements

    git-core
    bash
    tar
    gzip

##HOWTO c4-bootstrap

Fire up your Ubuntu server or EC2 instance. These scripts are designed to work on Ubuntu 12.04!!!!

Now fork this git repo and clone onto your new server:

    First click the fork button on the c4-bootstrap-wordpress github page

On your new server:

    git clone https://github.com/*<USERNAME>*/c4-bootstrap-wordpress.git
    cd c4-bootstrap-wordpress
    sudo ./bootstrap.sh

You'll see lots of text fly past the screen as the system is setup. Once complete it should be fully up and running.

If you have never run repack.sh when you browse to your URL/IP you'll see the initial setup screen for wordpress. If you've been using repack.sh to track your changes in github then your site will be fully restored and running when you browse to your URL.

##HOWTO c4-repack

As you use wordpress the contents of the site may change and so too will the DB. repack.sh is designed to help you track those changes in github.

Simply run these commands:

    cd c4-bootstrap-wordpress
    sudo ./repack.sh

This will create a SiteContent.tgz and SQL dump of your site and push them back to your github repo. It can be used to back up your site or even redeploy your site on a new server using the bootstrap.sh script. I recommend you back up regularly if you frequently add content to your site.

_*NB :*_ You should set your github repo to private to avoid exposing your passwords in wp-config.php to everyone!
