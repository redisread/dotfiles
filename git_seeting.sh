#!/bin/bash

function userInfoSet(){
  git config --global user.name "redisread"
  git config --global user.email "wujiahong199810222@outlook.com"
}

function main(){
  userInfoSet
}
main
