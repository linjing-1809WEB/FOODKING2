<template>
<!-- 主体内容 -->
  <div class="newsRight mr-2 ml-2">
    <div class="text-center  mt-2 ">{{title}}</div> 
    <hr class="my_bgcolor p-0 mt-2 mb-2">
    <div class="row mr-2 ml-2">
      <div class="col-lg-2 my_title pl-5 pt-1 pb-1">时间</div>
      <div class="col-lg-10 my_title text-center pr-3 pt-1 pb-1">标题</div>
    </div>
    <ul class="list-group list-unstyled m-2">
      <li v-for="item in list" :key="item.uid">
        <p class="text-truncate my_bode mb-0 mt-2 pb-2 mr-2">
          <span class=" text-danger font-weight-bold pl-3">
            {{item.date| datetimeFilter}}</span>
          <span class="pl-5">{{item.text}}</span>
        </p>
      </li>
    </ul>
    <hr class="my_bg p-0 m-2">
  </div>
</template>

<script>
export default {
  data(){return{
    list:[],
    title:"最新列表"
  }},
  created() {
    this.getnews();
  },
  methods: {
    getnews(){
      var nid = this.$route.query.nid;
      var url="http://176.30.9.140:3000/getNews?nid="+nid;
      this.axios.get(url).then(result=>{
        this.title=result.data[0].title;
        this.list=result.data;
      })
    }
  },
  watch: {
    $route:{
      handler(to){
        this.nid=to.query.nid;
        this.getnews();
      }
    }
  },
}
</script>

<style>
.newsRight{
  height:600px;
}
.newsRight>ul>li:last-child p{
  border-bottom:0;
}
.newsRight .my_title{
  color:#fff;
  background:#8c0024;
}
.newsRight .my_bg{
  background: #8c0024;
  height:2px;
}
.newsRight .my_bode{
  font-size:1rem;
  border-bottom:1px dashed #8c0024;
}
.newsRight .my_bgcolor{background:rgba(169,41,64,0.9);}
</style>
