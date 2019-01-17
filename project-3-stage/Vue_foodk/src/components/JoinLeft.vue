<template>
<div class="Leftjoin">
  <div class="row ml-1 mr-1">
    <!--左边导航-->
    <div class="col-lg-2 col-sm-12 d-lg-inline-block d-md-none">
        <div class="text-center font-weight-bold mt-2">加盟专区</div> 
        <hr class="my_bgcolor p-0 mt-2 mb-2">
        <ul class="text-center list-unstyled  my_font">
          <li class="p-2"><router-link class="my_secolor" to="/join?uid=1">美味趋势</router-link></li>
          <li class="p-2"><router-link class="my_secolor" to="/join?uid=2">技術支援</router-link></li>
          <li class="p-2"><router-link class="my_secolor" to="/join?uid=3">物流傳遞</router-link></li>
          <li class="p-2"><router-link class="my_secolor" to="/join?uid=4">加盟品牌</router-link></li>
        </ul>
    </div>
    <!--右边内容-->
    <div class="col-lg-10 col-sm-12">
      <!-- 子组件占位 -->
      <join-box></join-box>
    </div>
  </div>
</div>
</template>

<script>
import Join from '../views/JoinRight.vue' ;
export default {
  components:{"join-box":Join}
 }  
</script>

<style>
.my_font{
  font-size: 1rem;
  color:rgba(119,119,119,1);
}
.my_secolor{
  color:rgba(119,119,119,1);
}
.my_secolor:hover{
  text-decoration: none;
  color:rgba(119,119,119,0.8);
}
.my_bgcolor{background:#8c0024;}
</style>
