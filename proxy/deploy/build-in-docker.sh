#!/bin/bash
set -e

if [ ! -e /from-dockerfile ]; then
  echo "This script should only ran from a Dockerfile"
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive

install -m 644 deploy/hhvm.prod.ini /etc/hhvm/site.ini

# Install Composer
# apt-get update -y
# apt-get install -y curl
# mkdir /opt/composer
# curl -sS https://getcomposer.org/installer | hhvm --php -- --install-dir=/opt/composer

# Build
#cd /var/www && hhvm /opt/composer/composer.phar install --no-dev
# touch /var/www/.production-marker

# Cleanup
# rm -rf /opt/composer
# apt-get remove -y curl
# apt-get autoremove -y
# apt-get clean
# rm -rf /var/lib/apt/lists/*
