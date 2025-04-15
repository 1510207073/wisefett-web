<template>
  <div class="app-container">
    <header class="header">
      <div class="container">
        <div class="logo-section">
          <a href="#" class="logo-link">
            <div class="logo-text-container">
              <h1 class="logo-text">Wise<span class="logo-text-highlight">Fett</span></h1>
              <span class="logo-badge">AI</span>
            </div>
          </a>
        </div>
        <nav class="navigation">
          <ul>
            <li><a href="#hero" @click.prevent="navigateToSlide(0)">首页</a></li>
            <li><a href="#value" @click.prevent="navigateToSlide(1)">简介</a></li>
            <li><a href="#download" @click.prevent="navigateToSlide(2)">下载</a></li>
            <li><a href="https://www.yuque.com/u12072733/os76d6/hr1gcwfipegvslim?singleDoc#" target="_blank" class="doc-link">文档</a></li>
          </ul>
        </nav>
      </div>
    </header>

    <!-- 自定义指示器 -->
    <div class="custom-indicators">
      <div 
        v-for="(section, index) in sections" 
        :key="section"
        :class="['indicator-dot', { active: activeIndex === index }]"
        @click="navigateToSlide(index)"
      ></div>
    </div>

    <Swiper
      :modules="[Mousewheel, Pagination, Autoplay]"
      :direction="'vertical'"
      :slides-per-view="1"
      :space-between="0"
      :mousewheel="true"
      :pagination="{
        clickable: true,
        el: null
      }"
      :autoplay="false"
      :speed="800"
      @swiper="onSwiper"
      @slideChange="onSlideChange"
      class="main-swiper"
    >
      <SwiperSlide>
        <section id="hero" class="section hero-section" data-section="hero">
          <div class="container">
            <div class="hero-content animate-fade-in">
              <h2 class="hero-title">WiseFett - AI 投资决策增强工具</h2>
              <p class="hero-description">结合技术分析和人工智能，帮助投资者做出更明智的投资决策</p>
              <div class="cta-buttons">
                <a href="#download" @click.prevent="navigateToSlide(2)" class="btn primary-noshadow">立即下载</a>
                <a href="https://www.yuque.com/u12072733/os76d6/hr1gcwfipegvslim?singleDoc#" class="btn outline" target="_blank">查看文档</a>
              </div>
            </div>
          </div>
          <div class="hero-bg"></div>
          <!-- 添加金融相关动画背景 -->
          <div class="finance-bg-animation">
            <div class="stock-graph"></div>
            <div class="stock-dots"></div>
            <div class="stock-line line1"></div>
            <div class="stock-line line2"></div>
            <div class="stock-line line3"></div>
            <div class="stock-candle candle1"></div>
            <div class="stock-candle candle2"></div>
            <div class="stock-candle candle3"></div>
            <div class="stock-candle candle4"></div>
          </div>
        </section>
      </SwiperSlide>

      <SwiperSlide>
        <section id="value" class="section value-section" data-section="value">
          <div class="section-bg-decoration"></div>
          <!-- 添加金融相关动画背景 -->
          <div class="finance-bg-animation alt">
            <div class="data-circle circle1"></div>
            <div class="data-circle circle2"></div>
            <div class="data-circle circle3"></div>
            <div class="data-flow flow1"></div>
            <div class="data-flow flow2"></div>
            <div class="data-flow flow3"></div>
            <div class="data-grid"></div>
          </div>
          <div class="container">
            <h2 class="section-title text-center mb-4">产品特点</h2>
            <p class="section-subtitle text-center mb-5">为投资决策提供全方位的技术支持与智能辅助</p>
            <div class="value-wrapper">
              <div class="value-item">
                <div class="value-icon-container">
                  <svg class="value-icon" width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="30" cy="30" r="30" fill="rgba(43, 93, 224, 0.08)"/>
                    <!-- Sliders for Customization -->
                    <rect x="18" y="22" width="4" height="16" rx="2" stroke="#2B5DE0" stroke-width="2"/>
                    <rect x="28" y="22" width="4" height="16" rx="2" stroke="#2B5DE0" stroke-width="2"/>
                    <rect x="38" y="22" width="4" height="16" rx="2" stroke="#2B5DE0" stroke-width="2"/>
                    <circle cx="20" cy="26" r="3" fill="#2B5DE0"/>
                    <circle cx="30" cy="32" r="3" fill="#2B5DE0"/>
                    <circle cx="40" cy="24" r="3" fill="#2B5DE0"/>
                  </svg>
                </div>
                <h3>灵活定制</h3>
                <p>自由组合多种K线以及技术指标，定制属于自己的分析策略</p>
              </div>
              <div class="value-item">
                <div class="value-icon-container">
                  <svg class="value-icon" width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="30" cy="30" r="30" fill="rgba(43, 93, 224, 0.08)"/>
                    <!-- Brain for AI Analysis -->
                    <path d="M30 18C25 18 21 22 21 27C21 30 23 32.5 26 34M30 18C35 18 39 22 39 27C39 30 37 32.5 34 34M26 34C24 35.5 23 38 23 40C23 41.1046 23.8954 42 25 42H35C36.1046 42 37 41.1046 37 40C37 38 36 35.5 34 34M26 34C28 35 29 36 30 36C31 36 32 35 34 34" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M30 36V42" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <!-- Optional: Connection lines/dots -->
                    <circle cx="20" cy="25" r="1.5" fill="#2B5DE0"/>
                    <circle cx="40" cy="25" r="1.5" fill="#2B5DE0"/>
                    <circle cx="25" cy="18" r="1.5" fill="#2B5DE0"/>
                    <circle cx="35" cy="18" r="1.5" fill="#2B5DE0"/>
                    <line x1="21" y1="25" x2="24" y2="27" stroke="#2B5DE0" stroke-width="1"/>
                    <line x1="39" y1="25" x2="36" y2="27" stroke="#2B5DE0" stroke-width="1"/>
                  </svg>
                </div>
                <h3>智能分析</h3>
                <p>结合AI技术，提供深度市场洞察</p>
              </div>
              <div class="value-item">
                <div class="value-icon-container">
                  <svg class="value-icon" width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="30" cy="30" r="30" fill="rgba(43, 93, 224, 0.08)"/>
                    <!-- Eye for Intuitive UI -->
                    <path d="M15 30C15 30 20 22 30 22C40 22 45 30 45 30C45 30 40 38 30 38C20 38 15 30 15 30Z" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <circle cx="30" cy="30" r="5" stroke="#2B5DE0" stroke-width="2"/>
                  </svg>
                </div>
                <h3>简洁直观</h3>
                <p>友好的用户界面，降低学习门槛</p>
              </div>
              <div class="value-item">
                <div class="value-icon-container">
                  <svg class="value-icon" width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="30" cy="30" r="30" fill="rgba(43, 93, 224, 0.08)"/>
                    <!-- Simple Monitor -->
                    <rect x="15" y="18" width="30" height="20" rx="2" stroke="#2B5DE0" stroke-width="2"/>
                    <!-- Stand -->
                    <rect x="25" y="38" width="10" height="4" rx="1" stroke="#2B5DE0" stroke-width="2"/>
                    <!-- Simple "running" indicator inside monitor -->
                    <circle cx="30" cy="28" r="3" stroke="#2B5DE0" stroke-width="2"/>
                    <!-- Optional: Add a line connecting stand to monitor -->
                    <line x1="30" y1="38" x2="30" y2="42" stroke="#2B5DE0" stroke-width="2"/>
                  </svg>
                </div>
                <h3>本地运行</h3>
                <p>数据安全，无需担心隐私泄露</p>
              </div>
            </div>
          </div>
        </section>
      </SwiperSlide>

      <SwiperSlide>
        <section id="download" class="section download-section" data-section="download">
          <div class="download-bg-decoration"></div>
          <!-- 添加金融相关动画背景 -->
          <div class="finance-bg-animation third">
            <div class="market-pulse pulse1"></div>
            <div class="market-pulse pulse2"></div>
            <div class="market-pulse pulse3"></div>
            <div class="market-chart"></div>
            <div class="market-symbols">
              <span>+</span>
              <span>%</span>
              <span>$</span>
              <span>€</span>
              <span>¥</span>
            </div>
          </div>
          <div class="container">
            <h2 class="section-title text-center mb-4">立即下载</h2>
            <p class="section-subtitle text-center mb-5">选择适合您系统的版本开始使用 WiseFett</p>
            
            <div class="download-options">
              <div class="download-card card">
                <div class="download-icon windows-icon">
                  <svg width="48" height="48" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0 3.449L9.75 2.1V11.551H0V3.449ZM10.949 1.949L24 0V11.4H10.949V1.949ZM0 12.6H9.75V22.051L0 20.699V12.6ZM10.949 12.6H24V24L11.1 22.199" fill="#2B5DE0"/>
                  </svg>
                </div>
                <h3 class="mb-3">Windows</h3>
                <p class="mb-2">Windows 10 64位及以上</p>
                <a href="#windows-download-link" class="btn secondary">下载 Windows 版本</a>
              </div>
              <div class="download-card card">
                <div class="download-icon macos-icon">
                  <svg width="48" height="48" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M17.0266 12.5C16.9275 9.45845 19.4961 8.05894 19.612 7.99172C18.2134 5.97643 16.0097 5.66095 15.2524 5.63386C13.4261 5.45044 11.6544 6.75399 10.7271 6.75399C9.77913 6.75399 8.34513 5.65269 6.79725 5.68661C4.8089 5.72054 2.96253 6.83068 1.97709 8.55226C-0.0490796 12.0669 1.46173 17.2476 3.388 20.2322C4.35251 21.6996 5.48811 23.345 6.97726 23.2772C8.42904 23.2053 8.98731 22.3393 10.7406 22.3393C12.471 22.3393 13.0023 23.2772 14.5233 23.2323C16.0851 23.2053 17.065 21.7379 17.9889 20.2547C19.0919 18.5602 19.54 16.896 19.5671 16.8281C19.5265 16.8151 17.1301 15.5658 17.0266 12.5Z" fill="#2B5DE0"/>
                    <path d="M14.3656 3.79066C15.1499 2.82854 15.6757 1.49638 15.5316 0.144531C14.3859 0.190376 12.9747 0.928557 12.1565 1.86482C11.4261 2.69384 10.7867 4.0709 10.9579 5.37497C12.2486 5.46927 13.5544 4.7365 14.3656 3.79066Z" fill="#2B5DE0"/>
                  </svg>
                </div>
                <h3 class="mb-3">macOS</h3>
                <p class="mb-2">macOS 10.15及以上</p>
                <a :href="macDownloadUrl" @click="trackDownload('macOS', detectedArch)" class="btn secondary">
                  下载 macOS 版本
                  <span v-if="detectedArch" class="detected-arch">
                    ({{ archDisplay }})
                  </span>
                </a>
              </div>
            </div>
            
            <div class="download-info text-center">
              <p>通过下载，您同意我们的<a href="#" class="text-link">使用条款</a>和<a href="#" class="text-link">隐私政策</a></p>
            </div>
          </div>
        </section>
      </SwiperSlide>
    </Swiper>

    <footer class="footer">
      <div class="container">
        <div class="footer-content">
          <p class="copyright">Copyright © 2025 BitRhythm.</p>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, watch } from 'vue';
