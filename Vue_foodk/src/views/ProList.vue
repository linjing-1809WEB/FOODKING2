<template>
<div>
  <!-- 右侧 -->
  <div class="text-center font-weight-bold mt-2">{{title}}</div>
  <hr class="my_bgcolor p-0 mt-2 mb-2">
  <div class="row">
  <!--card-->
    <div class="col-4" v-for="item in list" :key="item.pid">
      <div class="card">
        <a href="javascript:;"><img class="w-100 my_img1" :src="item.md"></a>
        <div class="miansha"></div>
        <div class="myhovers">More Detail</div>
      </div>
      <div class="text-center mt-1 mb-4">
        <a class="productName" href="javascript:;">{{item.subname}}</a>
        <h5 class="productPrice pt-1">NT 450</h5>
      </div>
    </div>
  </div>
  <!-- 分页标签 -->
  <h6 class="mb-3 p-2 text-muted small border">
    <nav aria-label="Page navigation example">
      <ul class="pagination mb-0 justify-content-center">
        <li class="page-item" :class="{disabled:prevDisabled}">
          <a class="page-link bg-transparent" href="#" @click.prevent="prev()">上一页</a>
        </li>
        <li class="page-item" v-for="i of pagecount" :key="i.pid" :class="i==pno?'active':''">
          <a class="page-link" :class="i==pno?'border':'bg-transparent'" href="javascript:;" @click="go(i)">{{i}}</a>
        </li>
        <li class="page-item" :class="{disabled:nextDisabled}">
          <a class="page-link bg-transparent" href="javascript:;" @click="next()">下一页</a>
        </li>
      </ul>
    </nav>
  </h6>
</div>
</template>

<script>
  export default {
    props:["title","list","pagecount"],//接收父组件传输的数据！
    data(){return {
       pageIndex:1,
       pageSize:18,
       prevDisabled:true,
       nextDisabled:true,
       pno:1,
       kwords:""
    }},
    created(){

    },
    methods:{
      //向父组件传递一个参数pno 和一个处理事件
      prev(){
      this.pno--;
      this.prevDisabled=this.pno==1;
      this.nextDisabled=this.pno==this.pagecount;
      this.$emit("ProLoad",this.pno);
      },
      next(){
        this.pno++;
        this.prevDisabled=this.pno==1;
        this.nextDisabled=this.pno==this.pagecount;
        this.$emit("ProLoad",this.pno);
      },
      go(pno){
        this.pno=pno;
        this.prevDisabled=this.pno==1;
        this.nextDisabled=this.pno==this.pagecount;
        this.$emit("ProLoad",this.pno);
      },
    }
  }
</script>

<style scoped>
.card{
  overflow:hidden !important;
}
.productPrice a{
  color:#999;
  font:normal 0.9rem 'Century Gothic','微軟正黑體';
  line-height: 1.5rem;
}
a.productName{
  font:normal 1rem 'Century Gothic','微軟正黑體';
  color:black;
  text-decoration:none;
  cursor: pointer;
}
a.productName:hover{
  transition: color 0.8s;
  text-shadow:0.1rem 0.1rem 0.1rem red;
}
.productPrice {
  color:#999;
  font:normal 14px 'Century Gothic','微軟正黑體';
}
.my_img1{
  display:block;
  transition:0.8s;
}
.card:hover .my_img1{
  transform:scale(1.1);
  top:0;left:0;
}
.card:hover div{
  opacity:1;
}
.myhovers {
  position: absolute;
  font: normal 14px 'Cinzel';
  width: 120px;
  height: 20px;
  letter-spacing: 1px;
  border:1px solid white;
  line-height: 20px;
  text-align: center;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
  margin: auto;
  color: #fff;
  opacity: 0;
  transition: opacity 0.8s;
  border-radius: 10%;
}
.miansha{
  position: absolute;
  width: 100%;
  height: 100%;
  background: rgba(94, 86, 89, 0.4);
  top: 0;
  left: 0;
  opacity: 0;
  transition: opacity 0.8s;
}


</style>

