#!/usr/bin/env sh

# 确保你处于项目的根目录
cd "$(dirname "$0")"

# 清除之前的构建
rm -rf .output dist

# 构建项目
pnpm run generate

# 检查 .output/public 目录是否存在
if [ -d ".output/public" ]; then
  # 如果存在，复制到 dist 目录
  mkdir -p dist
  cp -r .output/public/* dist/
elif [ ! -d "dist" ]; then
  echo "错误: 未找到生成的 dist 或 .output/public 目录!"
  exit 1
fi

# 进入 dist 目录
cd dist

# 创建 .nojekyll 文件 (避免 GitHub Pages 使用 Jekyll 处理)
touch .nojekyll

# 初始化 Git 仓库 (如果还没有)
git init -b main

# 添加所有文件
git add -A

# 提交更改
git commit -m 'deploy'

# 推送到 gh-pages 分支
git push -f git@github.com:1510207073/wisefett-web.git main:gh-pages

# 返回项目根目录
cd ..

echo "部署完成！请访问 https://1510207073.github.io/wisefett-web/"
