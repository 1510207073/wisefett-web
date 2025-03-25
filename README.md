# 运行项目
pnpm i
pnpm run dev

# 项目技术栈介绍

## 核心框架
- Nuxt.js 3.16.1 - Vue.js 的服务器端渲染框架
- Vue.js 3.5.13 - 渐进式 JavaScript 框架
- Vue Router 4.5.0 - Vue.js 的官方路由

## 开发工具
- pnpm - 高性能的包管理器
- TypeScript - 用于类型安全的 JavaScript 超集

## 项目特点
- 采用 Nuxt 3 框架，支持服务器端渲染 (SSR)
- 使用 TypeScript 进行开发，提供更好的类型安全性
- 基于 Vue 3 的组合式 API 开发
- 使用 pnpm 作为包管理器，提供更快的依赖安装速度

## 开发环境要求
- Node.js 环境
- pnpm 包管理器

## 部署说明
### GitHub Pages 部署
1. 生成静态文件：
```bash
pnpm run generate
```
2. 生成的静态文件位于 `.output/public` 目录
3. 将该目录内容部署到 GitHub Pages

注意：本项目采用静态生成（Static Generation）模式部署，而非 SSR 模式，以确保在 GitHub Pages 上正常运行。