#!/bin/bash

apt-get update
apt-get install -y haskell-platform rubygems rabbitmq-server supervisor
gem install sinatra

cp /tmp/supervisord.conf /etc/supervisor/supervisord.conf
chown vagrant:vagrant -R /var/log/supervisor

/etc/init.d/supervisor restart
