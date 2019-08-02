#!/bin/bash

echo ""
echo " [ Updating ] "
echo ""
apt-get update
echo ""
echo " [ Installing a bunch of shit ] "
echo ""
apt-get -q install -y python-pyrex libffi-dev libfuzzy-dev python-dateutil libsqlite3-dev python-pip git apt-transport-https software-properties-common python-pip
echo ""
echo " [ Configuring Aleph ] "
echo ""
cp /opt/aleph/aleph/settings.py.orig /opt/aleph/aleph/settings.py
echo ""
echo " [ Installing Pip Packages ] "
echo ""
pip install -r /opt/aleph/requirements.txt
cd /opt/aleph
