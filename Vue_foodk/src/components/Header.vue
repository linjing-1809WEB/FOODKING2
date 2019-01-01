<template>
<!-- 页面头部00 -->
<div class="my_header">
  <div class="row">
    <div class="col-4">
        <router-link to="Index">
        <img class="img-fluid m-0" src="../img/index_base/logo.png">
        </router-link>
    </div>
    <div class="col-8">
    <div class="row mt-3 mr-5">
        <!-- 产品搜索 -->
        <div class="col-3 d-flex justify-content-start p-0">
        <div class="h-75 my_smallsize">
        <input class="my_input" placeholder="产品搜索">
        <router-link class="my_suba" to="Product">GO</router-link>
        </div>
        
        </div>
        <!-- 第一层选项 -->
        <div class="col-9 p-1">
        <ul class="list-unstyled d-flex justify-content-end my_smallsize text-white">
            <li>语言/Language：
            <select name="dp" class="my_select">
                <option value="1">繁体中文</option>
                <option value="2">简体中文</option>
                <option value="3">English</option>
            </select>
            </li>
            <li><a class="text-white" href="javascript:;"> <b>|</b> 粉丝专页 </a></li>
            <li><a class="text-white" href="javascript:;"> <b>|</b> 购物车(0) </a></li>
            <li><a class="text-white" href="login.html"> <b>|</b>  会员中心 </a></li>
        </ul>
        </div>
    </div>
    <!-- 第二层选项 about   news   Onlineshop   Franchisee    Contact  -->
    <div class="row mt-4 mr-4 pr-2">
        <div class="col-12">
        <ul class="nav nav-justified pt-2">
            <li class="nav-item text-right m-0">
            <router-link class="nav-link text-white p-0" to="About">关于美味王
                <div class="my_font">About</div>
            </router-link>
            </li>
            <li class="nav-item text-right m-0">
            <router-link class="nav-link  text-white p-0" to="News">最新消息
                <div class="my_font">News</div>
            </router-link>
            </li>
            <li class="nav-item text-right m-0">
            <router-link class="nav-link  text-white p-0" to="Shop">线上购物
                <div class="my_font ">Online shop</div>
            </router-link>
            </li>
            <li class="nav-item text-right m-0">
            <router-link class="nav-link  text-white p-0" to="Join">加盟专区
                <div class="my_font">Franchisee</div>
            </router-link>
            </li>
            <li class="nav-item text-right m-0">
            <a class="nav-link text-white p-0" href="javascript:;">联系我们
                <div class="my_font">Contact</div>
            </a>
            </li>
        </ul>
        </div>
    </div>
    </div>
  </div>
</div>

</template>

<script>
  export default {
    data(){
      return {
        kwords:""
      }
    },
    methods:{
      search(){
        this.$router.push("/products/"+this.kwords);
      }
    }
  }
</script>

<style scoped>
.my_input{
    margin:0;
    color:black;
    padding:5px 3px;
    width:100px;height:26px;
    display:inline-block;
    font-size:0.9rem;
    background:rgba(255, 255, 255, 0.8);
    border:0.5px solid #1b1e21;
}
.my_suba{
    margin:0;
    color:white;
    padding:2.2px 0;
    width:26px;height:26px;
    display:inline-block;
    font-size:12px;
    background:gray;
}
.my_select{
    margin:0;padding:0 1px 0;
    background:rgba(169,41,64,0.9);
    font-size:0.9rem;
    width:5rem;
}
.my_smallsize{
    font-family:'Century Gothic';
    font-size:0.9rem;
}
.my_font{
    font-family:'Century Gothic';
    font-size:0.9rem;
    color:#ccc;
}
ul li a{text-decoration:none;}

.my_header>div>div:nth-child(2)>div:first-child{height:35px;}
.my_header>div>div:nth-child(2)>div:last-child{height:50px;}

/* 页面响应式  min-width:1000px-->大屏！ 和  max-width:1000px-->小屏  两种屏幕大小 */
@media screen and (min-width:1000px){
.my_header{
    width: 100%;
    height:150px;
    display:block;
}
}
@media screen and (max-width:1000px){
.my_header{display:none;}
}
</style>