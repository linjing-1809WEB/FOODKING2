<template>
<!-- 页面头部00 -->
<div class="my_header my_long_height0">
  <div class="row">
    <div class="col-4">
    <a href="index.html">
    <img class="img-fluid my_long_height0 m-0" src="../img/index_base/logo.png">
    </a>
    </div>
    <div class="col-8">
    <div class="row mt-3 mr-5 my_long_height1">
        <!-- 产品搜索 -->
        <div class="col-3 d-flex justify-content-start p-0">
        <div class="h-75 my_smallsize">
        <input class="my_input" placeholder="产品搜索">
        <a class="my_suba" href="product.html">GO</a>
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
        <ul class="nav nav-justified my_long_height2 pt-2">
            <li class="nav-item text-right m-0">
            <a class="nav-link text-white p-0" href="page01.1_about.html">关于美味王
                <div class="my_fircolor my_smallsize">About</div>
            </a>
            </li>
            <li class="nav-item text-right m-0">
            <a class="nav-link  text-white p-0" href="page02.1_news.html">最新消息
                <div class="my_fircolor my_smallsize">News</div>
            </a>
            </li>
            <li class="nav-item text-right m-0">
            <a class="nav-link  text-white p-0" href="page03.1_shop.html">线上购物
                <div class="my_fircolor my_smallsize ">Online shop</div>
            </a>
            </li>
            <li class="nav-item text-right m-0">
            <a class="nav-link  text-white p-0" href="page04.1_join.html">加盟专区
                <div class="my_fircolor my_smallsize">Franchisee</div>
            </a>
            </li>
            <li class="nav-item text-right m-0">
            <a class="nav-link text-white p-0" href="page05_contact.html">联系我们
                <div class="my_fircolor my_smallsize">Contact</div>
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
/* 第一个header */
.my_wholebg{
    background:#fff url('../img/index_base/contentContainerBG.jpg') no-repeat;
    background-size:100%,3rem;
    box-shadow:0 0 20px black;
}
.my_header{width:100%;}
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

/* ************************公共样式***************************** */
/* 字体大小 */
.my_smallsize{
    font-family:'Century Gothic';
    font-size:0.9rem;
}
.my_ms_size{
    font-family:'Century Gothic';
    font-size:0.5rem;
}
.my_msli_size{
    font-family:'Century Gothic';
    font-size:0.8rem;
}

/* 字体颜色 */
.my_fircolor{color:#ccc;}
.my_thcolor{color:#999;}
.my_sedcolor{color:#777;}

/* a标签颜色 和 鼠标悬浮时样式 */
.my_secolor{color:rgba(119,119,119,1);}
.my_secolor:hover{
    text-decoration: none;
    color:rgba(119,119,119,0.7);
}

/* 背景颜色 */
.my_bgcolor{background:rgba(169,41,64,0.9);}
.my_bg2color{background:#8c0024;}
.my_bg3color{background:rgba(255,255,255,0.3);margin:auto 1rem;}

/* 决不能就这样写  后面再确定权值！！！ 页面高度 */
.my_long_height0{
    height:150px !important;
}
.my_long_height1{
    height:35px !important;
}
.my_long_height2{
    height:50px !important;
}
.my_long_height3{
    height:55px !important;
}
.my_long_height4{
    height:160px !important;
}
.my_long_height5{
    height:20px !important;
    width:20px !important;
    margin:0;
}
.my_long_height6{
    height:30px !important;
    width:200px !important;
}

/* 页面响应式  min-width:1000px-->大屏！ 和  max-width:1000px-->小屏  两种屏幕大小 */
@media screen and (min-width:1000px){
    .my_header{
        width: 100%;
        height:8rem;
        display:block;
    }
    .my_footer{
        width: 100%;
        height:14rem;
        display:block;
    } 
    .my_header_01{
        display:none;
    }
    .my_footer_01{
        display:none;
    }
}
@media screen and (max-width:1000px){
    .my_header{
        display:none;
    }
    .my_footer{
        display: none;
    }
    .my_header_01{
        width:100%;
        height:3.8rem;
        position:fixed;
        z-index:10;
        top:0;
    }
    .my_wholebg{background:rgba(255,255,255,0.3);}
    .my_footer_01{
        width:100%;
        height:3.5rem;
        position:fixed;
        z-index:10;
        bottom:0;
    }
}
</style>