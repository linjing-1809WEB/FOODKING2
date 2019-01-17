<template>
<div class="main mb-5">
    <div class="text-center font-weight-bold mt-2">商品详情</div>
    <hr class="my_bgcolor p-0 mt-2 mb-2">
<!-- ****************右侧-面包屑导航*********************** -->
  <div class="row p-0">
    <div class="col-12">
      <ul class="breadcrumb bg-transparent mb-0 ml-1 p-0 my_secolor">
        <li class="breadcrumb-item"><router-link to="/index">首页</router-link></li>
        <li class="breadcrumb-item"><router-link :to="`/product?type=${series.family_pid}`">
        {{series.family_pid==1?"炸粉类":(series.family_pid==2?"腌渍粉":(series.family_pid==3?"撒料类":(series.family_pid==4?"酱粉类":(series.family_pid==5?"汤头粉":(series.family_pid==6?"冷饮类":(series.family_pid==7?"辣椒粉":(series.family_pid==8?"烘焙预拌粉":(series.family_pid==9?"便当简餐类":(series.family_pid==10?"小吃类":(series.family_pid==11?"单品类":(series.family_pid==12?"设备器材":"热销商品")))))))))))}}
        </router-link></li>
        <li class="breadcrumb-item"><router-link :to="`/product?pid=${series.pid}`">{{series.subname}}</router-link></li>
      </ul>
    </div>
  </div>
<!--右侧-商品详情信息  -->
  <div class="row p-0 mt-2 ml-2">
    <!-- *****************放大镜效果*************************** -->
    <div class="leftContainer col-6 m-0 p-0">
      <img :src="series.md"> 
      <div id="mask" :class="{'d-none':maskHide}" :style="maskStyle"></div>
      <div id="supermask" @mouseover="show()" @mouseout="hide()" @mousemove="move($event)"></div>
      <div id="fd" :class="{'d-none':fdHide}" :style="fdStyle"></div>
    </div>  
    <!-- ***********************右边区域******************** -->
    <div class="rightContainer col-6">
      <div class="productDetailNameBox ml-5">
        <h3 class="title">{{series.subname}}</h3>
        <div class="subTitle">{{series.subtitle}}</div>
        <div class="num">商品編號 
          <span v-for="item in compose" :key="item.uid"> {{item.pnumber}} </span>
        </div>
        <div class="num">庫存狀態 
          <span class="fontColor">{{series.pstatus==1?"现货供货中":"缺货断货中"}}</span>
        </div>
        <div class="num">售價<span class="fontColor fontEn ">NT.{{series.price}}</span></div>
      </div>
      <div class="ml-5 mt-4">
        <!-- 规格选项 -->
        <div class="pro_spec">
          <div class="longString"></div>
          <span class="spec">規格</span>
          <select class="spec_id">
            <option value="">- -- - -- -- --選 擇 規 格 -- -- -- --</option>
            <option value="" v-for="item in compose" :key="item.uid">{{item.spec}}</option>
          </select>  
        </div>        
        <!-- 数量加减的 -->
        <div class="mt-4 pro_num">
          <div class="longString"></div>
          <span class="spec">數量</span>
          <div class="addNum">
            <button class="btnLeft">-</button>
            <input type="text" value="1">
            <button class="btnRight">+</button>
          </div>
        </div>
        <!-- 放入购物车模块 -->
        <div class="mt-4 d-flex">
          <button class="myBtn myBtn1">
            <span><i class="mui-icon-extra mui-icon-extra-cart"></i></span>
            <span>放入購物車</span>
          </button>
          <button class="myBtn myBtn2">
            <span><i class="mui-icon-extra mui-icon-extra-order"></i></span>
            <span> &nbsp;&nbsp;索取樣品&nbsp;&nbsp; </span>
          </button>
        </div>
      </div>        
    </div>
  </div>
<!-- 商品资讯部分  标签导航 -->
  <ul id="det" class="nav nav-pills mt-5">
    <li class="nav-item"><a class="nav-link my_font" href="#det01" data-toggle="pill">商品資訊</a></li>
    <li class="nav-item"><a class="nav-link my_font" href="#det02" data-toggle="pill">包裝規格</a></li>
  </ul>
  <hr class="my_bgcolor p-0 mt-0 mb-2">
  <div class="tab-content">
    <div  class="tab-pane" id="det01">
      <p v-for="item in compose" :key="item.uid">
        <span style="color:red"> {{item.spec}}</span>
        <span>：{{item.pnews}} </span></p>
    </div>
    <div  class="tab-pane" id="det02">
      <p v-for="item in compose" :key="item.uid">
        <span style="color:red"> {{item.spec}}</span>
        <span>：{{item.package}} </span></p>
    </div>
  </div>
</div>
</template>

