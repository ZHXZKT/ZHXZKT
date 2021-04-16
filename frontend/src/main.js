import Vue from 'vue'
import App from './App.vue'
import axios from 'axios'
axios.defaults.withCredentials = true
axios.defaults.xsrfHeaderName = 'X-CSRFTOKEN'
axios.defaults.xsrfCookieName = 'csrftoken'

// 封装axios请求，baseURL为后端服务器地址
// 使用例子如下
// this.$axios
//   .post('/testapi/', json_data)
//   .then(function (res) {
//      console.log(res)
//   })
Vue.prototype.$axios = axios.create({
  baseURL: process.env.VUE_APP_API_BASE,
  headers: {
    'Content-Type': 'application/x-www-form-urlencoded'
  }
})

Vue.config.productionTip = false

new Vue({
  render: h => h(App)
}).$mount('#app')
