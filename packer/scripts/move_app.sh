#!/bin/bash

set -e

# Ad new user
sudo adduser csye6225 --shell /usr/sbin/nologin

# Move webapp from tmp to opt
sudo mv /tmp/webapp.zip /opt/webapp.zip

# set ownership
sudo chown csye6225:csye6225 /opt/webapp.zip
sudo unzip /opt/webapp.zip -d /opt/webapp
sudo rm /opt/webapp.zip
sudo chown -R csye6225:csye6225 /opt/webapp
