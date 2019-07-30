#!/bin/bash

echo ""
echo " [ Updating ] "
echo ""
apt-get update
echo ""
echo " [ Installing a bunch of shit ] "
echo ""
apt-get -q install -y python-pyrex libffi-dev libfuzzy-dev python-dateutil libsqlite3-dev python-pip git apt-transport-https software-properties-common default-jdk python-pip
echo ""
echo " [ Installing ElasticSearch ] "
echo ""
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list
apt-get update && apt-get -q -y install elasticsearch
cp /opt/aleph/aleph/settings.py.orig /opt/aleph/aleph/settings.py
echo ""
echo " [ Installing Pip Packages ] "
echo ""
pip install -r requirements.txt
