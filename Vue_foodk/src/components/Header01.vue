<template>
<!-- 页面头部01 -->
<div class="my_header_00">
<!-- LOGO图标 -->
  <div class="my_header_01">
    <div class="row text-center">
      <div class="col-1 mt-2">
        <button :class="{'d-none':firstHide}" @click="firbtn()"><span class="mui-icon mui-icon-bars"></span></button>
        <button :class="{'d-none':secondHide}" @click="secbtn()"><span class="mui-icon mui-icon-undo"></span></button>
      </div>
      <div class="col-11">
        <router-link to="Index"><img :src="img"></router-link>
      </div>
    </div>
  </div>
<!-- 搜索框 -->
  <div class="my_header_02">
    <input class="my_input" placeholder="产品搜索" v-model="kwords" @keyup.13="search">
    <router-link class="my_suba" to="/plist" @click="search">GO</router-link>
  </div>
<!-- 下拉选项 -->
  <div id="target" :class="{'d-none':navHide}">
    <ul class="list-group text-center">
      <li class="list-group-item"><router-link class="text-white" to="About">关于美味王</router-link></li>
      <li class="list-group-item"><router-link class="text-white" to="News">最新消息</router-link></li>
      <li class="list-group-item"><router-link class="text-white" to="News">会员中心</router-link></li>
      <li class="list-group-item"><router-link class="text-white" to="/plist?fid=13">线上购物</router-link></li>
      <li class="list-group-item"><router-link class="text-white" to="Join">加盟专区</router-link></li>
      <li class="list-group-item"><router-link class="text-white" to="Javascript:;">联系我们</router-link></li>
      <li class="list-group-item"><router-link class="text-white" to="Javascript:;">隐私权政策</router-link></li>
    </ul>
  </div>
</div>
</template>

<script>
  export default {
    data(){
      return {
        kwords:"",
        img:"",
        navHide:true,
        firstHide:false,
        secondHide:true
      }
    },
    created(){
      this.getIamge();
    },
    methods:{
      getIamge(){
        var url="http://127.0.0.1:3000/getImage";
        this.axios.get(url).then(res=>{
          this.img=res.data[3].img_url;
        })
      },
      search(){
        this.$router.push("/plist?kwords="+this.kwords);
      },
      firbtn(){
        this.navHide=false;
        this.firstHide=true;
        this.secondHide=false;
        $("#target").slideDown(1500);
      },
      secbtn(){
        this.firstHide=false;
        this.secondHide=true;
        $("#target").slideUp(1500);
      }
    }
  }
</script>

<style scoped>
.my_header_02 .my_input{
    float:left;
    margin:0;
    color:#000;
    padding:5px 20px;
    width:92%;height:45px;
    font-size:18px;
    background:rgba(255, 255, 255, 0);
    border-top:0.5px solid #aaa;
    border-right:none;border-left:none;
    border-bottom:0.5px solid #ddd;
}
.my_header_02 .my_suba{
    float:left;
    margin:0;
    color:white;
    padding-left:1.2rem;
    width:8%;height:50px;
    line-height:50px;
    font-size:18px;
    background:gray;
}
button{
  background:#8c0024; 
  border:none;
  color:#fff;
}
.my_header_01>div>div:first-child button{
  position:absolute;
  top:0;left:16px;
}
#target{
  height:800px;
  background:rgba(25,0,0,0.8);
}
.list-group{
  margin-top:100px;
}
.list-group .list-group-item{
  background:transparent;
  margin:5px auto;
}
/* 页面响应式  min-width:1000px-->大屏！ 和  max-width:1000px-->小屏  两种屏幕大小 */
@media screen and (min-width:1000px){
  .my_header_00{
    display:none;
  }
}
@media screen and (max-width:1000px){
  .my_header_00{
    width:100%;
    height:100px;
    position:fixed;
    top:0;
    z-index:10;
  }
  .my_header_00 .my_header_01{
    width:100%;
    height:50px;
    position:fixed;
    top:0;
    background:#8c0024;   
  }
  .my_header_00 .my_header_02{
    height:50px;width:100%;
    background:rgba(255,200,210,0.8);
    position:fixed;
    top:50px;
  }
}
</style>