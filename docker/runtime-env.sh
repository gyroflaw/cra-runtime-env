#!/bin/sh
# Build config.js file
envsubst < /var/www/html/config.js.template > /var/www/html/config.js