import { useRuntimeConfig } from '#app';
// 导入 Swiper 核心组件
import { Swiper, SwiperSlide } from 'swiper/vue';
// 导入需要的模块
import { Autoplay, Pagination, Mousewheel } from 'swiper/modules';
// 导入 Swiper 样式
import 'swiper/css';
import 'swiper/css/pagination';

const swiperInstance = ref(null);
const activeIndex = ref(0);
const sections = ['hero', 'value', 'download'];

const config = useRuntimeConfig();
const appVersion = config.public.appVersion;

// 架构检测
const detectedArch = ref(null);

// 架构显示名称
const archDisplay = computed(() => {
  return detectedArch.value === 'arm64' ? 'Apple Silicon' : 'Intel';
});

// 根据架构生成下载URL
const macDownloadUrl = computed(() => {
  const version = appVersion; // 使用从 Nuxt 配置注入的版本号
  const arch = detectedArch.value === 'arm64' ? 'arm64' : 'x64'; // 强制为 arm64 或 x64
  const filename = `WiseFett_${version}_${arch}.zip`;
  const baseUrl = `https://wyld-media.oss-cn-beijing.aliyuncs.com/wisefett/update/v${version}/mac/${filename}`;
  return baseUrl;
});

// 检测用户设备的CPU架构
function detectArch() {
  // 使用UserAgent和CPU特性检测苹果设备架构
  const userAgent = navigator.userAgent.toLowerCase();
  
  // Apple Silicon 设备通常会在 UserAgent 中包含 "mac" 并且 CPU 包含 "AppleWebKit"
  if (userAgent.includes('mac') && navigator.userAgentData) {
    // 现代浏览器可能支持 userAgentData API
    try {
      navigator.userAgentData.getHighEntropyValues(['architecture', 'platform', 'platformVersion'])
        .then(ua => {
          if (ua.architecture === 'arm' || ua.architecture === 'arm64') {
            detectedArch.value = 'arm64';
          } else {
            detectedArch.value = 'x64';
          }
        })
        .catch(() => {
          // 如果无法获取高熵值，使用备用检测方法
          fallbackArchDetection();
        });
    } catch (e) {
      fallbackArchDetection();
    }
  } else {
    fallbackArchDetection();
  }
}

