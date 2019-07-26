#!/bin/bash
 
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/java-8-debian.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/java-8-debian.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
apt-get update
apt-get install -y python-pyrex libffi-dev libfuzhttps://github.com/chrishantha/install-javazy-dev python-dateutil libsqlite3-dev python-pip git software-properties-common
git clone https://github.com/chrishantha/install-java.git
add-apt-repository -y ppa:webupd8team/java
apt-get update && apt-get -y install oracle-java8-installer
apt-get install -y python-pyrex libffi-dev libfuzzy-dev python-dateutil libsqlite3-dev python-pip git apt-transport-https oracle-java8-installer
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-5.x.list
apt-get update && apt-get -y install elasticsearch
cd /opt
