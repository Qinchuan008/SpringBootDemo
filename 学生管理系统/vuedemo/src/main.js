import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import axios from 'axios';

// 设置 Axios 为 Vue 的原型属性，使其在组件中可以通过 this.$axios 使用
Vue.prototype.$axios = axios;

// （可选）设置基础的请求URL
axios.defaults.baseURL = 'http://localhost:8080'; // 替换为你的API地址

Vue.config.productionTip = false

Vue.use(ElementUI);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
