<template>
<!-- 页面尾部01 -->
<div class="my_footer_01 my_bgcolor">
    <ul class="list-unstyled d-flex justify-content-around m-0">
        <li class="text-center m-0">
        <img class="my_long_height5" src="../img/index_base/product_detail_icon_d.png">
        <p class="p-0 mb-1 text-white">会员中心</p>
        </li>
        <li class="text-center m-0">
        <img class="my_long_height5" src="../img/index_base/product_detail_icon_bao.png">
        <p class="p-0 mb-1 text-white">商品专区</p>
        </li>
        <li class="text-center m-0">
        <img class="my_long_height5" src="../img/index_base/product_detail_img7.png">
        <p class="p-0 mb-1 text-white">购物车</p>
        </li>
        <li class="text-center m-0">
        <img class="my_long_height5" src="../img/index_base/product_detail_icon_g.png">
        <p class="p-0 mb-1 text-white">历史订单</p>
        </li>
    </ul>
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
/* 背景颜色 */
.my_bgcolor{background:rgba(169,41,64,0.9);}

.my_footer_01>ul img{
    height:20px;
    width:20px;
    margin:5px 0;
}
/* 页面响应式  min-width:1000px-->大屏！ 和  max-width:1000px-->小屏  两种屏幕大小 */
@media screen and (min-width:1000px){
.my_footer_01{display:none;}
}
@media screen and (max-width:1000px){
.my_footer_01{
    width:100%;
    height:50px;
    position:fixed;
    z-index:10;
    bottom:0;
    }
}
</style>