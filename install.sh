#!/bin/bash

apt-get update
apt-get install -y python-pyrex libffi-dev libfuzzy-dev python-dateutil libsqlite3-dev python-pip git
add-apt-repository -y ppa:webupd8team/java
apt-get update && apt-get -y install oracle-java8-installer
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-5.x.list
apt-get update && apt-get -y install elasticsearch
cd /opt
git clone https://github.com/theshiv1337/aleph.git
pip install virtualenv
cd aleph
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
cp ./aleph/settings.py.orig ./aleph/settings.py
mkdir /var/www/html/samples
mkdir /var/www/html/unprocessed_samples
