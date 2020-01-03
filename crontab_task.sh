#!/bin/bash -l
# 结局centos7 ruby crontab 不执行的问题
#--destination _deploy
WEBDIR='/data/360cs.github.com';
cd $WEBDIR;
bundle exec jekyll build;
echo "360cs.github.com build";