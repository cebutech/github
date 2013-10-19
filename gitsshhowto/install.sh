#!/bin/sh
set -x
ssh-keygen -t rsa -C "youremailaddresshere.com"

ssh-add id_rsa

sudo apt-get install git
## we also want to configure our https:// methos as well in conjunctionreplace with your username and email address
git config --global user.name "username"
git config --global user.email "email@address.com"
##Password caching
git config --global credential.helper cache
#
git config --global credential.helper 'cache --timeout=3600'


set +x
