## 360武汉云安全技术分享

地址：[360cs.github.com](https://360cs.github.com)

## 技术基础
- Github Pages 自动编译前端代码和托管 
- Jekyll 模板引擎 jeyll 语法自定义文章模板样式会需要
- Jekyll Liquid 语法 https://liquid.bootcss.com/basics/types/
- markdown 教程 https://www.markdown.cn/
- Jekyll 官方文档 https://jekyllcn.com/docs/home/

## 怎么写技术博客?

- `360cs.github.io/_post` yaml 文章头部 markdown 文章放在这里, 目录就是category
- `/_config.yml` 博客配置文件
- `/_layout` 博客模板 语法
- `/assets/` 前端静态资源


## 遇到的bug

### `{{` 于jekyll 的语法冲突
{{raw}} {{endraw}}包裹冲突的代码


