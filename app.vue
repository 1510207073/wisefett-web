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
            <li><a href="#hero" @click.prevent="navigateToSection('hero')">首页</a></li>
            <li><a href="#value" @click.prevent="navigateToSection('value')">简介</a></li>
            <li><a href="#download" @click.prevent="navigateToSection('download')">下载</a></li>
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
        :class="['indicator-dot', { active: currentSection === section }]"
        @click="navigateToSection(section)"
      ></div>
    </div>

    <el-carousel
      ref="carouselRef"
      height="calc(100vh - 80px)"
      direction="vertical"
      :autoplay="false"
      :loop="false"
      indicator-position="none"
      @change="handleCarouselChange"
      class="main-carousel"
    >
      <el-carousel-item>
        <section id="hero" class="section hero-section" :class="{ active: currentSection === 'hero' }" data-section="hero">
          <div class="container">
            <div class="hero-content animate-fade-in">
              <h2>WiseFett - AI 投资决策增强工具</h2>
              <p>结合技术分析和人工智能，帮助投资者做出更明智的投资决策</p>
              <div class="cta-buttons">
                <a href="#download" class="btn primary scroll-to" data-section="download">立即下载</a>
                <a href="https://www.yuque.com/u12072733/os76d6/hr1gcwfipegvslim?singleDoc#" class="btn outline" target="_blank">查看文档</a>
              </div>
            </div>
          </div>
        </section>
      </el-carousel-item>

      <el-carousel-item>
        <section id="value" class="section value-section" :class="{ active: currentSection === 'value' }" data-section="value">
          <div class="container">
            <h2 class="section-title text-center mb-2">产品特点</h2>
            <div class="value-wrapper">
              <div class="value-item">
                <div class="value-icon-container">
                  <svg class="value-icon" width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="30" cy="30" r="30" fill="rgba(43, 93, 224, 0.08)"/>
                    <path d="M20 35H30M20 25H40M20 30H35" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M15 20V40C15 41.1046 15.8954 42 17 42H43C44.1046 42 45 41.1046 45 40V20C45 18.8954 44.1046 18 43 18H17C15.8954 18 15 18.8954 15 20Z" stroke="#2B5DE0" stroke-width="2"/>
                  </svg>
                </div>
                <h3>灵活定制</h3>
                <p>自由组合多种K线以及技术指标，定制属于自己的分析策略</p>
              </div>
              <div class="value-item">
                <div class="value-icon-container">
                  <svg class="value-icon" width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="30" cy="30" r="30" fill="rgba(43, 93, 224, 0.08)"/>
                    <path d="M30 18V22" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <path d="M38.5 20.5L36 24" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <path d="M44 29H40" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <path d="M38.5 37.5L36 34" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <path d="M30 40V42" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <path d="M21.5 37.5L24 34" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <path d="M16 29H20" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <path d="M21.5 20.5L24 24" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <circle cx="30" cy="30" r="8" stroke="#2B5DE0" stroke-width="2"/>
                  </svg>
                </div>
                <h3>智能分析</h3>
                <p>结合AI技术，提供深度市场洞察</p>
              </div>
              <div class="value-item">
                <div class="value-icon-container">
                  <svg class="value-icon" width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="30" cy="30" r="30" fill="rgba(43, 93, 224, 0.08)"/>
                    <rect x="15" y="18" width="30" height="24" rx="2" stroke="#2B5DE0" stroke-width="2"/>
                    <path d="M15 25H45" stroke="#2B5DE0" stroke-width="2"/>
                    <circle cx="22" cy="22" r="1.5" fill="#2B5DE0"/>
                    <circle cx="27" cy="22" r="1.5" fill="#2B5DE0"/>
                    <circle cx="32" cy="22" r="1.5" fill="#2B5DE0"/>
                    <path d="M20 32L25 36L30 30L40 34" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                  </svg>
                </div>
                <h3>简洁直观</h3>
                <p>友好的用户界面，降低学习门槛</p>
              </div>
              <div class="value-item">
                <div class="value-icon-container">
                  <svg class="value-icon" width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="30" cy="30" r="30" fill="rgba(43, 93, 224, 0.08)"/>
                    <path d="M30 20V40" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <path d="M40 30L20 30" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                    <circle cx="30" cy="30" r="15" stroke="#2B5DE0" stroke-width="2"/>
                    <path d="M30 15C28.0222 15 26.0888 15.4106 24.3268 16.1797C22.5647 16.9489 20.9988 18.0617 19.7574 19.4385C18.5161 20.8153 17.5297 22.408 16.8687 24.1218C16.2077 25.8356 15.8866 27.6392 15.8866 29.4643C15.8866 31.2893 16.2077 33.0929 16.8687 34.8067C17.5297 36.5205 18.5161 38.1132 19.7574 39.4901C20.9988 40.8669 22.5647 41.9797 24.3268 42.7488C26.0888 43.5179 28.0222 43.9286 30 43.9286" stroke="#2B5DE0" stroke-width="2" stroke-linecap="round"/>
                  </svg>
                </div>
                <h3>本地运行</h3>
                <p>数据安全，无需担心隐私泄露</p>
              </div>
            </div>
          </div>
        </section>
      </el-carousel-item>

      <el-carousel-item>
        <section id="download" class="section download-section" :class="{ active: currentSection === 'download' }" data-section="download">
          <div class="container">
            <h2 class="section-title text-center mb-3">立即下载</h2>
            
            <div class="download-options">
              <div class="download-card card">
                <h3 class="mb-3">Windows</h3>
                <p class="mb-2">Windows 10 64位及以上</p>
                <a href="#windows-download-link" class="btn secondary">下载 Windows 版本</a>
              </div>
              <div class="download-card card">
                <h3 class="mb-3">macOS</h3>
                <p class="mb-2">macOS 10.15及以上</p>
                <a :href="downloadUrl" class="btn secondary download-with-select">
                  下载 macOS 版本
                  <span class="chip-select-wrapper">
                    - <select v-model="selectedMacVersion" class="inline-select-btn">
                      <option value="x64">Intel 版本</option>
                      <option value="arm64">Apple Silicon 版本</option>
                    </select>
                  </span>
                </a>
              </div>
            </div>
          </div>
        </section>
      </el-carousel-item>
    </el-carousel>

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
import { ref, computed, onMounted, onUnmounted } from 'vue';
import { ElCarousel, ElCarouselItem } from 'element-plus';
import 'element-plus/dist/index.css';

