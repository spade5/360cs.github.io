#!/bin/bash -l
# 结局centos7 ruby crontab 不执行的问题
#--destination _deploy
WEBDIR='/data/tech.mojotv.cn';
cd $WEBDIR;
bundle exec jekyll build;
echo "tech.mojotv.cn build";