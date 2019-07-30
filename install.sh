#!/bin/bash
 
apt-get update
echo " [ Installing a bunch of shit ] "
apt-get install -y python-pyrex libffi-dev libfuzzy-dev python-dateutil libsqlite3-dev python-pip git apt-transport-https software-properties-common default-jre python-pip
git clone https://github.com/chrishantha/install-java.git
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list
apt-get update && apt-get -y install elasticsearch
cp /opt/aleph/settings.py.orig /opt/aleph/settings.py
