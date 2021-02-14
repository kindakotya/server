#!/bin/bash
service nginx stop
if grep 'autoindex on' /etc/nginx/sites-available/default
then
    sed -i 's/autoindex on;/autoindex off;/g' /etc/nginx/sites-available/default
    echo autoindex is now off
else
    sed -i 's/autoindex off;/autoindex on;/g' /etc/nginx/sites-available/default
    echo autoindex is now on
fi
sevice nginx start