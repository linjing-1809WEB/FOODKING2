<template>
<div class="main row mb-5">
  <!-- 左侧 -->
  <div class="col-lg-2 d-lg-inline-block d-sm-none">
    <div class="text-center font-weight-bold mt-2">产品分类</div> 
    <hr class="my_bgcolor p-0 mt-2 mb-2">
    <!-- 选项 -->
    <ul id="p1" class="list-unstyled my_left pl-3">
      <li>
        <a href="#hot" data-toggle="collapse" @click="jump" class="active">热销商品</a>
        <div id="hot" class="collapse" data-parent="#p1"></div>
      </li>
      <li v-for="value in group" :key="value.fid">
        <div>
          <a :href="`#${value.id}`" data-toggle="collapse" @click="jump" :data-id="value.fid">
            {{value.fname}}
          </a>
        </div>
        <div :id="value.id" class="collapse" data-parent="#p1">
          <ul class="list-unstyled ml-3 productPrice">
            <li v-for="item in list" :key="item.pid"><a href="javascript:;">{{item.subname}}</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>

  <!-- 右侧 -->
  <div class="col-lg-10 col-sm-12">
    <!-- 子组件占位 -->
    <list-box :class="{'d-none':listHide}" :title="title" :pagecount="pagecount" :list="list" @ProLoad="ProLoad"></list-box>
    <detail-box :class="{'d-none':detailHide}"></detail-box>
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
    listHide:false,
    detailHide:true,
    title:"热销商品",
    pagecount:1,
    list:[],
    group:[],
    n1:13
  }},
  created(){
    this.getfname();
    this.ProLoad();
    console.log("主体变了吗？"+this.kwords);
  },
  methods:{
    //header的搜索栏中push传递一个关键字kwords,按关键字查询！将数据传给子组件ProList.vue
    //搜索需要传两个参数！一是关键字kwords，二是页码pno

    // 页面加载时一开始读取地址栏fid,header传参kwords,proList传参pno 以获取右侧内容   并且实现当前页面变化
    ProLoad(pno){
      //现在的问题是  app的更新的kwords并没有过来  解决是监听kwords  不是$route
      var fid=this.$route.query.fid;//地址栏可直接读取
      var kwords=this.kwords;//兄弟组件传参  在当前页/plist下不能获取到kwords  怎么办呢？监听！！
      // var kwords=this.$route.query.kwords;  为什么kwords读取不了地址栏的关键字？==undefined
      var pno=pno;//子组件转过来的
      console.log(kwords);
      var url="http://127.0.0.1:3000/getProduct";
      this.axios.get(url,{params:{fid,pno,kwords}}).then(res=>{
        this.list=res.data.data;
        this.pagecount=res.data.pagecount;
        if(fid===undefined){
          this.title=`产品搜索：${this.kwords} 结果`;
          if(this.kwords==undefined){
            this.title=`产品搜索： 结果`;
          }
        }else{this.title=res.data.data[0].fname;}
        console.log(this.list);
      });
    },
    // 点击时获取类标号fid以展开折叠 获取副标题和右侧内容！用判断使热销商品也能获取数据！
    jump(e){
      var n;
      if(e.target.dataset.id){n=e.target.dataset.id;}
      else{n=this.n1;}
      this.$router.push("plist?fid="+n);
      var url="http://127.0.0.1:3000/getProduct?fid="+n;
      this.axios.get(url).then(res=>{
        this.list=res.data.data;
        this.pagecount=res.data.pagecount;//请求的过来的数据变更慢一步，页面先加载的是之前的的数据
        this.title=res.data.data[0].fname;
      });
    },
    // 页面加载时一开始便获取左侧主标题
    getfname(){
      var url="http://127.0.0.1:3000/getFname";
      this.axios.get(url).then(res=>{
        this.group=res.data;
      })
    },
  },
  watch:{
    kwords(){
      this.kwords=this.$route.query.kwords;//这个关键字是输入框的值 
      this.ProLoad();
    },
    // "$route":{
    //   handlder(to){
    //   this.fid=to.params.fid;
    //   console.log(this.fid)
    //   this.ProLoad();}
    // },为什么监听不了路由呢？这个是个大问题！
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

