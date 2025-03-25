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
          <div class="slogan">增强型投资决策支持系统</div>
        </div>
        <nav class="navigation">
          <ul>
            <li><a href="#value">简介</a></li>
            <li><a href="#download">立即下载</a></li>
            <li><a href="https://www.yuque.com/u12072733/os76d6/hr1gcwfipegvslim?singleDoc#" target="_blank" class="doc-link">文档</a></li>
          </ul>
        </nav>
      </div>
      <div class="marquee-container">
        <div class="notice-content">
          <span class="notice-item" @click="showBetaModal = true">📢 内测公告：点击查看详细内容</span>
        </div>
      </div>
    </header>

    <main class="main-content">
      <section id="hero" class="hero-section gradient-bg">
        <div class="container">
          <div class="hero-content animate-fade-in">
            <h2>WiseFett - AI 股票分析工具</h2>
            <p>结合传统技术分析和人工智能技术，帮助投资者做出更明智的投资决策</p>
            <div class="cta-buttons">
              <a href="#download" class="btn primary">立即下载</a>
              <a href="https://www.yuque.com/u12072733/os76d6/hr1gcwfipegvslim?singleDoc#" class="btn outline" target="_blank">查看文档</a>
            </div>
          </div>
        </div>
      </section>

      <section id="value" class="value-section">
        <div class="container">
          <h2 class="section-title text-center mb-4">简介</h2>
          <div class="value-wrapper">
            <div class="value-item">
              <h3>灵活定制</h3>
              <p>自由组合多种K线以及技术指标，定制属于自己的分析策略</p>
            </div>
            <div class="value-item">
              <h3>智能分析</h3>
              <p>结合AI技术，提供深度市场洞察</p>
            </div>
            <div class="value-item">
              <h3>简洁直观</h3>
              <p>友好的用户界面，降低学习门槛</p>
            </div>
            <div class="value-item">
              <h3>本地运行</h3>
              <p>数据安全，无需担心隐私泄露</p>
            </div>
          </div>
        </div>
      </section>

      <section id="download" class="download-section">
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
              <a :href="macDownloadUrl" class="btn secondary download-with-select">
                下载 macOS 版本
                <span class="chip-select-wrapper">
                  - <select v-model="selectedMacVersion" class="inline-select-btn">
                    <option value="intel">Intel 芯片</option>
                    <option value="apple">Apple Silicon</option>
                  </select>
                </span>
              </a>
            </div>
          </div>
        </div>
      </section>
    </main>

    <footer class="footer">
      <div class="container">
        <div class="footer-content">
          <p class="copyright">Copyright © 2025 BitRhythm.</p>
          <!-- <div class="footer-links"> -->
            <!-- <a href="#" class="footer-link">隐私政策</a> -->
            <!-- <a href="#" class="footer-link">服务条款</a> -->
            <!-- <a href="#" class="footer-link">联系我们</a> -->
          <!-- </div> -->
        </div>
      </div>
    </footer>

    <!-- 弹窗 - 内测公告 -->
    <div class="modal" v-if="showBetaModal">
      <div class="modal-content">
        <div class="modal-header">
          <h3>内测公告</h3>
          <button class="close-button" @click="showBetaModal = false">&times;</button>
        </div>
        <div class="modal-body">
          <div class="beta-notice-box">
            <p>1、获取邀请码：内测期间需要邀请码才能注册使用。请发送邮件至 <a href="mailto:developer@wyld.cc">developer@wyld.cc</a> 申请邀请码，邮件主题请注明"WiseFett内测申请"。</p>
            <p>2、内测名额有限，请勿重复获取，禁止邀请码转卖，发现后将收回内测资格。</p>
            <p>3、内测版本仅支持老虎证券，请确认自己拥有老虎证券API资格。</p>
            <p>免责声明：WiseFett提供的分析和建议仅供参考，不构成投资建议。投资有风险，入市需谨慎。内测版本功能可能不完善，欢迎向我们反馈使用体验。</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed } from 'vue';

const showBetaModal = ref(false);
const selectedMacVersion = ref('intel');

const macDownloadUrl = computed(() => {
  return selectedMacVersion.value === 'intel' 
    ? '#intel-download-link' 
    : '#apple-silicon-download-link';
});
</script>

<style>
/* 头部样式 */
.header {
  background-color: var(--primary-color);
  color: var(--light-text);
  padding: 20px 0 0 0;
  box-shadow: var(--shadow);
  position: sticky;
  top: 0;
  z-index: 100;
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
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 1000;
}