const carouselRef = ref(null);
const currentSection = ref('hero');
const sections = ['hero', 'value', 'download'];
const selectedMacVersion = ref('x64');
const showBetaModal = ref(false);
let isScrolling = false; // 防止滚动事件过于频繁
let scrollTimeout;
let lastScrollTime = 0;
const scrollCooldown = 1500; // 滚动冷却时间（毫秒）

const downloadUrl = computed(() => {
  const baseUrl = 'https://github.com/bitrhythm/wisefett/releases/download/v0.1.0/wisefett-macos-';
  return `${baseUrl}${selectedMacVersion.value}.dmg`;
});

const handleCarouselChange = (index) => {
  currentSection.value = sections[index];
  // 当轮播图切换时，设置滚动锁定
  isScrolling = true;
  lastScrollTime = Date.now();
  
  // 设置一个更长的冷却时间
  clearTimeout(scrollTimeout);
  scrollTimeout = setTimeout(() => {
    isScrolling = false;
  }, scrollCooldown);
};

// 导航到指定部分
const navigateToSection = (sectionId) => {
  // 如果在冷却时间内，不执行导航
  if (isScrolling && Date.now() - lastScrollTime < scrollCooldown) {
    return;
  }
  
  const index = sections.indexOf(sectionId);
  if (index !== -1 && carouselRef.value) {
    // 设置滚动锁定
    isScrolling = true;
    lastScrollTime = Date.now();
    
    // 执行导航
    carouselRef.value.setActiveItem(index);
    
    // 延迟释放滚动锁定
    clearTimeout(scrollTimeout);
    scrollTimeout = setTimeout(() => {
      isScrolling = false;
    }, scrollCooldown);
  }
};

