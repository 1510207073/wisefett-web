// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-11-01',
  devtools: { enabled: false },
  dir: {
    pages: 'pages',
  },
  ssr: false, // Github pages require
  app: {
    // baseURL: '/wisefett-web/', // GitHub Pages 子路径
    buildAssetsDir: '/static/',
    head: {
      title: 'WiseFett - AI 增强型投资决策支持系统',
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        { name: 'description', content: 'WiseFett是一款AI增强型投资决策支持系统，为投资者提供智能分析和决策支持' }
      ],
      link: [
        { rel: 'icon', type: 'image/svg+xml', href: '/wisefett-web/images/favicon.svg' },
        { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap' },
        { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;800&display=swap' }
      ]
    }
  },
  
  css: [
    '~/assets/css/main.css'
  ],
  
  modules: [
    // 如果需要，可以在这里添加更多的Nuxt模块
  ]
})
