//引入vue模块  和vue的路由器模块
import Vue from 'vue'
import Router from 'vue-router'

//引入固定组件
//主视图中的，这些组件中可以另外引入子组件
import Index from './views/Index'

import NotFound from './views/NotFound'

//组件中的  左侧内容固定
import Product from './components/ProLeft'
import Join from './components/JoinLeft'
import About from './components/AboutLeft'
import News from './components/NewsLeft'
import Member from './components/Member'

Vue.use(Router)

//设置了路由字典并创建了路由器
export default new Router({
  routes: [
    {path:'/',component:Index},
    {path:'/index',component:Index},
    {path:'/about',component:About},
    {path:'/news',component:News},
    {path:'/join',component:Join},
    {path:'/product',component:Product},
    {path:'/member/:method',component:Member},
    {path:'/*',component:NotFound}
  ]
})
