<template>
<div class="main row mb-5 mr-2">
  <!-- 左侧 -->
  <div class="col-lg-2 d-lg-inline-block d-sm-none">
    <div class="text-center font-weight-bold mt-2">产品分类</div> 
    <hr class="my_bgcolor p-0 mt-2 mb-2">
    <!-- 选项 -->
    <ul id="p1" class="list-unstyled my_left pl-3 ml-1">
      <li>
        <a href="#hot" data-toggle="collapse" @click="jump" class="active">热销商品</a>
        <div id="hot" class="collapse" data-parent="#p1"></div>
      </li>
      <li v-for="value in group" :key="value.fid">
        <div><!-- type类编号 -->
          <a :href="`#${value.id}`" data-toggle="collapse" @click="jump" :data-id="value.fid">
            {{value.fname}}
          </a>
        </div><!-- 产品编号 -->
        <div :id="value.id" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="item in list1" :key="item.pid">
              <router-link :to="`/product?pid=${item.pid}`">
                {{item.subname}}
              </router-link>
            </li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
  <!-- 右侧 -->
  <div class="col-lg-10 col-sm-12">
    <!-- 列表子组件占位 --><!-- 列表子组件占位 -->
    <list-box :class="{'d-none':listHide}" :title="title" :pagecount="pagecount" :list2="list2" @ProLoad="ProLoad">
    </list-box>
    <!-- 详情子组件占位 -->
    <detail-box :class="{'d-none':detailHide}" :series="series" :fdStyle="fdStyle">
    </detail-box>
  </div>
</div>
</template>

<script>
import ProList from '../views/ProList.vue'
import ProDetail from '../views/ProDetail.vue'
export default {
  components:{
    "list-box":ProList,
    "detail-box":ProDetail,
  },
  props:["kwords"],//header-->app-->当前
  data(){return {
    listHide:false,//列表显示项
    detailHide:true,//详情显示项
    title:"热销商品",
    pagecount:1,
    group:[],//主标题列表
    list1:[],//副标题列表
    list2:[],//产品图片列表
    series:{},//详情列表
    fdStyle:{"background-position":"0px 0px"},
    n1:13,//热销商品
    type:this.$route.query.type,
    pid:this.$route.query.pid
  }},
  created(){
    this.getfname();//页面开始就加载主标题列
    this.ProLoad();
  },
  methods:{
    //type是类 kwords是关键字 pno是页 pid是详情编号
    ProDetail(){
      this.listHide=true;
      this.detailHide=false;
      var m=this.$route.query.pid;
      var url ="http://176.30.9.140:3000/getDetail?pid="+m;
      this.axios.get(url).then(res=>{
        this.series=res.data[0];
        this.fdStyle["background-image"]="url("+res.data[0].lg+")";
      })  
    },
    ProLoad(pno){
      this.listHide=false;
      this.detailHide=true;
      var fid=this.type;//地址栏可直接读取
      var pno=pno;//子组件转过来的
      var kwords=this.kwords;//兄弟组件传参
      var url="http://176.30.9.140:3000/getProduct";
      this.axios.get(url,{params:{fid,pno,kwords}}).then(res=>{
        this.list2=res.data.data;
        this.pagecount=res.data.pagecount;
        if(fid===undefined){
          this.title=`产品搜索：${this.kwords} 结果`;
          if(this.kwords==undefined||this.kwords==""){
            this.title=`产品搜索： 结果`;
          }
        }else{this.title=res.data.data[0].fname;}
      });
    },
    //2.点击时获取类标号 只要左侧副标题
    jump(e){
      this.listHide=false;
      this.detailHide=true;
      var n;
      if(e.target.dataset.id){n=e.target.dataset.id;}
      else{n=this.n1;}
      this.$router.push("product?type="+n);
      var url="http://176.30.9.140:3000/getProduct?fid="+n;
      this.axios.get(url).then(res=>{
        this.list1=res.data.data;
      });
    },
    //3.页面加载时一开始便获取左侧主标题
    getfname(){
      var url="http://176.30.9.140:3000/getFname";
      this.axios.get(url).then(res=>{
        this.group=res.data;
      })
    },
  },
  watch:{
    $route:{
      handler(to){
        this.kwords=to.query.kwords;
        this.type=to.query.type;
        this.pid=to.query.pid;
        if(this.type){
          this.kwords=undefined;
          this.ProLoad();
        }else if(this.kwords){
          this.type=undefined;
          this.ProLoad();
        }else if(this.pid){
          this.ProDetail();
        }else if(this.kwords==""||this.kwords==undefined){
          this.type=undefined;
          this.ProLoad();
        }
      }
    },
    immediate:true
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
.my_left li a:hover{color: rgba(140, 0, 36,0.6);}
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

