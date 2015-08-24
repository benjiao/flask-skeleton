#!/bin/bash

# This script creates the initial log files
# for the app with proper write permissions


APPNAME=skeleton

touch /var/log/${APPNAME}.log
chmod 777 /var/log/${APPNAME}.log

touch /var/log/uwsgi.${APPNAME}.logi
touch /var/log/uwsgi.${APPNAME}.log

chmod 777 /var/log/uwsgi.${APPNAME}.logi
chmod 777 /var/log/uwsgi.${APPNAME}.log


# Setup nginx config
# Note: To select which port this app should listen to, edit nginx.example
cp -Rpv nginx.example /etc/nginx/sites-available/${APPNAME}
ln -s /etc/nginx/sites-available/${APPNAME} /etc/nginx/sites-enabled/${APPNAME}