// 处理鼠标滚轮事件（使用节流控制）
const handleWheel = (e) => {
  // 如果已经在滚动中或者冷却时间内，忽略滚轮事件
  if (isScrolling) {
    e.preventDefault();
    return;
  }
  
  const now = Date.now();
  if (now - lastScrollTime < scrollCooldown) {
    e.preventDefault();
    return;
  }
  
  // 防止默认滚动行为
  e.preventDefault();
  
  // 设置滚动状态
  isScrolling = true;
  lastScrollTime = now;
  
  const currentIndex = sections.indexOf(currentSection.value);
  let nextIndex = currentIndex;
  
  // 确定滚动方向，只移动一页
  if (e.deltaY > 0 && currentIndex < sections.length - 1) {
    // 向下滚动
    nextIndex = currentIndex + 1;
  } else if (e.deltaY < 0 && currentIndex > 0) {
    // 向上滚动
    nextIndex = currentIndex - 1;
  }
  
  // 只有当需要切换页面时才进行导航
  if (nextIndex !== currentIndex) {
    carouselRef.value.setActiveItem(nextIndex);
  }
  
  // 设置冷却时间
  clearTimeout(scrollTimeout);
  scrollTimeout = setTimeout(() => {
    isScrolling = false;
  }, scrollCooldown);
};

onMounted(() => {
  // 添加鼠标滚轮事件监听，使用捕获模式
  window.addEventListener('wheel', handleWheel, { passive: false, capture: true });
  
  // 为触摸屏添加滑动支持
  let touchStartY = 0;
  let touchStartTime = 0;
  
  const handleTouchStart = (e) => {
    if (isScrolling) return;
    touchStartY = e.touches[0].clientY;
    touchStartTime = Date.now();
  };
  
  const handleTouchEnd = (e) => {
    // 如果已经在滚动中或冷却时间内，忽略触摸事件
    if (isScrolling) return;
    
    const now = Date.now();
    if (now - lastScrollTime < scrollCooldown) return;
    
    const touchEndY = e.changedTouches[0].clientY;
    const touchEndTime = now;
    const diff = touchStartY - touchEndY;
    const timeDiff = touchEndTime - touchStartTime;
    
    // 只有当滑动距离足够大且速度足够快时才触发切换
    if (Math.abs(diff) < 50 || timeDiff > 300) return;
    
    // 设置滚动状态
    isScrolling = true;
    lastScrollTime = now;
    
    const currentIndex = sections.indexOf(currentSection.value);
    let nextIndex = currentIndex;
    
    // 确定滑动方向，只移动一页
    if (diff > 0 && currentIndex < sections.length - 1) {
      // 向上滑动 = 下一页
      nextIndex = currentIndex + 1;
    } else if (diff < 0 && currentIndex > 0) {
      // 向下滑动 = 上一页
      nextIndex = currentIndex - 1;
    }
    
    // 只有当需要切换页面时才进行导航
    if (nextIndex !== currentIndex) {
      carouselRef.value.setActiveItem(nextIndex);
    }
    
    // 设置冷却时间
    clearTimeout(scrollTimeout);
    scrollTimeout = setTimeout(() => {
      isScrolling = false;
    }, scrollCooldown);
  };
  
  document.addEventListener('touchstart', handleTouchStart, { passive: true });
  document.addEventListener('touchend', handleTouchEnd, { passive: true });
  
  // 修复 "立即下载" 按钮点击事件
  document.querySelector('.scroll-to')?.addEventListener('click', (e) => {
    e.preventDefault();
    navigateToSection('download');
  });
});

