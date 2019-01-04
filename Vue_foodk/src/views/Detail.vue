<template>
    <div class="main row my_bg3color mb-5">
      <!-- 左侧 -->
      <div class="col-lg-2 d-lg-inline-block d-sm-none">
        <!-- 产品分类小容器，分2部分：1.产品分类；2产品导航栏 -->
        <!-- 1.产品分类 -->
        <div class="text-center font-weight-bold mt-2">产品分类</div> 
        <hr class="my_bgcolor p-0 mt-2 mb-2">
        <!-- 产品导航栏，用手风琴折叠 -->
        <ul id="p1" class="list-unstyled my_left pl-3">
          <li>
            <a href="page03.1_shop.html" class="active">热销商品</a>
          </li>
          <li>
            <div>
              <a href="#sub_zha" data-toggle="collapse">炸粉类</a>
            </div>
            <div id="sub_zha" class="collapse" data-parent="#p1">
              <ul class="list-unstyled ml-3 productPrice">
                <li><a href="page03.2_shop.html">卡啦粉D</a></li>
                <li><a href="#">酵母浆粉</a></li>
                <li><a href="#">脆鸡排粉</a></li>
                <li><a href="#">酥浆粉</a></li>
                <li><a href="#">香酥鸡排粉</a></li>
                <li><a href="#">蜜酥地瓜粉</a></li>
                <li><a href="#">汤翅粉</a></li>
                <li><a href="#">杏鲍菇粉</a></li>
                <li><a href="#">鱿鱼粘粉</a></li>
                <li><a href="#">起酥粉</a></li>
                <li><a href="#">起酥酥脆粉</a></li>
                <li><a href="#">长薯条粉</a></li>
              </ul>
            </div>
          </li>
          <li>
            <div>
              <a href="#sub_yan" data-toggle="collapse">腌制粉</a>
            </div>
            <div id="sub_yan" class="collapse" data-parent="#p1">
              <ul class="list-unstyled ml-3 productPrice">
                <li><a href="page03.3_shop.html">脆鸡排浸料</a></li>
                <li><a href="#">香鸡排浸料</a></li>
                <li><a href="#">卡啦鸡浸料</a></li>
                <li><a href="#">盐酥鸡浸料</a></li>
                <li><a href="#">香酥鸡浸料</a></li>
                <li><a href="#">三角骨浸料</a></li>
                <li><a href="#">鱿鱼浸料</a></li>
                <li><a href="#">烤鸡腿浸料</a></li>
                <li><a href="#">烤鸭浸料</a></li>
                <li><a href="#">羊排调香粉</a></li>
                <li><a href="#">香嫩牛排粉</a></li>
                <li><a href="#">纽奥良浸料</a></li>
              </ul>
            </div>
          </li>
          <li>
            <div>
              <a href="#sub_sa" data-toggle="collapse">撒料类</a>
            </div>
            <div id="sub_sa" class="collapse" data-parent="#p1">
              <ul class="list-unstyled ml-3 productPrice">
                <li><a href="page03.4_shop.html">818胡椒</a></li>
                <li><a href="#">8015撒料</a></li>
                <li><a href="#">912撒料</a></li>
                <li><a href="#">鸡排椒盐</a></li>
                <li><a href="#">香酥鸡撒料</a></li>
                <li><a href="#">美味鸡蜜撒料</a></li>
                <li><a href="#">甘梅撒料</a></li>
                <li><a href="#">柠檬清香撒料</a></li>
                <li><a href="#">纽奥良撒料</a></li>
                <li><a href="#">孜然烤肉撒料</a></li>
                <li><a href="#">柠檬清香撒料</a></li>
                <li><a href="#">香辛料</a></li>
              </ul>
            </div>
          </li>
          <li>
            <div>
              <a href="#sub_jiang" data-toggle="collapse">酱粉类</a>
            </div>
            <div id="sub_jiang" class="collapse" data-parent="#p1">
              <ul class="list-unstyled ml-3 productPrice">
                <li><a href="#">卡啦粉D</a></li>
                <li><a href="#">卡啦粉D</a></li>
                <li><a href="#">卡啦粉D</a></li>
              </ul>
            </div>
          </li>
          <li>
            <div>
              <a href="#sub_tang" data-toggle="collapse">汤头粉</a>
            </div>
            <div id="sub_tang" class="collapse" data-parent="#p1">
              <ul class="list-unstyled ml-3 productPrice">
                <li><a href="#">卡啦粉D</a></li>
                <li><a href="#">卡啦粉D</a></li>
                <li><a href="#">卡啦粉D</a></li>
              </ul>
            </div>
          </li>
          <li>
            <div>
              <a href="#sub_leng" data-toggle="collapse">冷饮类</a>
            </div>
            <div id="sub_leng" class="collapse" data-parent="#p1">
              <ul class="list-unstyled ml-3 productPrice">
                <li><a href="#">卡啦粉D</a></li>
                <li><a href="#">卡啦粉D</a></li>
                <li><a href="#">卡啦粉D</a></li>
              </ul>
            </div>
          </li>
          <li>
            <div>
              <a href="#sub_la" data-toggle="collapse">辣椒粉</a>
            </div>
            <div id="sub_la" class="collapse" data-parent="#p1">
              <ul class="list-unstyled ml-3 productPrice">
                <li><a href="#">卡啦粉D</a></li>
                <li><a href="#">卡啦粉D</a></li>
                <li><a href="#">卡啦粉D</a></li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
        <!-- 右侧-导航 -->
        <div class="col-lg-10 col-sm-12">
            <!-- 右侧-面包屑导航 -->
            <div>
                <ul class="breadcrumb bg-transparent m-3 p-0 my_secolor">
                    <li class="breadcrumb-item">
                        <a href="#">首页</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#">炸粉类</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#" >長薯條粉</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#">長薯條粉</a>
                    </li>
                </ul>
            </div>
                <!--右侧中的左侧图  -->
                <div class="row">
                    <div class="leftContainer col-lg-7 col-sm-12 mt-0 pt-0">
                    <img class="w-100 my_img2" src="../img/products/product (5).jpg" alt=""> 
                </div>
                <!-- 右侧中的右边区域 -->
                <div class="rightContainer col-lg-5 col-sm-12">
                    <!-- 右边区域的上半截 -->
                    <div class="productDetailNameBox ml-5">
                        <h3 class="title">長薯條粉</h3>
                        <div class="subTitle">Long Potato Fries Powder</div>
                        <div class="num">商品編號 
                            <span>AA1122</span>
                        </div>
                        <div class="num">庫存狀態 
                            <span class="fontColor">現貨供應中</span>
                        </div>
                        <div class="num">售價
                            <span class="fontColor fontEn ">NT.200</span>
                        </div>
                    </div>
                    <!-- 右边区域的下半截 -->
                    <div class="ml-5 mt-4">
                        <div class="pro_spec">
                            <div class="longString"></div>
                            <span class="spec">規格</span>
                            <select class="spec_id">
                                <option value="">選擇規格</option>
                                <option value="">AA1122-長薯條粉</option>
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
                        <div >
                            <button >
                                <span ><i class="mui-icon-extra mui-icon-extra-cart"></i></span>
                                <span>放入購物車</span>
                            </button>
                            <button>
                                     <span ></span>
                                    <span>放入購物車</span>
                            </button>
                        </div>

                    </div>        
                </div>
                <!-- 右侧的商品资讯部分  标签导航 -->
                <ul id="det" class="nav nav-pills">
                    <li class="active"> <a href="#det01" data-toggle="collapse">商品資訊</a> </li>
                    <li> <a href="#det02" data-toggle="collapse">包裝規格</a> </li>
                </ul>
                <div id="det01" class="collapse" data-parent="#det">
                    AA1122 - 長薯條粉 : 30公分世界最長，賣相吸睛、外酥內軟口感好，高溫炸3分鐘，撈起瀝油，超過20公分長的薯條金黃酥脆。絕對能抓住消費者味壘，搭配蜂蜜芥末、紅醬番茄、義式凱薩、海苔以及各式醬料都很棒。
                    
                </div>
                <div id="det02" class="collapse" >
                    <span>每包 1KG</span>
                    <span>每箱 20 包(20KG)</span>
                    
                    

                    
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
    body{
    margin:0;padding:0
}
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

   
.my_img2{
    margin-left:2rem;
    margin-top:0rem;
}
.my_small{
    font-size:0.5rem;
}
.my_imglist_w{
    width:5rem;
    height:5rem;
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
</style>

