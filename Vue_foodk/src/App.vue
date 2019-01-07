<template>
  <div id="app" class="my_body">
    <!-- 小屏幕下页面头部my_header_01 -->
		<header-sbox></header-sbox>
		<!-- 响应式container -->
		<div class="container my_wholebg">
      <!-- 大屏幕下页面头部my_header -->
			<header-box @search="search"></header-box>
			<div id="my_martop" class="my_bg3color">
        <!-- 主体内容的占位符 -->
        <router-view :kwords="kwords"></router-view>
    	</div>
      <!-- 大屏幕下页面尾部my_footer -->
      <footer-box></footer-box>
		</div>
    <!-- 小屏幕下页面尾部my_footer_01-->
    <footer-sbox></footer-sbox>
  </div>
</template>


<script>
// @ is an alias to /src
//引入子组件
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
import Header01 from '@/components/Header01.vue'
import Footer01 from '@/components/Footer01.vue'

export default {
	//注册子组件
	components:{
		"header-box":Header,
		"footer-box":Footer,
		"header-sbox":Header01,
		"footer-sbox":Footer01
	},
	data(){return {
		kwords:""
	}},
	created(){
		this.search();
	},
	methods:{
		search(kwords){
			this.kwords=kwords;
			console.log("APP变了吗？"+this.kwords);
		}
	},
	// watch:{
	// 	kwords(){
	// 		this.kwords=this.$route.query.kwords;
	// 		this.search();
	// 	},
	// 	"$route"(to){
	// 		this.kwords=to.query.kwords;
	// 		this.search();
	// 	},
	// 	immediate:true
	// }
}
</script>


<style>
.my_body{background-image:url("http://127.0.0.1:3000/images/index_base/boydyBG.jpg");}
.my_wholebg{
  background-image:url("http://127.0.0.1:3000/images/index_base/contentContainerBG.jpg");
  background-color:#fff;
	background-repeat:no-repeat;
  background-size:100%,3rem;
  box-shadow:0 0 20px black;
}
/* 页面响应式  min-width:1000px-->大屏！ 和  max-width:1000px-->小屏  两种屏幕大小 */
@media screen and (min-width:1000px){
	#my_martop{margin-top:0;}
}
@media screen and (max-width:1000px){
	#my_martop{margin-top:100px;}
}
</style>
