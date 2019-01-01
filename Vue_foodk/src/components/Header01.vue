<template>
<!-- 页面头部01 -->
<div class="my_header_01 my_long_height3 my_bg2color">
<!-- LOGO图标 -->
  <div class="">
    <!-- <a href="index.html"><img src="../img/index_base/logo_rwd.png"></a> -->
    <!-- <button></button> -->

    <div :class="{'d-none':navHide}">
        <ul>
            <li><a href="page01.1_about.html">关于美味王</a></li>
            <li><a href="page02.1_news.html">最新消息</a></li>
            <li><a href="page03_shop.html">线上购物</a></li>
            <li><a href="page04.1_join.html">加盟专区</a></li>
            <li><a href="page05_contact.html">联系我们</a></li>
        </ul>
    </div>
  </div>
<!-- 搜索框 -->

</div>
</template>

<script>
  export default {
    data(){
      return {
        navHide:true
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
/* 第二个header */
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
        position:fixed;
        top:0;
        z-index:10;
    }
    .my_wholebg{background:rgba(255,255,255,0.3);}
    .my_footer_01{
        width:100%;
        position:fixed;
        bottom:0;
        z-index:10;
    }
}
</style>