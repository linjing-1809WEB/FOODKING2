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


Vue.filter("datetimeFilter",function(val){
  //val 当前日期对象
  //1:新创建日期对象
  var data = new Date(val);
  //2:获取年月日时分秒
  var y = data.getFullYear();
  var m = data.getMonth()+1;
  var d = data.getDate();
  //3:拼接字符串
  m<10&&(m="0"+m);
  d<10&&(d="0"+d);
  return `${y}-${m}-${d}`;
})

//创建根组件new Vue 代替div#app
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
