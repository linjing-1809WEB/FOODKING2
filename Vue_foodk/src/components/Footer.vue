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
              <li class="m-0"><a class="my_font" href="login.html">会员登录</a></li>
              <li class="m-0"><a class="my_font" href="register.html">会员注册</a></li>
              <li class="m-0"><a class="my_font" href="password_forget.html">忘记密码</a></li>
            </ul>
          </div>
          <div class="col-4">
            <div class="footTitle">购物资讯</div>
            <ul class="list-unstyled">
              <li class="m-0"><a class="my_font" href="page03_shop.html">线上购物</a></li>
              <li class="m-0"><a class="my_font" href="page03_product_info.html">购物须知</a></li>
              <li class="m-0"><a class="my_font" href="#">海外会员购物</a></li>
              <li class="m-0"><a class="my_font" href="#">隐私权政策</a></li>
            </ul>
          </div>
          <div class="col-4">
            <div class="footTitle">美味王</div>
            <ul class="list-unstyled">
              <li class="m-0"><router-link class="my_font" to="About">公司简介</router-link></li>
              <li class="m-0"><router-link class="my_font" to="News">最新消息</router-link></li>
              <li class="m-0"><router-link class="my_font" to="Join">加盟专区</router-link></li>
              <li class="m-0"><a class="my_font" href="#">人才招募</a></li>
              <li class="m-0"><a class="my_font" href="#">厦门美味皇</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-3 my_smallsize">
        <div class="mt-4 mb-2">
            <img :src="img3">&nbsp;&nbsp;&nbsp;<b>客服专线 0592-6617138</b>
        </div>
        <div class="d-flex">
          <img class="mr-2" :src="img1">
          <img :src="img2">
        </div>
      </div>
    </div>
  <div class="my_bgcolor">
    <p class="text-center my_ms_size m-0 pt-2 pb-2">Copyright &nbsp;&copy;&nbsp;FOODKING INTERNATIONAL FLAVORING CO.,LTD.All Rights Reserved. 美味王食品工業有限公司 版權所有</p>
  </div>
</div>

</template>

<script>
export default {
  data(){return {
    img1:"",
    img2:"",
    img3:""
    }
  },
  created(){
    this.getIamge();
  },
  methods:{
    getIamge(){
      var url="http://127.0.0.1:3000/getImage";
      this.axios.get(url).then(res=>{
        this.img1=res.data[4].img_url;
        this.img2=res.data[5].img_url;
        this.img3=res.data[6].img_url;
      })
    }
  }
}
</script>


<style scoped>
.my_font{
    font-family:'Century Gothic';
    font-size:0.9rem;
    color:rgba(119,119,119,1);
}
.my_font:hover{
    font-family:'Century Gothic';
    font-size:0.9rem;
    text-decoration: none;
    color:rgba(119,119,119,0.8);
}
.my_ms_size{
    font-family:'Century Gothic';
    font-size:0.5rem;
    color:#fff;
}
.my_sedcolor{color:#777;}


/* 背景颜色 */
.my_bgcolor{background:rgba(169,41,64,0.9);}

/* 决不能就这样写  后面再确定权值！！！ 页面高度 */
.my_footer:nth-child(2){height:160px;}
.my_footer:nth-child(2)>div:last-child>div:first-child{
    height:30px;width:200px;
}
.my_footer:nth-child(2)>div:last-child>div:first-child img{
    height:20px;width:20px;margin:0;
}

/* 页面响应式  min-width:1000px-->大屏！ 和  max-width:1000px-->小屏  两种屏幕大小 */
@media screen and (min-width:1000px){
.my_footer{
    width: 100%;
    display:block;
} 
}
@media screen and (max-width:1000px){
.my_footer{display: none;}
}
</style>