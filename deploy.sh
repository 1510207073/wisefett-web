#!/usr/bin/env sh

# 确保你处于项目的根目录
cd "$(dirname "$0")"

# 检查Git LFS是否已安装
if ! command -v git-lfs &> /dev/null; then
  echo "错误: 未安装Git LFS，请先安装Git LFS"
  echo "Mac上安装方法: brew install git-lfs"
  echo "Windows上安装方法: https://git-lfs.github.com/"
  exit 1
fi

# 删除符号链接（如果存在）
if [ -L "dist" ]; then
  rm dist
  echo "已删除符号链接 dist"
fi

# 清除之前的构建
rm -rf .output dist

# 构建项目
echo "开始构建网站..."
pnpm run generate

# 检查 .output/public 目录是否存在
if [ -d ".output/public" ]; then
  # 如果存在，复制到 dist 目录
  mkdir -p dist
  cp -r .output/public/* dist/
  echo "已将构建后的文件复制到 dist 目录"
elif [ ! -d "dist" ]; then
  echo "错误: 未找到生成的 dist 或 .output/public 目录!"
  exit 1
fi

# 确保更新目录存在
if [ ! -d "public/update" ]; then
  echo "警告: 更新目录不存在，请先运行上级目录中的 prepare-website-updates.sh 脚本"
fi

# 确保更新目录被复制到dist
if [ -d "public/update" ]; then
  mkdir -p dist/update
  cp -r public/update/* dist/update/
  echo "更新文件已复制到dist目录"
fi

# 修复HTML文件中的静态资源路径
echo "修复HTML文件中的静态资源路径..."
if [ -f "dist/index.html" ]; then
  echo "修改index.html文件中的路径..."
  # 修复错误的路径，替换 /wisefett-web/static/ 为 /static/
  sed -i.bak 's|/wisefett-web/static/|/static/|g' dist/index.html
  if [ -f "dist/index.html.bak" ]; then
    rm dist/index.html.bak
  fi
fi

# 检查是否有其他HTML文件需要修复
find dist -name "*.html" -not -path "dist/index.html" | while read html_file; do
  echo "修改 $html_file 文件中的路径..."
  sed -i.bak 's|/wisefett-web/static/|/static/|g' "$html_file"
  if [ -f "${html_file}.bak" ]; then
    rm "${html_file}.bak"
  fi
done

# 进入 dist 目录
cd dist

# 创建 .nojekyll 文件 (避免 GitHub Pages 使用 Jekyll 处理)
touch .nojekyll

# 使用Git LFS进行部署
echo "初始化Git LFS..."
git init -b main
git lfs install

# 配置Git LFS追踪DMG文件
echo "配置Git LFS追踪大文件..."
git lfs track "*.dmg"
git lfs track "*.exe"
git add .gitattributes

# 配置用户信息
git config user.name "WiseFett Deployer"
git config user.email "deploy@wisefett.com"

# 使用自定义域名
echo "设置自定义域名..."
echo "wisefett.wyld.cc" > CNAME

# 添加所有文件
echo "添加所有文件到Git..."
git add -A

# 提交更改
git commit -m 'deploy: 更新应用版本'

# 推送到 gh-pages 分支
echo "正在推送到GitHub Pages (使用Git LFS)..."
git push -f git@github.com:1510207073/wisefett-web.git main:gh-pages

# 如果推送失败，提供使用gh-pages模块的选项
if [ $? -ne 0 ]; then
  echo "推送失败，Github可能拒绝了大文件。"
  echo "建议：移除DMG文件后再次尝试，或使用其他服务托管大文件。"
  cd ..
  exit 1
else
  # 返回项目根目录
  cd ..
  echo "推送成功！"
fi

echo "部署完成！请访问 https://wisefett.wyld.cc 检查更新是否成功"
