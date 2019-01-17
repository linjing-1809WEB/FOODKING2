<template>
<div class="Leftabout">
  <div class="row mb-5 mr-2 ml-2">
  <!--左边 ul标签-->
    <div class="col-lg-2 d-lg-inline-block d-md-none text-center">
      <div class="text-center font-weight-bold mt-2">關於美味王</div> 
      <hr class="my_bgcolor p-0 mt-2 mb-2">
      <ul class="list-unstyled mt-2">
        <li class="m-2"><router-link class="my_secolor" to="/about?aid=1">企業簡介</router-link></li>
        <li class="m-2"><router-link class="my_secolor" to="/about?aid=2">全球供應</router-link></li>
        <li class="m-2"><router-link class="my_secolor" to="/about?aid=3">研發中心</router-link></li>
        <li class="m-2"><router-link class="my_secolor" to="/about?aid=4">商務價值</router-link></li>
        <li class="m-2"><router-link class="my_secolor" to="/about?aid=5">策略規劃</router-link></li>
        <li class="m-2"><router-link class="my_secolor" to="/about?aid=6">認證標章</router-link></li>
    </ul>
    </div>
    <div class="col-lg-10 col-sm-12">
  <!-- 子组件占位 -->
    <about-box></about-box>
    </div>
  </div>
</div>
</template>
<script>
  import about from "../views/AboutRight.vue";
  export default {
    components:{"about-box":about}
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
