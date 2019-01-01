<template>

<!-- 主体内容 -->
<div class="row my_bg3color mb-5">
  <div class="col-lg-2 d-lg-inline-block d-sm-none">
    <div class="text-center font-weight-bold mt-2">消息列表</div> 
    <hr class="my_bgcolor p-0 mt-2 mb-2">
      <ul class="list-unstyled text-center">
        <li ><a href="page02.1_news.html" class="my_secolor my_lbx0">最新列表</a></li>
        <li ><a href="page02.2_news.html" class="my_secolor my_lbx0">檔案下載</a></li>
        <li ><a href="page02.3_news.html" class="my_secolor my_lbx0">媒體報導</a></li>
      </ul>
  </div>
  <div class="col-lg-10 col-sm-12">
        <div class="text-center font-weight-bold mt-2">最新下载</div> 
        <hr class="my_bgcolor p-0 mt-2 mb-2">
      <div>
          <ul class="breadcrumb bg-transparent my_fsmall">
              <li class="breadcrumb-item">
                  <a href="#" class="my_secolor">首頁</a>
              </li>
              <li class="breadcrumb-item">
                  <a href="#" class="my_secolor"> 檔案下載</a>
              </li>
              <li class="breadcrumb-item">
                  <a href="#" class="my_secolor">2018美味王產品報價表(A4)</a>
              </li>
          </ul>

      </div>
      <img class="img-fluid w-100" src="../img/index/2018goodfood2.jpg" alt="">
      <p style="color:red">2018美味王產品報價表下載</p>
      <div class="d-flex justify-content-center mb-5">
      <input id="prev" type="button" class="w-25 " value="回上一頁">
      </div>
  </div>
</div>

</template>

<script>
export default {
    data(){
      return {
        kwords:""
      }
    },
    methods:{
      search(){
        this.$router.push("/products/"+this.kwords);
      }
    }
  }
</script>

<style scoped>
#mylb .carousel-indicators li{
    width: 1rem;
    height: 1rem;
    border-radius: 50%;
}
#mylb .carousel-indicators.active{
    background:#0aa1ed;
}
#mylb .carousel-control-prev{
    width:5%;
    height:20%;
    top:45%;
    background:#dddddd;
}
#mylb .carousel-control-next{
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
