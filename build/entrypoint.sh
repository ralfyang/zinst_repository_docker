#!/bin/bash


# Make a directory for pacakge repository
mkdir -p  /data/dist/rhel7

# Download the base package
curl -sL https://github.com/goody80/zinst7/raw/master/dist/rhel7/zinst_making_tool-1.3.2.zinst -o /data/dist/rhel7/zinst_making_tool-1.3.2.zinst
curl -sL https://github.com/goody80/zinst7/raw/master/dist/rhel7/server_default_setting-1.3.3.zinst -o /data/dist/rhel7/server_default_setting-1.3.3.zinst

# Runing the zinst repository server
/usr/bin/zinst run package_server