// 备用架构检测方法
function fallbackArchDetection() {
  const userAgent = navigator.userAgent.toLowerCase();
  
  // 检查已知的Apple Silicon指标
  if (
    // MacOS 11+ on Apple Silicon 有时可通过性能特征检测
    (userAgent.includes('mac') && navigator.hardwareConcurrency > 8) ||
    // 某些浏览器在Apple Silicon上可能会有特殊标记
    userAgent.includes('macintosh') && /(apple.*silicon|m1|m2)/i.test(userAgent)
  ) {
    detectedArch.value = 'arm64';
  } else if (userAgent.includes('mac') || userAgent.includes('macintosh')) {
    detectedArch.value = 'x64';
  } else {
    // 非Mac设备
    detectedArch.value = 'universal';
  }
}

// 跟踪下载事件
function trackDownload(platform, arch) {
  console.log(`用户下载 ${platform} 版本，架构: ${arch}`);
  // 这里可以添加分析代码
}

// 获取 Swiper 实例
const onSwiper = (swiper) => {
  swiperInstance.value = swiper;
};

// 监听滑动变化
const onSlideChange = () => {
  if (!swiperInstance.value) return;
  activeIndex.value = swiperInstance.value.activeIndex;
};

// 导航到指定幻灯片
const navigateToSlide = (index) => {
  if (!swiperInstance.value) return;
  swiperInstance.value.slideTo(index);
};

onMounted(() => {
  const config = useRuntimeConfig();
  console.log('Runtime config (public):', JSON.stringify(config.public, null, 2));
  
  // 修复 "立即下载" 按钮点击事件
  document.querySelector('.scroll-to')?.addEventListener('click', (e) => {
    e.preventDefault();
    navigateToSlide(2);
  });
  
  // 检测用户设备架构
  detectArch();
});
</script>

<style>
:root {
  --primary-color: #121212;
  --secondary-color: #2B5DE0;
  --light-text: #ffffff;
  --dark-text: #121212;
  --border-color: rgba(255, 255, 255, 0.1);
  --card-bg: rgba(30, 30, 30, 0.8);
  --shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  height: 100%;
  overflow-y: hidden;
  scrollbar-width: none;
  -ms-overflow-style: none;
  overscroll-behavior: contain;
}

html::-webkit-scrollbar {
  display: none;
}

body {
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  line-height: 1.6;
  color: var(--light-text);
  background-color: var(--primary-color);
  min-height: 100%;
  overflow: hidden;
}

a {
  text-decoration: none;
  color: var(--secondary-color);
}

.app-container {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  height: 100vh;
  overflow: hidden;
}

.container {
  width: 90%;
  max-width: 1200px;
  margin: 0 auto;
}

/* Swiper 相关样式 */
.main-swiper {
  width: 100%;
  height: calc(100vh - 80px);
  margin-top: 80px;
}

.swiper-slide {
  overflow: auto; /* 允许内容滚动 */
  scrollbar-width: none;
  -ms-overflow-style: none;
}

.swiper-slide::-webkit-scrollbar {
  display: none;
}

.swiper-pagination-bullet {
  background: rgba(255, 255, 255, 0.5);
}

.swiper-pagination-bullet-active {
  background: var(--secondary-color);
}

/* 自定义指示器样式 */
.custom-indicators {
  position: fixed;
  right: 30px;
  top: 50%;
  transform: translateY(-50%);
  display: flex;
  flex-direction: column;
  gap: 15px;
  z-index: 100;
}

