<template>
<!-- 页面尾部01 -->
<div class="my_footer_01 my_bgcolor my_long_height3">
    <ul class="list-unstyled d-flex justify-content-around">
        <li class="text-center m-0">
        <img class="my_long_height5" src="../img/index_base/product_detail_icon_d.png">
        <p class="p-0 mb-1 text-white">会员中心</p>
        </li>
        <li class="text-center m-0">
        <img class="my_long_height5" src="../img/index_base/product_detail_icon_bao.png">
        <p class="p-0 mb-1 text-white">商品专区</p>
        </li>
        <li class="text-center m-0">
        <img class="my_long_height5" src="../img/index_base/product_detail_img7.png">
        <p class="p-0 mb-1 text-white">购物车</p>
        </li>
        <li class="text-center m-0">
        <img class="my_long_height5" src="../img/index_base/product_detail_icon_g.png">
        <p class="p-0 mb-1 text-white">历史订单</p>
        </li>
    </ul>
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
    #my_martop{margin-top:3.8rem;}
    .my_footer_01{
        width:100%;
        height:3.5rem;
        position:fixed;
        z-index:10;
        bottom:0;
    }
}
</style>