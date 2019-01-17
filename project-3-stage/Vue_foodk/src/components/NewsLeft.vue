<template>
<div class="app-newsleft">
  <div class="row mb-5">
    <div class="col-lg-2 d-lg-inline-block d-sm-none">
      <div class="text-center  mt-2">消 息 列 表</div> 
      <hr class="my_bgcolor p-0 mt-2 mb-2">
      <ul class="list-unstyled text-center mb-5 mt-3 ">
        <li class="pb-3">
          <router-link to="/news?nid=1" class="my_secolor">最新消息</router-link>
        </li>
        <li class="pb-3">
          <router-link to="/news?nid=2" class="my_secolor">檔案下載</router-link>
        </li>
        <li><router-link to="/news?nid=3" class="my_secolor">媒體報導</router-link></li>
      </ul>
    </div>
    <div class="col-lg-10" >
      <News-box></News-box>
    </div>
  </div>
</div>
</template>
<script>
import New from '../views/NewsRight.vue'
export default {
components:{
    "News-box":New
},
  
}
</script>
<style scoped>
.my_secolor{color:rgba(119,119,119,1);}
.my_secolor:hover{
    text-decoration: none;
    color:rgba(119,119,119,0.7);
}
.my_bgcolor{background:rgba(169,41,64,0.9);}
</style>