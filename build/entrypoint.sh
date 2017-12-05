#!/bin/bash

# Make a directory for pacakge repository
mkdir -p  /data/dist/rhel7
mkdir -p  /data/dist/ubuntu
mkdir -p  /data/dist/rhel

# Download the base package for RHEL7
cd /data/dist/rhel7
wget -qbnc https://github.com/goody80/zinst7/raw/master/dist/rhel7/zinst_making_tool-1.3.2.zinst 
wget -qbnc https://github.com/goody80/zinst7/raw/master/dist/rhel7/server_default_setting-1.3.3.zinst 
wget -qbnc https://github.com/goody80/Zinst_packages/raw/master/rhel7/sshpass-1.0.5.zinst 

# Download the base package for Ubuntu
cd /data/dist/ubuntu
wget -qbnc https://github.com/goody80/Zinst_packages/raw/master/ubuntu/zinst_making_tool-0.1.3.zinst 
wget -qbnc https://github.com/goody80/Zinst_packages/raw/master/ubuntu/server_default_setting-1.3.6.zinst 
wget -qbnc https://github.com/goody80/Zinst_packages/raw/master/ubuntu/sshpass-0.0.1.zinst 


# Download the base package for RHEL6 under version
cd /data/dist/rhel
wget -qbnc https://github.com/goody80/Zinst_packages/raw/master/rhel/zinst_making_tool-1.2.6.zinst 
wget -qbnc https://github.com/goody80/Zinst_packages/raw/master/rhel/server_default_setting-1.3.0.zinst 
wget -qbnc https://github.com/goody80/Zinst_packages/raw/master/rhel/sshpass-1.0.5.zinst 

# Runing the zinst repository server
/usr/bin/zinst run package_server