.modal-content {
  background-color: white;
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
  color: var(--primary-color);
}

.close-button {
  background: none;
  border: none;
  font-size: 24px;
  cursor: pointer;
  color: var(--primary-color);
}

.modal-body {
  padding: 20px;
}

.modal .beta-notice-box,
.modal .security-notice-box {
  background-color: transparent;
  border-left: none;
  padding: 0;
}

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

.navigation a:hover::after {
  width: 100%;
}

.navigation a:hover {
  opacity: 1;
}

.doc-link {
  color: var(--secondary-color) !important;
  font-weight: 600 !important;
}

/* 主要内容样式 */
.main-content {
  flex: 1;
}

.hero-section {
  padding: 120px 0;
  text-align: center;
}

.gradient-bg {
  background: linear-gradient(135deg, var(--primary-color) 0%, #1a1a1a 100%);
  color: var(--light-text);
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

.features-section {
  padding: 80px 0;
}

.section-title {
  font-size: 32px;
  color: var(--primary-color);
}

.feature-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 30px;
  margin-top: 40px;
}

.feature-icon {
  font-size: 40px;
  margin-bottom: 20px;
  color: var(--secondary-color);
}

/* 下载部分 */
.download-section {
  padding: 80px 0;
  background-color: #f1f5f9;
}

.beta-notice-box {
  color: var(--secondary-color);
  font-weight: 500;
}

.security-notice-box {
  color: var(--secondary-color);
  font-weight: 500;
}

.security-list {
  list-style: disc;
  padding-left: 20px;
}

.download-options {
  display: flex;
  justify-content: center;
  gap: 40px;
  flex-wrap: wrap;
}

.download-card {
  text-align: center;
  min-width: 300px;
}

.download-card h3 {
  font-size: 24px;
  color: var(--primary-color);
}

.disclaimer-text {
  color: var(--secondary-color);
  font-weight: 500;
}

.download-with-select {
  padding-right: 15px;
  position: relative;
  text-align: left;
  min-width: 300px;
}

.download-with-select .chip-select-wrapper {
  opacity: 0.9;
  margin-left: 3px;
  font-weight: normal;
}

.btn .inline-select-btn {
  vertical-align: baseline;
  max-width: 130px;
  font-weight: normal;
  background-position: right 0px center;
}

/* 页脚样式 */
.footer {
  background-color: var(--primary-color);
  color: var(--light-text);
  padding: 30px 0;
}

.footer-content {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
}

.copyright {
  margin: 0;
}

.footer-links {
  display: flex;
  gap: 20px;
}

.footer-link {
  color: var(--light-text);
  opacity: 0.8;
  transition: opacity 0.3s;
}

.footer-link:hover {
  opacity: 1;
  color: var(--secondary-color);
}

/* 响应式设计 */
@media (max-width: 768px) {
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
}

/* 核心价值部分 */
.value-section {
  padding: 80px 0;
  background-color: #f1f5f9;
}

.value-wrapper {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 30px;
  margin-top: 40px;
}

.value-item {
  background-color: var(--card-bg);
  border-radius: 8px;
  padding: 30px;
  box-shadow: var(--shadow);
  text-align: center;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.value-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
}

.value-item h3 {
  font-size: 22px;
  margin-bottom: 15px;
  color: var(--primary-color);
}

.beta-notice-box {
  background-color: rgba(43, 93, 224, 0.05);
  border-left: 4px solid var(--secondary-color);
  padding: 20px;
  border-radius: 4px;
}

.security-notice-box {
  background-color: rgba(43, 93, 224, 0.05);
  border-left: 4px solid var(--secondary-color);
  padding: 20px;
  border-radius: 4px;
}

.security-list li {
  margin-bottom: 10px;
}

.disclaimer-text {
  font-size: 14px;
  text-align: center;
  opacity: 0.8;
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

.inline-select {
  border: none;
  background: transparent;
  font-size: inherit;
  font-family: inherit;
  color: var(--secondary-color);
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
  padding: 0 15px 0 0;
  appearance: none;
  -webkit-appearance: none;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='10' height='10' viewBox='0 0 24 24' fill='none' stroke='%232B5DE0' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right center;
  text-decoration: underline;
  text-underline-offset: 4px;
}

.inline-select:hover {
  opacity: 0.8;
}

.inline-select:focus {
  outline: none;
}

.btn .chip-select-wrapper {
  font-size: 0.95em;
  vertical-align: baseline;
}

.btn .inline-select-btn {
  vertical-align: baseline;
  max-width: 130px;
}
</style>
