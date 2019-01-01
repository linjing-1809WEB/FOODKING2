<template>
<!-- 页面头部01 -->
<div class="my_header_01">
<!-- LOGO图标 -->
<!-- <button></button> -->
  <div class="text-center">
    <router-link to="Index"><img src="../img/index_base/logo_rwd.png"></router-link>
    <div :class="{'d-none':navHide}">
        <ul>
            <li><router-link to="About">关于美味王</router-link></li>
            <li><router-link to="News">最新消息</router-link></li>
            <li><router-link to="Shop">线上购物</router-link></li>
            <li><router-link to="Join">加盟专区</router-link></li>
            <li><router-link to="Javascript:;">联系我们</router-link></li>
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

/* 页面响应式  min-width:1000px-->大屏！ 和  max-width:1000px-->小屏  两种屏幕大小 */
@media screen and (min-width:1000px){
    .my_header_01{
        display:none;
    }
}
@media screen and (max-width:1000px){
    .my_header_01{
        width:100%;
        height:50px;
        background:#8c0024;
        position:fixed;
        top:0;
        z-index:10;
    }
}
</style>