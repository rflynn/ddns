#!/bin/bash

set -v
set -e

sudo apt-get update

# activate virtualenv for libs
apt-get install -y python-virtualenv
virtualenv venv
source venv/bin/activate

# use pip to install python libs
apt-get install -y python-pip
pip install -r requirements.txt

# ensure 'dig' is installed
sudo apt-get install -y dnsutils