.indicator-dot {
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background-color: rgba(255, 255, 255, 0.3);
  cursor: pointer;
  transition: all 0.3s ease;
}

.indicator-dot:hover {
  background-color: rgba(255, 255, 255, 0.5);
  transform: scale(1.2);
}

.indicator-dot.active {
  background-color: var(--secondary-color);
  transform: scale(1.2);
  box-shadow: 0 0 10px rgba(43, 93, 224, 0.5);
}

.text-center {
  text-align: center;
}

.mb-2 {
  margin-bottom: 0.5rem;
}

.mb-3 {
  margin-bottom: 1rem;
}

.mb-4 {
  margin-bottom: 1.5rem;
}

.mb-5 {
  margin-bottom: 2rem;
}

/* 全屏部分和滚动样式 */
.section {
  height: 100%;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: relative;
  padding: 80px 20px;
  overscroll-behavior: contain; /* 防止滚动传播 */
}

.section.active {
  opacity: 1;
  visibility: visible;
  transform: translateY(0);
}

/* 添加内容动画 */
.section .container {
  opacity: 0;
  transform: translateY(10px);
  transition: all 0.15s cubic-bezier(0.4, 0, 0.2, 1) 0.05s;
}

.section.active .container {
  opacity: 1;
  transform: translateY(0);
}

/* 为不同元素添加延迟动画 */
.section .hero-content,
.section .value-wrapper,
.section .download-options {
  opacity: 0;
  transform: translateY(10px);
  transition: all 0.15s cubic-bezier(0.4, 0, 0.2, 1) 0.1s;
}

.section.active .hero-content,
.section.active .value-wrapper,
.section.active .download-options {
  opacity: 1;
  transform: translateY(0);
}

/* 为标题添加动画 */
.section .section-title {
  opacity: 0;
  transform: translateY(10px);
  transition: all 0.15s cubic-bezier(0.4, 0, 0.2, 1) 0.15s;
}

.section.active .section-title {
  opacity: 1;
  transform: translateY(0);
}

/* 为副标题添加动画 */
.section .section-subtitle {
  opacity: 0;
  transform: translateY(10px);
  transition: all 0.15s cubic-bezier(0.4, 0, 0.2, 1) 0.2s;
}

.section.active .section-subtitle {
  opacity: 1;
  transform: translateY(0);
}

/* 为value-item添加动画 */
.value-item {
  opacity: 0;
  transform: translateY(10px);
  transition: all 0.15s cubic-bezier(0.4, 0, 0.2, 1);
}

.section.active .value-item:nth-child(1) { transition-delay: 0.25s; }
.section.active .value-item:nth-child(2) { transition-delay: 0.3s; }
.section.active .value-item:nth-child(3) { transition-delay: 0.35s; }
.section.active .value-item:nth-child(4) { transition-delay: 0.4s; }

.section.active .value-item {
  opacity: 1;
  transform: translateY(0);
}

/* 导航样式 */
.header {
  background-color: rgba(18, 18, 18, 0.9);
  color: var(--light-text);
  padding: 20px 0;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 100;
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
  height: 80px; /* 固定高度 */
}

.header .container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding-bottom: 15px;
}

/* 提示条样式 */
.marquee-container {
  background-color: rgba(43, 93, 224, 0.1);
  width: 100%;
  padding: 10px 0;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  text-align: center;
}

.notice-content {
  display: flex;
  justify-content: center;
  align-items: center;
}

.notice-item {
  color: var(--light-text);
  margin: 0 15px;
  cursor: pointer;
  transition: color 0.3s;
  font-size: 14px;
  padding: 4px 12px;
  border-radius: 4px;
  background-color: rgba(255, 255, 255, 0.05);
}

.notice-item:hover {
  color: var(--secondary-color);
  background-color: rgba(255, 255, 255, 0.1);
}

.notice-separator {
  color: rgba(255, 255, 255, 0.3);
  margin: 0 10px;
}

/* 弹窗样式 */
.modal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.8);
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 1000;
}

.modal-content {
  background-color: var(--card-bg);
  border-radius: 8px;
  width: 90%;
  max-width: 600px;
  max-height: 90vh;
  overflow-y: auto;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
}

.modal-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 15px 20px;
  border-bottom: 1px solid var(--border-color);
}

.modal-header h3 {
  margin: 0;
  color: var(--light-text);
}

.close-button {
  background: none;
  border: none;
  font-size: 24px;
  cursor: pointer;
  color: var(--light-text);
}

.modal-body {
  padding: 20px;
}

.modal .beta-notice-box,
.modal .security-notice-box {
  background-color: rgba(43, 93, 224, 0.05);
  border-left: 4px solid var(--secondary-color);
  padding: 15px;
  border-radius: 4px;
}

.modal a {
  color: var(--secondary-color);
  text-decoration: underline;
}

/* Logo 样式 */
.logo-section {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}

.logo-link {
  display: block;
  text-decoration: none;
}

.logo-text-container {
  position: relative;
  display: inline-block;
}

.logo-text {
  /* font-family: 'Montserrat', sans-serif; */
  /* Increase font-weight for boldness */
  font-weight: 700;
  font-size: 32px;
  letter-spacing: 1.5px;
  color: var(--light-text);
  margin: 0;
  position: relative;
  transition: all 0.3s ease;
  text-transform: none;
}

.logo-text-highlight {
  /* Increase font-weight for boldness */
  font-weight: 700;
  color: var(--secondary-color);
  position: relative;
  letter-spacing: 2.5px;
  transition: all 0.3s ease;
}

.logo-link:hover .logo-text-highlight {
  text-shadow: 0 0 10px rgba(43, 93, 224, 0.5);
}

