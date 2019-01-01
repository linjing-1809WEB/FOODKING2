//引入vue模块  和vue的路由器模块
import Vue from 'vue'
import Router from 'vue-router'

//引入固定组件
//主视图，这些组件中可以另外引入子组件
import Index from './views/Index'
import About from './views/About'
import News from './views/News'
import Product from './views/Product'
import Join from './views/Join'
import Member from './views/Member'
import NotFound from './views/NotFound'


Vue.use(Router)

//设置了路由字典并创建了路由器
export default new Router({
  routes: [
    {path:'/',component:Index},
    {path:'/index',component:Index},
    {path:'/about',component:About},
    {path:'/news',component:News},
    {path:'/product',component:Product},
    {path:'/join',component:Join},
    {path:'/member',component:Member},
    {path:'/*',component:NotFound}
  ]
})
