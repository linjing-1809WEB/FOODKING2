//作用全局！！！
//引入vue axios 第三方模块
import Vue from 'vue'
import axios from 'axios'
Vue.config.productionTip = false
Vue.prototype.axios=axios;

//引入路由器 即引入所有固定组件
import router from './router'

//这个是根组件，所有固定组件都会在这个组件中的占位符中引入
//在这个根组件中已经引入头尾子组件了
import App from './App.vue'

// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import 'mint-ui/lib/style.css'
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'



//创建根组件new Vue 代替div#app
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
