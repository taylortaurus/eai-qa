#!/bin/bash

echo "=========================================="
echo "推送 Stage Spec QA 文档站点到 GitHub"
echo "=========================================="
echo ""

cd /home/workspace/code/web-page

echo "当前目录: $(pwd)"
echo "Git 状态:"
git status
echo ""

echo "准备推送到 GitHub..."
echo ""

# 方法 1: 使用 HTTPS（需要输入 GitHub Token）
echo "方法 1: 使用 HTTPS + Token"
echo "请访问 https://github.com/settings/tokens 生成 Personal Access Token"
echo "权限选择: repo (full control)"
echo ""
read -p "请输入 GitHub Token: " token

if [ -n "$token" ]; then
    echo "正在推送..."
    git remote set-url origin https://$token@github.com/taylortaurus/eai-qa.git
    git push -u origin main
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ 推送成功！"
        echo ""
        echo "下一步配置 GitHub Pages:"
        echo "1. 访问: https://github.com/taylortaurus/eai-qa/settings/pages"
        echo "2. Source 选择: Deploy from a branch"
        echo "3. Branch: main"
        echo "4. Folder: / (root)"
        echo "5. 点击 Save"
        echo ""
        echo "等待几分钟后访问: https://taylortaurus.github.io/eai-qa/"
    else
        echo "❌ 推送失败，请检查 token 是否正确"
    fi
fi

# 重置 URL（不保存 token）
git remote set-url origin https://github.com/taylortaurus/eai-qa.git
