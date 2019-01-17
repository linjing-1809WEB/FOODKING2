<template>
<!-- 页面头部00 -->
<div class="my_header">
  <div class="row">
    <div class="col-4">
      <router-link to="Index"><img class="img-fluid m-0" :src="img"></router-link>
    </div>
    <div class="col-8">
    <div class="row mt-3 mr-5">
      <!-- 产品搜索 -->
      <div class="col-3 d-flex justify-content-end p-0">
        <div class="my_smallsize">
          <input class="my_input" placeholder="产品搜索" v-model="kwords" @keyup.13="search">
          <router-link class="my_suba" :to="`/product?kwords=${kwords}`" @click="search">GO</router-link>
        </div>
      </div>
      <!-- 第一层选项 -->
      <div class="col-9 p-1">
        <ul class="list-unstyled d-flex justify-content-end  my_smallsize text-white w-100">
          <li>语言/Language：<select name="dp" class="my_select">
            <option value="1">繁体中文</option>
            <option value="2">简体中文</option>
            <option value="3">English</option>
          </select></li>
          <li><a class="text-white" href="javascript:;"> <b>|</b> 粉丝专页 </a></li>
          <li><a class="text-white" href="javascript:;"> <b>|</b> 购物车(0) </a></li>
          <li><router-link class="text-white" to="/member/Register"> <b>|</b>  会员中心 </router-link></li>
        </ul>
      </div>
    </div>
    <!-- 第二层选项 about   news   Onlineshop   Franchisee    Contact  -->
    <div class="row mt-4 mr-4 pr-2">
      <div class="col-12">
        <ul class="nav nav-justified pt-2">
          <li class="nav-item text-right m-0">
            <router-link class="nav-link text-white p-0" to="About?aid=1">关于美味王
              <div class="my_font">About</div>
            </router-link>
          </li>
          <li class="nav-item text-right m-0">
            <router-link class="nav-link  text-white p-0" to="News?nid=1">最新消息
              <div class="my_font">News</div>
            </router-link>
          </li>
          <li class="nav-item text-right m-0">
            <router-link class="nav-link  text-white p-0" to="/product?type=13">线上购物
              <div class="my_font">Online shop</div>
            </router-link>
          </li>
          <li class="nav-item text-right m-0">
            <router-link class="nav-link  text-white p-0" to="/Join?uid=1">加盟专区
              <div class="my_font">Franchisee</div>
            </router-link>
          </li>
          <li class="nav-item text-right m-0">
            <router-link class="nav-link text-white p-0" to="javascript:;">联系我们
              <div class="my_font">Contact</div>
            </router-link>
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
    data(){return {
      kwords:"",
      img:""
    }},
    created(){
      this.getIamge();
    },
    methods:{
      getIamge(){
        var url="http://176.30.9.140:3000/getImage";
        this.axios.get(url).then(res=>{
          this.img=res.data[2].img_url;
        })
      },
      search(){
        this.$router.push("/product?kwords="+this.kwords);
        this.$emit("search",this.kwords);
      }
    },
  }
</script>

<style scoped>
.my_header .row>div:first-child img{
  transition:all 0.8s;
}
.my_header .row>div:first-child img:hover{
  transform:scale(0.95);
}
.my_input{
    margin:0;
    color:black;
    padding:5.2px 3px;
    width:120px;height:35px;
    display:inline-block;
    font-size:0.9rem;
    background:rgba(255, 255, 255, 0.8);
    border:0.5px solid gray;
}
.my_suba{
    margin:0;
    color:white;
    padding:5px 0;
    width:30px;height:35px;
    display:inline-block;
    font-size:0.9rem;
    background:gray;
    border:0.5px solid gray;
}
.my_suba:hover{
    text-decoration:none;
}
.my_select{
    margin:0;padding:0 1px 0;
    background:rgba(169,41,64,0.9);
    font-size:0.9rem;
    width:5rem;
}
.my_smallsize{
    font-family:'Century Gothic';
    font-size:1rem;
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
@media screen and (min-width:1200px){
  .my_header{
    width: 100%;
    height:150px;
    display:block;
  }
}
@media screen and (max-width:1200px){
.my_header{display:none;}
}
</style>