import { defineNuxtConfig } from 'nuxt/config'
// import fs from 'fs' // No longer needed
// import path from 'path' // No longer needed

// No need to read package.json here
// Nuxt will automatically load NUXT_PUBLIC_APP_VERSION from the .env file

// Directly read the environment variable set during build
const appVersion = process.env.BUILD_TIME_APP_VERSION || '0.0.0' // Default if not set
console.log('[Nuxt Config] Build time app version from ENV:', appVersion);

// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-11-01',
  devtools: { enabled: false },
  dir: {
    pages: 'pages',
  },
  ssr: false, // Github pages require
  app: {
    // 如果使用自定义域名 wisefett.wyld.cc 则不需要基础路径
    // 如果使用 GitHub Pages 则需要基础路径 /wisefett-web/
    baseURL: '/', // 使用根路径，适合自定义域名
    buildAssetsDir: '/static/',
    head: {
      title: 'WiseFett - AI Investment Assistant',
      htmlAttrs: {
        lang: 'zh-CN'
      },
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        { key: 'description', name: 'description', content: 'WiseFett is an AI-powered tool to enhance investment decisions using technical analysis and artificial intelligence.' },
        { name: 'format-detection', content: 'telephone=no' }
      ],
      link: [
        { rel: 'icon', type: 'image/svg+xml', href: '/images/favicon.svg' }, // 移除 wisefett-web 前缀
        { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap' },
        { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;800&display=swap' },
        { rel: 'icon', type: 'image/x-icon', href: '/images/favicon.ico' }
      ]
    }
  },
  
  css: [
    '~/assets/css/main.css'
  ],
  
  modules: [
    '@nuxt/ui'
  ],

  runtimeConfig: {
    // Nuxt will automatically populate public.appVersion 
    // from the NUXT_PUBLIC_APP_VERSION environment variable (loaded from .env)
    public: {
      // Manually assign the value to runtime config
      appVersion: appVersion
    }
  }
})
