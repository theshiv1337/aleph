#!/bin/bash

echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/java-8-debian.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/java-8-debian.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
apt-get update
apt-get install -y python-pyrex libffi-dev libfuzzy-dev python-dateutil libsqlite3-dev python-pip git apt-transport-https oracle-java8-installer
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
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
