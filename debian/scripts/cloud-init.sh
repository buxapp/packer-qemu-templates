#!/usr/bin/env bash

apt-get -y install cloud-init

echo "datasource_list: [ NoCloud ]" >> /etc/cloud/cloud.cfg