.logo-text::before {
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, var(--secondary-color), transparent);
  transform: scaleX(0.8);
  transition: transform 0.3s ease;
}

.logo-link:hover .logo-text::before {
  transform: scaleX(1);
}

.logo-badge {
  position: absolute;
  top: -6px;
  right: -28px;
  font-size: 11px;
  color: var(--light-text);
  background-color: var(--secondary-color);
  padding: 2px 4px;
  border-radius: 4px;
  font-weight: bold;
  transition: all 0.3s ease;
}

.logo-link:hover .logo-badge {
  transform: scale(1.1);
}

.slogan {
  font-size: 14px;
  opacity: 0.9;
  margin-top: 5px;
}

/* 导航链接样式 */
.navigation ul {
  display: flex;
  list-style: none;
}

.navigation li {
  margin-left: 30px;
}

.navigation a {
  color: var(--light-text);
  text-decoration: none;
  font-weight: 500;
  transition: all 0.3s;
  padding: 5px 0;
  position: relative;
}

.navigation a::after {
  content: '';
  position: absolute;
  width: 0;
  height: 2px;
  bottom: 0;
  left: 0;
  background-color: var(--secondary-color);
  transition: width 0.3s;
}

.navigation a:hover::after,
.navigation a.active::after {
  width: 100%;
}

.navigation a:hover,
.navigation a.active {
  color: var(--secondary-color);
}

.doc-link {
  color: var(--light-text) !important;
  font-weight: 500 !important;
}

.doc-link:hover {
  color: var(--secondary-color) !important;
  text-decoration: none;
}

