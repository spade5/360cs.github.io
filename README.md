[![Build Status](https://travis-ci.com/dejavuzhou/dejavuzhou.github.io.svg?branch=master)](https://travis-ci.com/dejavuzhou/dejavuzhou.github.io)

## 博客系统和golang和Hacknews机器人

地址：[tech.mojotv.cn](https://tech.mojotv.cn)

## Feature
- 每天自动翻译hacknews新闻
- Google SEO 优化
- 使用markdown语法写博客,写代码git push来提交博客

## 安装说明

1. fork库到自己的github
2. 修改名字为：`username.github.io` 或者 `organizationName.github.io`
3. clone库到本地，参考`_posts`中的目录结构自己创建适合自己的文章目录结构
4. 修改CNAME，或者删掉这个文件，使用默认域名
5. 修改`_config.yml`配置项
6. It's done!
7. 定义自己google 统计 adsense  `_includes/header.html`  第29~48行
8. 自定义自己的评论系统  `_layouts/post.html` 第15行
9. 站长管理平添校验代码  `_includes/header.html` 第14~20行
 

## 这个项目还包含了以个go语言的机器人来每天定时翻译hacknews新闻

### 需要redis数据库
### 需要服务器或者电脑才能运行,在Github 上是不能执行的

### go语言代码同学们,你可以自己修改,或者删除

## 遇到的bug

### `{{` 于jekyll 的语法冲突
{{raw}} {{endraw}}包裹冲突的代码


## 定时任务
`crontab -e`
```bash
*/5 * * * * cd /data/tech.mojotv.cn && bundle exec jekyll build;
* */4 * * * felix spiderHN;;
```
### 查看定时任务
`/var/log/cron`这个文件就可以，可以用tail -f /var/log/cron观察(不能用cat查看)

## felix定时任务
配置文件 `root/.felix/config.toml`