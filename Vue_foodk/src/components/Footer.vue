<template>
<!-- 页面尾部00 -->
<div class="my_footer">
  <div class="footDecorationLine mt-2 mb-2"></div>
    <div class="row ml-3 mr-3 my_long_height4 mb-3">
      <div class="col-3">
        <div class="footTitle">联络资讯</div>
        <ul class="list-unstyled my_sedcolor my_smallsize">
          <li class="m-0">地址：<span>41278 台中市大里區仁化工三路113號</span></li>
          <li class="m-0">營業時間<span>Mon~Fri.  AM08:30-PM5:30</span> </li>
          <li class="m-0">電話 <span>+886 4-24927526</span> </li>
          <li class="m-0">傳真 <span>+886 4-24927528</span>
          <li class="m-0">客服專線 <span>0800-303808</span></li>
        </ul>
      </div>
      <div class="col-6">
        <div class="row">
          <div class="col-4">
            <div class="footTitle">会员中心</div>
            <ul class="list-unstyled">
              <li class="m-0"><a class="my_secolor my_smallsize" href="login.html">会员登录</a></li>
              <li class="m-0"><a class="my_secolor my_smallsize" href="register.html">会员注册</a></li>
              <li class="m-0"><a class="my_secolor my_smallsize" href="password_forget.html">忘记密码</a></li>
            </ul>
          </div>
          <div class="col-4">
            <div class="footTitle">购物资讯</div>
            <ul class="list-unstyled">
              <li class="m-0"><a class="my_secolor my_smallsize" href="page03_shop.html">线上购物</a></li>
              <li class="m-0"><a class="my_secolor my_smallsize" href="page03_product_info.html">购物须知</a></li>
              <li class="m-0"><a class="my_secolor my_smallsize" href="#">海外会员购物</a></li>
              <li class="m-0"><a class="my_secolor my_smallsize" href="#">隐私权政策</a></li>
            </ul>
          </div>
          <div class="col-4">
            <div class="footTitle">美味王</div>
            <ul class="list-unstyled">
              <li class="m-0"><a class="my_secolor my_smallsize" href="page01.1_about.html">公司简介</a></li>
              <li class="m-0"><a class="my_secolor my_smallsize" href="page02.1_news.html">最新消息</a></li>
              <li class="m-0"><a class="my_secolor my_smallsize" href="page04.1_join.html">加盟专区</a></li>
              <li class="m-0"><a class="my_secolor my_smallsize" href="#">人才招募</a></li>
              <li class="m-0"><a class="my_secolor my_smallsize" href="#">厦门美味皇</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-3 my_smallsize">
        <div class="mt-4 my_long_height6"><img class="my_long_height5" src="../img/index_base/tel.jpg">&nbsp;&nbsp;&nbsp;<b>客服专线 0592-6617138</b></div>
        <div class="d-flex">
          <img class="mr-2" src="../img/index_base/Iso.png">
          <img src="../img/index_base/IAF.png">
        </div>
      </div>
    </div>
  <div class="my_bgcolor text-white"><p class="text-center my_ms_size m-0 pt-2 pb-2">Copyright &nbsp;&copy;&nbsp;FOODKING INTERNATIONAL FLAVORING CO.,LTD.All Rights Reserved. 美味王食品工業有限公司 版權所有</p></div>
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