# EAI QA - Stage Spec QA 文档站点

这是 Stage Spec QA 项目的文档展示站点，纯 HTML + CSS 构建，单页面应用。

## 站点地址

待配置 GitHub Pages 后访问

## 本地预览

```bash
cd /home/workspace/code/web-page
python3 -m http.server 8000
```

然后访问：http://localhost:8000

## 部署到 GitHub Pages

```bash
cd /home/workspace/code/web-page
git init
git add .
git commit -m "Initial commit: Stage Spec QA documentation site"
git remote add origin git@github.com:taylortaurus/eai-qa.git
git branch -M main
git push -u origin main
```

## GitHub Pages 配置

1. 访问：https://github.com/taylortaurus/eai-qa/settings/pages
2. 在 **Source** 下选择：
   - **Deploy from a branch**
   - **Branch**: `main`
   - **Folder**: `/ (root)`
3. 点击 **Save`

## 页面内容

单页面应用包含以下部分：

1. **简介** - 介绍 Stage Spec QA 的核心概念
2. **功能** - 六大核心能力展示
3. **对比** - 与其他方案的详细对比
4. **工作流程** - 六步测试执行流程
5. **快速开始** - 基本使用示例

## 技术栈

- **HTML5** - 语义化结构
- **CSS3** - 渐变、响应式设计
- **无依赖** - 纯静态文件，无需构建

## 特点

- 单文件 HTML，无需构建工具
- 响应式设计，支持移动端
- 现代化渐变设计
- 加载速度快
- 易于维护和部署
