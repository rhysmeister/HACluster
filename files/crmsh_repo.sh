#!/bin/bash
set -u;
set -e;
cd /etc/yum.repos.d/
OSVERSION=$(cat /etc/centos-release | sed -rn 's/.* ([[:digit:]]).*/\1/p')
wget http://download.opensuse.org/repositories/network:/ha-clustering:/Stable/CentOS_CentOS-${OSVERSION}/network:ha-clustering:Stable.repo