/* 首页部分优化 */
.hero-section {
  background: radial-gradient(circle at center, #212121 0%, #121212 70%);
  color: var(--light-text);
  text-align: center;
  position: relative;
  overflow: hidden;
}

.hero-bg {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: 
    radial-gradient(circle at 10% 20%, rgba(43, 93, 224, 0.05) 0%, transparent 25%),
    radial-gradient(circle at 85% 60%, rgba(43, 93, 224, 0.05) 0%, transparent 30%);
  z-index: -1;
  opacity: 0.7;
}

.hero-content {
  max-width: 800px;
  margin: 0 auto;
  padding: 0 20px;
  position: relative;
  z-index: 2;
}

.hero-title {
  font-size: 48px;
  margin-bottom: 24px;
  font-weight: 700;
  background: linear-gradient(to right, #fff, #cfd9f7);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  text-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
}

.hero-description {
  font-size: 22px;
  max-width: 650px;
  margin: 0 auto 50px;
  opacity: 0.9;
  line-height: 1.6;
  color: #e0e0e0;
}

.cta-buttons {
  display: flex;
  justify-content: center;
  gap: 20px;
}

/* 无阴影按钮 */
.primary-noshadow {
  background-color: var(--secondary-color);
  color: var(--light-text);
  box-shadow: none;
  border: none;
  position: relative;
  overflow: hidden;
}

.primary-noshadow:hover {
  /* Change hover background color to a lighter blue */
  background-color: #4A7DF2;
  transform: translateY(-3px);
  box-shadow: none;
}

.primary-noshadow::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
  transition: left 0.7s;
}

.primary-noshadow:hover::before {
  left: 100%;
}

@media (max-width: 768px) {
  .hero-title {
    font-size: 36px;
  }
  
  .hero-description {
    font-size: 18px;
  }
  
  .cta-buttons {
    flex-direction: column;
    align-items: center;
    gap: 15px;
  }
  
  .btn {
    min-width: 200px;
  }
}

/* 简介部分优化 */
.value-section {
  background: radial-gradient(circle at center, #212121 0%, #121212 70%);
  color: var(--light-text);
  position: relative;
  overflow: hidden;
}

.section-bg-decoration {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: 
    radial-gradient(circle at 90% 10%, rgba(43, 93, 224, 0.07) 0%, transparent 35%),
    radial-gradient(circle at 10% 90%, rgba(43, 93, 224, 0.05) 0%, transparent 40%),
    radial-gradient(circle at 50% 50%, rgba(43, 93, 224, 0.03) 0%, transparent 60%);
  z-index: 0;
  opacity: 0.8;
}

.section-title {
  font-size: 42px;
  background: linear-gradient(to right, #fff, #ddd);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  margin-bottom: 15px;
  position: relative;
  z-index: 1;
}

.section-subtitle {
  font-size: 20px;
  color: #cecece;
  max-width: 700px;
  margin-left: auto;
  margin-right: auto;
  position: relative;
  z-index: 1;
  line-height: 1.5;
}

.value-wrapper {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 30px;
  margin-top: 40px;
  width: 100%;
  position: relative;
  z-index: 1;
}

.value-item {
  background-color: rgba(40, 40, 40, 0.5);
  border-radius: 16px;
  padding: 35px 30px;
  box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
  text-align: center;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  display: flex;
  flex-direction: column;
  align-items: center;
  position: relative;
  overflow: hidden;
  z-index: 1;
  border: 1px solid rgba(255, 255, 255, 0.08);
  backdrop-filter: blur(4px);
  -webkit-backdrop-filter: blur(4px);
}

.value-item:before {
  content: "";
  position: absolute;
  width: 200%;
  height: 200%;
  background: radial-gradient(circle, rgba(43, 93, 224, 0.1) 0%, rgba(0, 0, 0, 0) 70%);
  top: -50%;
  left: -50%;
  z-index: -1;
  transform: scale(0);
  transition: transform 0.5s ease-out;
  border-radius: 50%;
}

.value-item:hover:before {
  transform: scale(1);
}

.value-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4);
  border-color: rgba(43, 93, 224, 0.3);
}

.value-item h3 {
  font-size: 24px;
  margin-bottom: 15px;
  color: var(--light-text);
  position: relative;
  display: inline-block;
  font-weight: 600;
}

.value-item h3:after {
  content: "";
  position: absolute;
  width: 40px;
  height: 2px;
  background-color: var(--secondary-color);
  bottom: -5px;
  left: 50%;
  transform: translateX(-50%);
  transition: width 0.3s ease;
}

.value-item:hover h3:after {
  width: 60px;
}

.value-icon-container {
  margin-bottom: 25px;
  display: flex;
  justify-content: center;
  align-items: center;
  transition: transform 0.3s ease;
}

.value-item:hover .value-icon-container {
  transform: scale(1.1);
}

.value-icon {
  width: 80px;
  height: 80px;
  margin: 0 auto;
  filter: drop-shadow(0 4px 6px rgba(43, 93, 224, 0.2));
  transition: filter 0.3s ease, transform 0.3s ease;
  display: flex;
  justify-content: center;
}

.value-item:hover .value-icon {
  filter: drop-shadow(0 8px 16px rgba(43, 93, 224, 0.4));
}

.value-item p {
  color: #dbdbdb;
  line-height: 1.7;
  font-size: 16px;
}

/* 下载部分优化 */
.download-section {
  background: radial-gradient(circle at center, #212121 0%, #121212 70%);
  color: var(--light-text);
  position: relative;
  overflow: hidden;
}

.download-bg-decoration {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: 
    radial-gradient(ellipse at 0% 0%, rgba(43, 93, 224, 0.08) 0%, transparent 50%),
    radial-gradient(ellipse at 100% 100%, rgba(43, 93, 224, 0.08) 0%, transparent 50%);
  z-index: 0;
  opacity: 0.7;
}

.download-options {
  display: flex;
  justify-content: center;
  gap: 50px;
  flex-wrap: wrap;
  margin-top: 20px;
  position: relative;
  z-index: 1;
}

.download-card {
  background-color: rgba(40, 40, 40, 0.5);
  text-align: center;
  width: 450px;
  border: 1px solid rgba(255, 255, 255, 0.08);
  transition: all 0.3s ease;
  border-radius: 20px;
  padding: 40px 30px;
  backdrop-filter: blur(4px);
  -webkit-backdrop-filter: blur(4px);
  position: relative;
  z-index: 1;
  box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
}

.download-card:hover {
  transform: translateY(-7px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
  border-color: rgba(43, 93, 224, 0.35);
}

.download-icon {
  margin-bottom: 25px;
  opacity: 0.9;
  transition: transform 0.3s ease, opacity 0.3s ease;
  display: flex;
  justify-content: center;
}

.download-card:hover .download-icon {
  transform: scale(1.1);
  opacity: 1;
}

.download-card h3 {
  font-size: 28px;
  color: var(--light-text);
  font-weight: 600;
  margin-bottom: 20px;
}

.download-card p {
  color: #dbdbdb;
  font-size: 16px;
  margin-bottom: 30px;
}

.download-with-select {
  padding-right: 15px;
  position: relative;
  text-align: left;
  min-width: 270px;
}

.chip-select-wrapper {
  display: inline-block;
  color: var(--light-text);
  position: relative;
  z-index: 1;
  margin-left: 5px;
}

.inline-select-btn {
  border: none;
  background: transparent;
  font-size: inherit;
  font-family: inherit;
  color: var(--light-text);
  font-weight: inherit;
  cursor: pointer;
  transition: all 0.3s ease;
  padding: 0 0 0 0;
  appearance: none;
  -webkit-appearance: none;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='10' height='10' viewBox='0 0 24 24' fill='none' stroke='white' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right center;
}

.download-info {
  margin-top: 50px;
  color: rgba(255, 255, 255, 0.5);
  font-size: 14px;
  position: relative;
  z-index: 1;
}

.text-link {
  color: var(--secondary-color);
  text-decoration: underline;
  transition: all 0.3s ease;
  opacity: 0.9;
}

.text-link:hover {
  opacity: 1;
  color: #4a7df2;
  text-shadow: 0 0 8px rgba(74, 125, 242, 0.4);
  text-decoration: none;
}

@media (max-width: 768px) {
  .section-title {
    font-size: 32px;
  }
  
  .section-subtitle {
    font-size: 18px;
  }
  
  .download-card {
    min-width: 280px;
    padding: 30px 20px;
  }
  
  .download-card h3 {
    font-size: 24px;
  }
  
  .download-options {
    gap: 30px;
  }
  
  .value-item {
    padding: 25px 20px;
  }
  
  .value-icon {
    width: 60px;
    height: 60px;
  }
}

/* 页脚样式 */
.footer {
  background-color: var(--primary-color);
  color: rgba(255, 255, 255, 0.7);
  padding: 20px 0;
  position: fixed;
  bottom: 0;
  width: 100%;
  z-index: 90;
}

.footer-content {
  display: flex;
  justify-content: center;
  align-items: center;
}

.copyright {
  margin: 0;
  font-size: 14px;
}

/* 响应式设计 */
@media (max-width: 768px) {
  .section {
    padding-top: 140px;
  }
  
  .header .container {
    flex-direction: column;
    text-align: center;
  }
  
  .navigation ul {
    margin-top: 20px;
    justify-content: center;
  }
  
  .navigation li {
    margin: 0 15px;
  }
  
  .notice-content {
    flex-direction: column;
    gap: 8px;
  }
  
  .notice-item {
    width: 90%;
    margin: 0 auto;
  }
  
  .notice-separator {
    display: none;
  }
  
  .hero-content h2 {
    font-size: 32px;
  }
  
  .cta-buttons {
    flex-direction: column;
    align-items: center;
  }
  
  .footer-content {
    flex-direction: column;
    text-align: center;
    gap: 15px;
  }
  
  .value-icon {
    width: 60px;
    height: 60px;
  }
  
  .section-indicators {
    right: 15px;
  }
  
  .indicator-dot {
    width: 8px;
    height: 8px;
  }
}

/* 指示点样式 */
.section-indicators {
  display: none;
}

/* Element Plus 轮播图样式覆盖 */
.main-swiper {
  width: 100%;
  height: calc(100vh - 80px);
  margin-top: 80px;
  overflow: hidden;
  touch-action: none; /* 禁止浏览器默认的触摸行为 */
}

.el-carousel__container {
  height: 100%;
}

.el-carousel__item {
  height: 100%;
  overflow-y: auto; 
  scroll-behavior: smooth;
  overscroll-behavior: contain;
  touch-action: pan-x pinch-zoom; /* 只允许水平滑动 */
}

/* 禁止内部元素的滚动行为触发页面切换 */
.section {
  height: 100%;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: relative;
  padding: 80px 20px;
  overscroll-behavior: contain; /* 防止滚动传播 */
}

/* 添加切换动画效果，让页面切换更平滑 */
.el-carousel__item.is-active {
  transition: transform 0.8s ease-out, opacity 0.8s ease-out;
}

/* 自定义指示器样式 */
.custom-indicators {
  position: fixed;
  right: 30px;
  top: 50%;
  transform: translateY(-50%);
  display: flex;
  flex-direction: column;
  gap: 15px;
  z-index: 100;
}

.indicator-dot {
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background-color: rgba(255, 255, 255, 0.3);
  cursor: pointer;
  transition: all 0.3s ease;
}

.indicator-dot:hover {
  background-color: rgba(255, 255, 255, 0.5);
  transform: scale(1.2);
}

.indicator-dot.active {
  background-color: var(--secondary-color);
  transform: scale(1.2);
  box-shadow: 0 0 10px rgba(43, 93, 224, 0.5);
}

/* 修复 section 样式问题 */
.section {
  height: 100%;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: relative;
  padding: 80px 20px;
}

/* 修复动画和内容显示 */
.section .container,
.section .hero-content,
.section .value-wrapper,
.section .download-options,
.section .section-title,
.section .section-subtitle,
.value-item {
  opacity: 1 !important;
  transform: none !important;
  transition: none !important;
}

/* 修复第二第三页内容不能正常显示的问题 */
.value-wrapper, 
.download-options {
  width: 100%;
  max-width: 1200px;
  padding: 0 20px;
  margin: 0 auto;
}

@media (max-width: 768px) {
  .custom-indicators {
    right: 15px;
  }
  
  .indicator-dot {
    width: 8px;
    height: 8px;
  }
}

/* 增加滑动提示样式 */
.slide-hint {
  position: absolute;
  bottom: 30px;
  left: 50%;
  transform: translateX(-50%);
  font-size: 14px;
  color: rgba(255, 255, 255, 0.5);
  display: flex;
  flex-direction: column;
  align-items: center;
  opacity: 0.7;
  animation: fadeInOut 2s infinite;
}

.slide-hint-arrow {
  margin-top: 5px;
  width: 20px;
  height: 20px;
  border-left: 2px solid rgba(255, 255, 255, 0.5);
  border-bottom: 2px solid rgba(255, 255, 255, 0.5);
  transform: rotate(-45deg);
}

@keyframes fadeInOut {
  0%, 100% { opacity: 0.3; }
  50% { opacity: 0.7; }
}

/* 金融动画背景元素 - 共用样式 */
.finance-bg-animation {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 0;
  overflow: hidden;
  opacity: 0.5;
  pointer-events: none;
}

/* 首页 - 股票图表动画 */
.stock-graph {
  position: absolute;
  width: 50%;
  height: 30%;
  top: 15%;
  right: -10%;
  border-left: 2px solid rgba(43, 93, 224, 0.4);
  border-bottom: 2px solid rgba(43, 93, 224, 0.4);
}

.stock-dots {
  position: absolute;
  width: 40%;
  height: 40%;
  bottom: 10%;
  left: 10%;
  background-image: radial-gradient(circle, rgba(43, 93, 224, 0.4) 1.5px, transparent 1.5px);
  background-size: 30px 30px;
  opacity: 0.6;
}

.stock-line {
  position: absolute;
  background: linear-gradient(90deg, transparent, rgba(43, 93, 224, 0.6), transparent);
  height: 2px;
}

.line1 {
  width: 60%;
  top: 25%;
  right: 5%;
  animation: stockLine 8s infinite ease-in-out;
}

.line2 {
  width: 50%;
  top: 40%;
  right: 10%;
  animation: stockLine 12s infinite ease-in-out;
  animation-delay: 1s;
}

.line3 {
  width: 40%;
  top: 55%;
  right: 15%;
  animation: stockLine 10s infinite ease-in-out;
  animation-delay: 2s;
}

.stock-candle {
  position: absolute;
  width: 6px;
  background-color: rgba(43, 93, 224, 0.5);
  transform-origin: bottom;
  animation: candleScale 10s infinite ease-in-out;
  box-shadow: 0 0 8px rgba(43, 93, 224, 0.4);
}

.candle1 {
  height: 80px;
  bottom: 20%;
  right: 30%;
  animation-delay: 0s;
}

.candle2 {
  height: 120px;
  bottom: 20%;
  right: 35%;
  animation-delay: 2s;
}

.candle3 {
  height: 60px;
  bottom: 20%;
  right: 40%;
  animation-delay: 4s;
}

.candle4 {
  height: 100px;
  bottom: 20%;
  right: 45%;
  animation-delay: 6s;
}

@keyframes stockLine {
  0%, 100% { transform: translateY(0) scale(1); box-shadow: 0 0 4px rgba(43, 93, 224, 0.2); }
  50% { transform: translateY(20px) scale(0.97); box-shadow: 0 0 12px rgba(43, 93, 224, 0.5); }
}

@keyframes candleScale {
  0%, 100% { transform: scaleY(1); box-shadow: 0 0 8px rgba(43, 93, 224, 0.4); }
  50% { transform: scaleY(0.8); box-shadow: 0 0 15px rgba(43, 93, 224, 0.6); }
}

/* 第二页 - 数据流动和分析 */
.finance-bg-animation.alt {
  opacity: 0.5;
}

.data-circle {
  position: absolute;
  border-radius: 50%;
  border: 2px solid rgba(43, 93, 224, 0.5);
  animation: pulseCircle 15s infinite ease-in-out;
  box-shadow: 0 0 15px rgba(43, 93, 224, 0.3);
}

.circle1 {
  width: 300px;
  height: 300px;
  top: 20%;
  left: 10%;
  animation-delay: 0s;
}

.circle2 {
  width: 200px;
  height: 200px;
  top: 50%;
  right: 15%;
  animation-delay: 5s;
}

.circle3 {
  width: 150px;
  height: 150px;
  bottom: 15%;
  left: 30%;
  animation-delay: 10s;
}

.data-flow {
  position: absolute;
  height: 3px;
  background: linear-gradient(90deg, transparent, rgba(64, 114, 245, 0.7), transparent);
  animation: dataFlow 8s infinite linear;
  box-shadow: 0 0 10px rgba(43, 93, 224, 0.4);
}

.flow1 {
  width: 40%;
  top: 30%;
  left: 0;
}

.flow2 {
  width: 30%;
  top: 60%;
  right: 0;
  animation-delay: 3s;
}

.flow3 {
  width: 25%;
  bottom: 25%;
  left: 20%;
  animation-delay: 6s;
}

.data-grid {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background-image: 
    linear-gradient(rgba(43, 93, 224, 0.1) 1px, transparent 1px),
    linear-gradient(90deg, rgba(43, 93, 224, 0.1) 1px, transparent 1px);
  background-size: 50px 50px;
  opacity: 0.5;
}

@keyframes pulseCircle {
  0%, 100% { transform: scale(1); opacity: 0.6; border-color: rgba(43, 93, 224, 0.5); }
  50% { transform: scale(1.2); opacity: 0.4; border-color: rgba(64, 114, 245, 0.7); }
}

@keyframes dataFlow {
  0% { transform: translateX(-100%); opacity: 0; }
  50% { opacity: 1; box-shadow: 0 0 20px rgba(43, 93, 224, 0.6); }
  100% { transform: translateX(100%); opacity: 0; }
}

/* 第三页 - 市场脉冲 */
.finance-bg-animation.third {
  opacity: 0.5;
}

.market-pulse {
  position: absolute;
  border-radius: 50%;
  background-color: rgba(43, 93, 224, 0.2);
  transform: scale(0);
  animation: marketPulse 12s infinite ease-out;
  border: 1px solid rgba(43, 93, 224, 0.3);
}

.pulse1 {
  width: 300px;
  height: 300px;
  top: 20%;
  left: 50%;
  animation-delay: 0s;
}

.pulse2 {
  width: 400px;
  height: 400px;
  top: 40%;
  left: 30%;
  animation-delay: 4s;
}

.pulse3 {
  width: 500px;
  height: 500px;
  bottom: 10%;
  right: 20%;
  animation-delay: 8s;
}

.market-chart {
  position: absolute;
  width: 50%;
  height: 30%;
  bottom: 10%;
  left: 5%;
  border-top: 2px solid rgba(43, 93, 224, 0.4);
  background-image: 
    linear-gradient(90deg, transparent, rgba(43, 93, 224, 0.3) 2px, transparent 2px),
    linear-gradient(rgba(43, 93, 224, 0.2) 1px, transparent 1px);
  background-size: 40px 20px;
  opacity: 0.7;
  box-shadow: 0 0 15px rgba(43, 93, 224, 0.2);
}

.market-symbols {
  position: absolute;
  width: 100%;
  height: 100%;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: center;
  opacity: 0.25;
}

.market-symbols span {
  font-size: 3.5rem;
  color: rgba(43, 93, 224, 0.7);
  margin: 2rem;
  animation: floatSymbol 10s infinite ease-in-out;
  opacity: 0.5;
  text-shadow: 0 0 10px rgba(43, 93, 224, 0.5);
}

.market-symbols span:nth-child(1) { animation-delay: 0s; }
.market-symbols span:nth-child(2) { animation-delay: 2s; }
.market-symbols span:nth-child(3) { animation-delay: 4s; }
.market-symbols span:nth-child(4) { animation-delay: 6s; }
.market-symbols span:nth-child(5) { animation-delay: 8s; }

@keyframes marketPulse {
  0% { transform: scale(0); opacity: 0.7; box-shadow: 0 0 5px rgba(43, 93, 224, 0.3); }
  50% { opacity: 0.2; box-shadow: 0 0 30px rgba(43, 93, 224, 0.5); }
  100% { transform: scale(3); opacity: 0; box-shadow: 0 0 0 rgba(43, 93, 224, 0); }
}

@keyframes floatSymbol {
  0%, 100% { transform: translateY(0) rotate(0deg); text-shadow: 0 0 10px rgba(43, 93, 224, 0.5); }
  50% { transform: translateY(-20px) rotate(5deg); text-shadow: 0 0 20px rgba(43, 93, 224, 0.8); }
}

/* 添加架构显示样式 */
.detected-arch {
  display: inline-block;
  font-size: 0.9em;
  margin-left: 5px;
}
</style>
