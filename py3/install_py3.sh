#!/bin/bash

apt-get update && apt-get install -y \
  curl \
  libgtk2.0-0
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

curl https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh > Anaconda.sh
bash Anaconda.sh -b
rm Anaconda.sh

