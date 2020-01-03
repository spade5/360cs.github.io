#!/usr/bin/env bash
#--destination _deploy

#scp -Cr _site root@115.28.94.157:/home/360cs.github.com
if [ $1 = 'build' ] ;then
    echo jekyll building;
    bundle exec jekyll build;
    curl -H 'Content-Type:text/plain' --data-binary @_site/sitemap.txt "http://data.zz.baidu.com/urls?appid=1573826274415344&token=uQb9Q3G0AFzKOmIM&type=batch";
    #curl -H 'Content-Type:text/plain' --data-binary @_site/sitemap.txt "http://data.zz.baidu.com/urls?appid=1573826274415344&token=uQb9Q3G0AFzKOmIM&type=realtime";
fi

if [ $1 = 'serve' ] ;then
    echo 'dev mode';
    bundle exec jekyll serve --config _config_dev.yml  --drafts --future;
fi