onUnmounted(() => {
  // 清除事件监听器
  window.removeEventListener('wheel', handleWheel, { capture: true });
  
  // 清除定时器
  clearTimeout(scrollTimeout);
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
  scroll-behavior: smooth;
  scroll-snap-type: y mandatory;
  height: 100%;
  overflow-y: scroll;
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
}

a {
  text-decoration: none;
  color: var(--secondary-color);
}

.app-container {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

.container {
  width: 90%;
  max-width: 1200px;
  margin: 0 auto;
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

.btn {
  display: inline-block;
  padding: 12px 24px;
  border-radius: 30px;
  font-weight: 600;
  transition: all 0.3s;
  border: none;
  cursor: pointer;
  text-align: center;
}

.primary {
  background-color: var(--secondary-color);
  color: var(--light-text);
  box-shadow: 0 4px 6px rgba(43, 93, 224, 0.2);
}

.primary:hover {
  background-color: #1d4ad1;
  transform: translateY(-3px);
  box-shadow: 0 6px 12px rgba(43, 93, 224, 0.3);
}

.secondary {
  background-color: rgba(43, 93, 224, 0.1);
  color: var(--secondary-color);
}

.secondary:hover {
  background-color: rgba(43, 93, 224, 0.2);
}

.outline {
  background-color: transparent;
  border: 2px solid var(--secondary-color);
  color: var(--secondary-color);
}

.outline:hover {
  background-color: rgba(43, 93, 224, 0.1);
}

.card {
  background-color: var(--card-bg);
  border-radius: 12px;
  padding: 30px;
  box-shadow: var(--shadow);
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
  font-family: 'Montserrat', sans-serif;
  font-weight: 700;
  font-size: 32px;
  letter-spacing: 1px;
  color: var(--light-text);
  margin: 0;
  position: relative;
  transition: all 0.3s ease;
  text-transform: none;
}

.logo-text-highlight {
  font-weight: 800;
  color: var(--secondary-color);
  position: relative;
  font-style: italic;
  letter-spacing: 2px;
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
  top: -8px;
  right: -25px;
  font-size: 12px;
  color: var(--secondary-color);
  background-color: var(--light-text);
  padding: 2px 5px;
  border-radius: 4px;
  font-weight: bold;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  transform: rotate(10deg);
  transition: all 0.3s ease;
}

.logo-link:hover .logo-badge {
  transform: rotate(15deg) scale(1.1);
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
  color: var(--secondary-color) !important;
  font-weight: 600 !important;
}

/* 首页部分 */
.hero-section {
  background: radial-gradient(circle at center, #212121 0%, #121212 70%);
  color: var(--light-text);
  text-align: center;
}

.hero-content {
  max-width: 800px;
  margin: 0 auto;
}

.hero-content h2 {
  font-size: 42px;
  margin-bottom: 20px;
  font-weight: 700;
}

.hero-content p {
  font-size: 20px;
  max-width: 600px;
  margin: 0 auto 40px;
  opacity: 0.9;
}

.cta-buttons {
  display: flex;
  justify-content: center;
  gap: 20px;
}

/* 简介部分 */
.value-section {
  background-color: #181818;
  color: var(--light-text);
}

.section-title {
  font-size: 36px;
  background: linear-gradient(to right, #fff, #ddd);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  margin-bottom: 15px;
}

.section-subtitle {
  font-size: 18px;
  color: #bbb;
  max-width: 700px;
  margin-left: auto;
  margin-right: auto;
}

.value-wrapper {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 30px;
  margin-top: 40px;
  width: 100%;
}

.value-item {
  background-color: rgba(40, 40, 40, 0.5);
  border-radius: 12px;
  padding: 30px;
  box-shadow: 0 4px 30px rgba(0, 0, 0, 0.3);
  text-align: center;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  display: flex;
  flex-direction: column;
  align-items: center;
  position: relative;
  overflow: hidden;
  z-index: 1;
  border: 1px solid rgba(255, 255, 255, 0.05);
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
  font-size: 22px;
  margin-bottom: 15px;
  color: var(--light-text);
  position: relative;
  display: inline-block;
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
  margin-bottom: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  transition: transform 0.3s ease;
}

.value-item:hover .value-icon-container {
  transform: scale(1.1);
}

.value-icon {
  width: 70px;
  height: 70px;
  margin: 0 auto;
  filter: drop-shadow(0 4px 6px rgba(43, 93, 224, 0.2));
  transition: filter 0.3s ease, transform 0.3s ease;
}

.value-item:hover .value-icon {
  filter: drop-shadow(0 8px 16px rgba(43, 93, 224, 0.4));
}

.value-item p {
  color: #bbb;
  line-height: 1.6;
}

/* 下载部分 */
.download-section {
  background: linear-gradient(135deg, #1a1a1a 0%, #0a0a0a 100%);
  color: var(--light-text);
}

.download-options {
  display: flex;
  justify-content: center;
  gap: 40px;
  flex-wrap: wrap;
  margin-top: 20px;
}

.download-card {
  background-color: rgba(40, 40, 40, 0.5);
  text-align: center;
  min-width: 300px;
  border: 1px solid rgba(255, 255, 255, 0.05);
  transition: all 0.3s ease;
}

.download-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4);
  border-color: rgba(43, 93, 224, 0.3);
}

.download-card h3 {
  font-size: 24px;
  color: var(--light-text);
}

.download-card p {
  color: #bbb;
}

.download-with-select {
  padding-right: 15px;
  position: relative;
  text-align: left;
  min-width: 250px;
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
  padding: 0 15px 0 0;
  appearance: none;
  -webkit-appearance: none;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='10' height='10' viewBox='0 0 24 24' fill='none' stroke='white' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right center;
}

.inline-select-btn:focus {
  outline: none;
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
.main-carousel {
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
</style>
