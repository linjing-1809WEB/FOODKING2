<template>
<!-- 主体内容 -->
<div class="Indexbase mb-5">
  <div id="mylb" class="carousel" data-ride="carousel">
    <div class="carousel-inner text-center ">
    <!-- 轮播图片 -->
      <div class="carousel-item mt-3 mb-3 active">
        <a href="javascript:;"><img class="my_in_width" src="http://176.30.9.140:3000/images/banner_slide/banner01.png" ></a>
      </div>
      <div class="carousel-item mt-3 mb-3">
        <a href="javascript:;"><img class="my_in_width" src="http://176.30.9.140:3000/images/banner_slide/banner02.png" ></a>
      </div>
      <div class="carousel-item mt-3 mb-3">
        <a href="javascript:;"><img class="my_in_width" src="http://176.30.9.140:3000/images/banner_slide/banner03.jpg" ></a>
      </div>
      <div class="carousel-item mt-3 mb-3">
        <a href="javascript:;"><img class="my_in_width" src="http://176.30.9.140:3000/images/banner_slide/banner04.png" ></a>
      </div>
      <div class="carousel-item mt-3 mb-3">
        <a href="javascript:;"><img class="my_in_width" src="http://176.30.9.140:3000/images/banner_slide/banner05.png" ></a>
      </div>
      <div class="carousel-item mt-3 mb-3">
        <a href="javascript:;"><img class="my_in_width" src="http://176.30.9.140:3000/images/banner_slide/banner06.png" ></a>
      </div>
    </div>
    <!-- 轮播指示符 -->
    <ul  class="carousel-indicators">
      <li class="active" data-slide-to="0" data-target="#mylb"></li>
      <li data-slide-to="1" data-target="#mylb"></li>
      <li data-slide-to="2" data-target="#mylb"></li>
      <li data-slide-to="3" data-target="#mylb"></li>
      <li data-slide-to="4" data-target="#mylb"></li>
      <li data-slide-to="5" data-target="#mylb"></li>
    </ul>
    <!-- 轮播箭头 -->
    <a href="" class="carousel-control-prev" data-slide="prev" data-target="#mylb">
      <span class="carousel-control-prev-icon"></span>
    </a>
    <a href="" class="carousel-control-next" data-slide="next" data-target="#mylb">
      <span class="carousel-control-next-icon"></span>
    </a>
  </div>
  
  <!-- 最新消息，热销商品，媒体资讯 -->
  <div class="row ml-3 mr-3">
    <div class="col-lg-4 col-md-12  mt-3">
      <div class="row my_lbxia mr-1">
        <h6 class="col-sm-6">最新消息 <span class="text-muted">News</span></h6>
        <div class="col-sm-6 text-right"><a href="#" class="text-muted">MORE</a></div>
      </div>
      <ul class="list-group list-unstyled mr-3 mt-2">
        <li>
          <p class="text-truncate my_size text-muted my_bode pt-1 pb-1"><span class=" text-danger font-weight-bold mr-2">2017-10-30</span>视客户为创业伙伴，美味王的跨国际,美味王的跨国际</p>
        </li>
        <li>
          <p class=" text-truncate my_size text-muted my_bode pb-1"><span class=" text-danger font-weight-bold mr-2">2017-10-30</span>2018美味王產品報價表下載</p>
        </li>
        <li class="">
          <p class=" text-truncate my_size text-muted my_bode pb-1"><span class=" text-danger font-weight-bold mr-2">2017-10-30</span>2018美味王簡介下載</p>
        </li>
        <li class="">
          <p class=" text-truncate my_size text-muted my_bode pb-1"><span class=" text-danger font-weight-bold mr-2">2017-10-30</span>中秋假期出貨時間公告</p>
        </li>
      </ul>
    </div>
    <div class="col-lg-4 col-md-12 mt-3">
      <div class="row my_lbxia mr-1">
        <div class="col-lg-9 col-sm-6">
          <h6>熱銷商品<span class="text-muted">Hot Products</span></h6>
        </div>
        <div class="col-lg-3 col-sm-6 text-right"><a href="#" class="text-muted">MORE</a></div>
      </div>
      <div class="row h-50 mt-2">
        <div class="col-lg-6"><a href="#"><img src="http://176.30.9.140:3000/images/products/Fried/Fried06.jpg" alt="" class="w-100 h-100"></a></div>
        <div class="col-lg-6 justify-content-end pl-0">
          <b class="font-weight-normal my_small">脆鸡排粉</b>
          <span class="text-muted d-inline-block my_size my_lbx">AB1102 - 鸡排浸料SE : 口感香酥脆的脆皮鸡排，带有蒜味AB1008 - 脆鸡排浸料A : 带点辣的脆皮鸡排，刺激您的味蕾</span>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-md-12 mt-3">
      <div class="row my_lbxia mr-1">
        <h6 class="col-lg-9 col-sm-6">媒体资讯 <span class="text-muted">Media</span></h6>
        <div class="col-lg-3 col-sm-6 text-right"><a href="#" class="text-muted">MORE</a></div>
      </div>
    </div>
  </div>
</div>

</template>

<script>
export default {
  
}
</script>

<style scoped>
/* .Indexbase{height:1000px;} */
.carousel-indicators li{
  width: 1rem;
  height: 1rem;
  border-radius: 50%;
}
.carousel-indicators li.active{
  background:rgba(169,41,64,0.9);
}
.carousel-control-prev{
  width:5%;
  height:20%;
  top:45%;
  background:#dddddd;
}
.carousel-control-next{
  width:5%;
  height:20%;
  top:45%;
  background:#dddddd;
}
.my_small{
  font-size:1.5rem;
  text-decoration:none;
  color:#864422;
}
.my_fsmall{
  font-size:1rem;
  text-decoration:none;
  color:#864422;
}
.my_fsmall:hover{text-decoration:none;}
/* a:hover{text-decoration:none;} */
.my_lbx{line-height:1.5rem;}
.my_lbx0{line-height:2rem;}
.my_in_width{width:96%;}
.my_arrow{
  background:transparent;
}
.carousel-control-prev{left:1.5rem;}
.carousel-control-next{right:1.5rem;}

.my_gray{
  color:#808080;}
.my_size{
  font-size:0.9rem;
}
.my_lbxia{
  border-bottom: 0.1rem solid rgba(169,41,64,0.9);
}
.my_bode{
  border-bottom:1px dashed #4e555b;
}
a{text-decoration:none;}

.breadcrumb-item + .breadcrumb-item::before {
  display: inline-block;
  padding-right: 0.5rem;
  padding-left: 0.5rem;
  color: #6c757d;
  content: ">";}
#prev:hover{
  background:#8c0024;
}
</style>