<script>
  export default {
    props:["series","fdStyle"],
    data(){return {
      maskStyle:{left:"0px",top:"0px"},
      maskHide:true,
      fdHide:true,
      compose:[],//规格列表
      pid:1
    }},
    created(){
      this.ProSpec();
    },
    watch:{
      $route:{
        handler(to){
          this.pid=this.$route.query.pid;
          this.ProSpec();
      }}
    },
    methods:{
      //获取商品规格
      ProSpec(){
        var pid=this.$route.query.pid;
        var url="http://176.30.9.140:3000/getSpec?pid="+pid;
        this.axios.get(url).then(res=>{
          this.compose=res.data;
        })
      },
      //绑定鼠标在原图窗口移动的事件
      show(){
        this.maskHide=false;
        this.fdHide=false;
      },
      hide(){
        this.maskHide=true;
        this.fdHide=true;
      },
      move(e){
        var left=e.offsetX-104;
        var top=e.offsetY-82.5;
        if(left<0)left=0; 
        else if(left>208)left=208;
        if(top<0)top=0; 
        else if(top>165)top=165;
        this.maskStyle.left=left+"px";
        this.maskStyle.top=top+"px";
        this.fdStyle["background-position"]=`-${left*2}px -${top*2}px`;
      }
    }
  }
</script>

<style scoped>
.my_bgcolor{background:#8c0024;}
.nav-pills .nav-link.active,
.nav-pills .show > .nav-link {
  color: #fff;
  background-color: #8c0024;
}
.my_font{
  font-size: 1rem;
  color:rgba(119,119,119,1);
}
/* ********************************放大镜样式************************************/
.leftContainer{
  position:relative;
}
.leftContainer>img{
  width:416px;
  /* box-shadow:0 0 5px black; */
}
#mask{
  position: absolute;
  left:0;top:0;
  width:208px;height:165px;
  background:rgba(254,238,167,.4);
}
#supermask{
  position: absolute;
  left:0;top:0;
  width:416px;height:330px;
}
#fd{
  position: absolute;
  left:416px;
  top:0;
  width:416px;height:330px;
  /* background-image:url('../img/products/lg2.jpg'); */
  background-repeat:no-repeat;
  z-index:100;
  overflow:hidden;
}


/* ********************************二***************************** */
.breadcrumb-item + .breadcrumb-item::before{
    display: inline-block;
    padding-right: 0.5rem;
    padding-left: 0.5rem;
    color: #6c757d;
    content: ">";
}
.breadcrumb a {
    color: #555;
    text-decoration: none;
}

.productDetailNameBox{
    border-bottom:1px solid #8C0024
}
.productDetailNameBox .title {
    font: 800 1.3rem 'Century Gothic','微軟正黑體';
    color: #8C0024;
    letter-spacing: 0.125rem;
    line-height: 1.8758rem;
}
.productDetailNameBox .subTitle {
    font: 400 1.1rem 'Century Gothic','微軟正黑體';
    letter-spacing: 0.0625rem;
    line-height: 1.5625rem;
    color: #666;
}
.productDetailNameBox .num{
    font: 400 0.8rem 'Century Gothic','微軟正黑體';
    letter-spacing: 0.1rem;
    line-height: 1.5rem;
}
.productDetailNameBox .num{
    color: #666;  
}
.productDetailNameBox .fontColor{
    color: #f2b725;
}
.productDetailNameBox .fontEn {
    font-size: 1.875rem;
    font-weight: 600;
    line-height: 4rem;
    margin: 0 0 0 0.3125rem;
    color: #f2b725;
}
.longString{
    float: left;
    height: 1.25rem;
    width: 0.125rem;
    background: #8C0024;
    margin: 0.1875rem 0.625rem 0.1875rem 0;
}
.spec{
    font: normal 1.0625rem 'Century Gothic','微軟正黑體';
    line-height: 1.625rem;
    letter-spacing: 0.125rem;
    color: #555;
    margin: 0 0.625rem 0 0;
}
.pro_spec .spec_id{
    border:1px solid #8C0024 !important;
    border-radius:0;
    padding:1px 5px;
    text-align:center;
    width: calc(75% - 2px);
}
.pro_num .spec{
    display: block;
    float: left;
}
.addNum .btnRight,.addNum  .btnLeft{
    border-radius:0;
    width: 1.5625rem;
    height: 1.5625rem;
    font: bolder 0.875rem 'Century Gothic','微軟正黑體';
    line-height: 1.5625rem;
    padding:0;
    background: #8C0024;
    color: #fff;
}
.addNum>input{
    height: 1.5625rem;
    padding: 0.1875rem 0.3125rem;
    border-radius:0;
    width: calc(81% - 4.125rem);
    text-align: center;
    border: solid 0.0625rem #8C0024;
    font: bolder 0.9375rem 'Century Gothic','微軟正黑體';
    color: #888;
}
.ui-btn{
    height: 30px;
    background: none;
    border: solid 1px #8C0024;
    color: #8C0024;
    cursor: pointer;
    font: normal 14px 'Century Gothic','微軟正黑體';
    line-height: 14px;
    letter-spacing: 1px;
   
}
/* **********************三：购物车的样式********************* */
button.myBtn{
  border:solid 1px #8C0024;
  font: normal 0.9rem 'Century Gothic','微軟正黑體';
  line-height: 0.9rem;
  letter-spacing: 1px;
  padding:3px auto;
  margin:auto 1rem;
}
.myBtn:hover{
  background-color:#8C0024;
  color:#fff;
}
/* .myBtn1{margin-right:1rem;}
.myBtn2{margin-left:1rem;} */

</style>

