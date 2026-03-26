# 部署说明

简化版单页面文档站点已准备好！

## ✅ 已完成

1. 创建了纯 HTML + CSS 的单页面应用
2. 无需构建工具，直接部署
3. 响应式设计，支持移动端
4. Git 仓库已初始化并提交

## 📁 文件位置

```
/home/workspace/code/web-page/
├── index.html      # 主页面（包含所有样式）
├── .nojekyll       # 禁用 Jekyll
└── README.md       # 说明文档
```

## 🚀 推送到 GitHub

由于 SSH 密钥配置问题，需要手动推送：

### 方案一：使用 SSH

```bash
cd /home/workspace/code/web-page
git remote add origin git@github.com:taylortaurus/eai-qa.git
git branch -M main
git push -u origin main
```

### 方案二：使用 HTTPS（如果 SSH 有问题）

```bash
cd /home/workspace/code/web-page
git remote set-url origin https://github.com/taylortaurus/eai-qa.git
git branch -M main
git push -u origin main
```

### 方案三：使用 GitHub CLI

```bash
cd /home/workspace/code/web-page
gh auth login
gh repo create taylortaurus/eai-qa --public --source=. --push
```

## 🌐 配置 GitHub Pages

推送成功后：

1. 访问：https://github.com/taylortaurus/eai-qa/settings/pages
2. 在 **Source** 下选择：
   - **Deploy from a branch**
   - **Branch**: `main`
   - **Folder**: `/ (root)`
3. 点击 **Save**

## 📱 本地预览

推送前可以预览：

```bash
cd /home/workspace/code/web-page
python3 -m http.server 8000
```

访问：http://localhost:8000

## ✨ 页面特点

- 单文件 HTML（14KB），包含所有样式
- 渐变紫色背景，现代化设计
- 响应式布局
- 6 个核心功能模块
- 4 种方案对比
- 6 步工作流程
- 快速开始代码示例

## 🎨 设计参考

参考了：https://biboyqg.github.io/WeChat-MCP/

## 📊 关于模型切换

配置文件已设置为 minimax-2.7，但当前会话仍在使用 glm-4.7（因为会话已缓存）。新启动的会话会自动使用 minimax-2.7。

如需立即切换，可以重启会话或等待新对话开始。
