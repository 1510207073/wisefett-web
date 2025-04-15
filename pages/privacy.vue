<template>
    <div class="legal-page container">
      <!-- Remove the back link -->
      <!-- <NuxtLink to="/" class="back-link">&larr; 返回首页</NuxtLink> -->
      <h1>隐私政策</h1>
      <p>最后更新日期：{{ new Date().toLocaleDateString('zh-CN') }}</p>
  
      <section>
        <h2>1. 我们收集的信息</h2>
        <p>我们可能会收集您在使用本服务时提供的信息，例如您的电子邮件地址（如果适用）。我们还可能收集匿名使用数据以改进服务。</p>
        <p>WiseFett 应用本身在本地运行，核心处理不依赖于将您的个人投资数据发送到我们的服务器。</p>
      </section>
  
      <section>
        <h2>2. 信息的使用</h2>
        <p>我们收集的信息主要用于：</p>
        <ul>
          <li>提供、维护和改进本服务；</li>
          <li>与您沟通，例如回复您的查询或发送服务更新；</li>
          <li>分析使用情况以了解用户如何与本服务互动。</li>
        </ul>
      </section>
  
      <section>
        <h2>3. 信息共享</h2>
        <p>我们不会将您的个人信息出售或出租给第三方。我们仅在以下情况下共享信息：</p>
        <ul>
          <li>遵守法律义务；</li>
          <li>保护 WiseFett 的权利或财产；</li>
          <li>防止或调查与服务相关的可能的不当行为；</li>
          <li>保护服务用户或公众的人身安全。</li>
        </ul>
      </section>
  
      <section>
        <h2>4. 数据安全</h2>
        <p>我们采取合理的措施保护您的信息免遭未经授权的访问、使用或披露。但是，没有任何通过互联网传输或电子存储的方法是 100% 安全的。</p>
        <p>由于 WiseFett 主要在本地运行，您的核心投资数据通常保留在您自己的设备上，这增强了数据安全性。</p>
      </section>
      
      <section>
          <h2>5. 第三方服务</h2>
          <p>本服务可能包含指向非我们运营的其他网站的链接。如果您点击第三方链接，您将被引导至该第三方的网站。我们强烈建议您查看您访问的每个网站的隐私政策。</p>
          <p>我们无法控制任何第三方网站或服务的内容、隐私政策或做法，也不承担任何责任。</p>
      </section>
  
      <section>
        <h2>6. 政策变更</h2>
        <p>我们可能会不时更新我们的隐私政策。我们将通过在此页面上发布新的隐私政策来通知您任何更改。建议您定期查看本隐私政策以了解任何更改。</p>
      </section>
  
      <section>
        <h2>7. 联系我们</h2>
        <p>如果您对本隐私政策有任何疑问，请联系我们。</p>
      </section>
    </div>
  </template>
  
  <script setup>
  // 可以添加任何需要的逻辑
  </script>
  
  <style scoped>
  .legal-page {
    padding: 40px 20px;
    max-width: 800px;
    margin: 40px auto; 
    /* Remove explicit background, inherit from body (dark) */
    /* background-color: #fff; */
    color: var(--light-text, #ffffff); /* Use light text */
    border-radius: 8px;
    /* Remove shadow as it doesn't look good on dark bg */
    /* box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); */
  }
  
  .legal-page h1 {
    text-align: center;
    margin-bottom: 30px;
    color: var(--secondary-color, #2B5DE0); /* Keep title color */
  }
  
  .legal-page h2 {
    margin-top: 30px;
    margin-bottom: 15px;
    border-bottom: 1px solid rgba(255, 255, 255, 0.2); /* Light border for dark bg */
    padding-bottom: 5px;
    color: #cccccc; /* Lighter heading color */
  }
  
  .legal-page p, .legal-page li {
    line-height: 1.7;
    margin-bottom: 15px;
    color: #dddddd; /* Lighter text color */
  }
  
  .legal-page ul {
      list-style: disc;
      padding-left: 20px;
      margin-bottom: 15px;
  }
  
  /* Remove back link styles as link is removed */
  /*
  .back-link { ... }
  .back-link:hover { ... }
  */
  
  section {
    margin-bottom: 20px;
  }
  </style>