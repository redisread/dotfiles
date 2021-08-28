#!/bin/bash

function centosMirros(){
  yum install wget -y
  centos_version=`cat /etc/redhat-release|sed -r 's/.* ([0-9]+)\..*/\1/'`
  #mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
  if [ $centos_version -eq 6 ]; then
    wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo
  elif [ $centos_version -eq 7 ]; then
    wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
  fi
}

function ubuntuMirros(){
  echo "ubuntuMirros"

}
function main(){
  if [ ! -f "/etc/redhat-release" ]; then
    ubuntuMirros
  else
    centosMirros
  fi
}

main
