<template>
<div class="main row my_bg3color mb-5">
  <!-- 左侧 -->
  <div class="col-lg-2 d-lg-inline-block d-sm-none">
    <div class="text-center font-weight-bold mt-2">产品分类</div> 
    <hr class="my_bgcolor p-0 mt-2 mb-2">
    <!-- 选项 -->
    <ul id="p1" class="list-unstyled my_left pl-3">
      <li>
        <a href="javascript:;" class="active"  @click="jump(n0)">热销商品</a>
      </li>
      <li>
        <div>
          <a href="#sub_zha" data-toggle="collapse" @click="jump(n1)">炸粉类</a>
        </div>
        <div id="sub_zha" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_yan" data-toggle="collapse" @click="jump(n2)">腌制粉</a>
        </div>
        <div id="sub_yan" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_sa" data-toggle="collapse" @click="jump(n3)">撒料类</a>
        </div>
        <div id="sub_sa" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_jiang" data-toggle="collapse" @click="jump(n4)">酱粉类</a>
        </div>
        <div id="sub_jiang" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_tang" data-toggle="collapse" @click="jump(n5)">汤头粉</a>
        </div>
        <div id="sub_tang" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_leng" data-toggle="collapse" @click="jump(n6)">冷饮类</a>
        </div>
        <div id="sub_leng" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_la" data-toggle="collapse" @click="jump(n7)">辣椒粉</a>
        </div>
        <div id="sub_la" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_hong" data-toggle="collapse" @click="jump(n8)">烘焙预拌粉</a>
        </div>
        <div id="sub_hong" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_bian" data-toggle="collapse" @click="jump(n9)">便当简餐类</a>
        </div>
        <div id="sub_bian" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_xiao" data-toggle="collapse" @click="jump(n10)">小吃类</a>
        </div>
        <div id="sub_xiao" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_dan" data-toggle="collapse" @click="jump(n11)">单品类</a>
        </div>
        <div id="sub_dan" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
      <li>
        <div>
          <a href="#sub_she" data-toggle="collapse" @click="jump(n12)">设备器材</a>
        </div>
        <div id="sub_she" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="(item) in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>

  <!-- 右侧 -->
  <div class="col-lg-10 col-sm-12">
    <!-- 占位 -->
    <right-box :title="title" :list="list"></right-box>
  
  </div>
</div>
</template>

<script>
import ProList from '../views/ProList.vue'
export default {
  components:{
    "right-box":ProList
  },
  data(){return {
    title:"热销商品",
    list:[],
    n0:0,
    n1:1,
    n2:2,
    n3:3,
    n4:4,
    n5:5,
    n6:6,
    n7:7,
    n8:8,
    n9:9,
    n10:10,
    n11:11,
    n12:12,
  }},
  methods:{
   jump(n){
      this.$router.push("plist?fid="+n);
      var url="http://127.0.0.1:3000/getProduct?fid="+n;
      this.axios.get(url).then(res=>{
        this.list=res.data.data;
        this.title=res.data.data[0].fname;
      });
   },
  }
}
</script>

<style scoped>
.my_left li a{
  font: normal 1.1rem 'Century Gothic','微軟正黑體';
  line-height: 2.1rem;
  color: rgb(19, 6, 9);
  transition: color 0.8s;
  text-shadow:0.2rem 0.2rem 0.2rem pink;
  text-decoration:none;
}
.my_left li a:hover{
  color: rgba(140, 0, 36,0.6);
}
.my_left li a.active{font-weight:bold;}

.my_left .productPrice a{
  font:bold 1rem 'Century Gothic','微軟正黑體';
  line-height:2rem;
  color:#777;
  text-shadow:none;
  text-decoration:none;
}
.my_left .productPrice a:hover{
  color:#777;
  opacity:0.8;
}




 


</style>

