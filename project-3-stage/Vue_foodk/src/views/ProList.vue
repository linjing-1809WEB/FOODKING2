<template>
<div>
  <!-- 右侧 -->
  <div class="text-center font-weight-bold mt-2">{{title}}</div>
  <hr class="my_bgcolor p-0 mt-2 mb-2">
  <div v-if="!(list2.length==0)">
    <div class="row mt-3">
    <!--card-->
      <div class="col-4" v-for="item in list2" :key="item.pid">
        <router-link :to="`/product?pid=${item.pid}`">
          <div class="card">
            <img class="w-100 my_img1" :src="item.md">
            <div class="miansha"></div>
            <div class="myhovers">More Detail</div>
          </div>
        </router-link>
          <div class="text-center mt-1 mb-4">
            <h4 class="productName">{{item.subname}}</h4>
            <h5 class="productPrice pt-1">NT 450</h5>
          </div> 
      </div>
    </div> 
    <!-- 分页标签 -->
    <div v-if="list2.length>=18">
      <h6 class="mb-3 p-2 text-muted small">
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
  </div>
  <div class="kong" v-if="(list2.length==0)">
    <p>查无此类产品</p>
  </div>
</div>
</template>

<script>
  export default {
    props:["title","list2","pagecount"],//接收父组件传输的数据！
    data(){return {
       prevDisabled:true,
       nextDisabled:false,
       pno:1
    }},
    methods:{
      ProDetail(e){
        var m;
        m=e.target.dataset.id;
        this.$router.push("/product?pid="+m);
      },
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
div.kong p{
  text-align:center;
  font-size:50px;
  font-family:'微軟正黑體';
  color:rgba(140, 0, 36,0.6);
  opacity:0.8;
  margin:100px auto;
}
.card{
  overflow:hidden !important;
  box-shadow: 0 0 5px black;
  transition:all 1s;
}
.card:hover{
  transform:translateY(-8px);
}
h4.productName{
  font:normal 1rem 'Century Gothic','微軟正黑體';
  color:black;
  text-decoration:none;
  cursor: pointer;
  transition:all 0.8s;
}
h4.productName:hover{
  transform:scale(1.1);
  text-decoration:none;
  text-shadow:0.1rem 0.1rem 0.1rem red;
}
h5.productPrice {
  transition:all 1s;
  color:#666;
  transform-origin:center center;
  font:normal 15px 'Century Gothic','微軟正黑體';
}
h5.productPrice:hover{
  transform: rotateY(360deg);
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
  background: rgba(24, 23, 23, 0.6);
  top: 0;
  left: 0;
  opacity: 0;
  transition: opacity 0.8s;
}
</style>

