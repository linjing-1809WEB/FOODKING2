<template>
<div class="Rightjoin">
  <!--右边内容 标题横线四个组件都有-->
  <div class="text-center font-weight-bold mt-2">{{title}}</div> 
  <strong><hr class="my_bgcolor p-0 mt-2 mb-2"></strong>
  <!--一个row 15个col-->
  <div class="row my_font">
    <!--一、-->
    <div class="col-12"><img :src="mImg[0]"></div>
    <!--二、 -->
    <div class="col-12" v-if="!(mImg[1]==''&&content[0]=='')">
      <img :src="mImg[1]" v-if="!(mImg[1]=='')">
      <p v-html="content[0]" v-if="!(content[0]=='')"></p>
    </div>
    <!--三、-->
    <div class="col-12" v-if="!(mImg[2]==''&&content[1]=='')">
      <img :src="mImg[2]" v-if="!(mImg[2]=='')">
      <p v-html="content[1]" v-if="!(content[1]=='')"></p>
    </div>
    <!--四、-->
    <div class="col-12" v-if="!(mImg[3]==''&&content[2]=='')">
      <img :src="mImg[3]" v-if="!(mImg[3]=='')">
      <div class="row d-flex align-items-center" v-if="!(mImg[4]==''&&content[2]=='')">
        <div class="col-5"><img :src="mImg[4]"></div>
        <div class="col-7"><p v-html="content[2]"></p></div>
      </div>
    </div>
    <!--五、 -->
    <div class="col-12" v-if="!(mImg[5]==''&&content[3]=='')">
      <img :src="mImg[5]" v-if="!(mImg[5]=='')">
      <div class="row d-flex align-items-center" v-if="!(mImg[6]==''&&content[3]=='')">
        <div class="col-5"><img :src="mImg[6]"></div>
        <div class="col-7"><p v-html="content[3]"></p></div>
      </div>
    </div>
    <!--六、 -->
    <div class="col-12" v-if="!(mImg[7]==''&&content[4]=='')">
      <p v-html="content[4]" v-if="!(content[4]=='')"></p>
      <div class="row d-flex align-items-center" v-if="!(mImg[7]==''&&content[5]=='')">
        <div class="col-5"><img :src="mImg[7]"></div>
        <div class="col-7"><p v-html="content[5]"></p></div>
      </div>
    </div>
    <!--七、 -->
    <div class="col-12" v-if="!(mImg[8]=='')"><img :src="mImg[8]"></div>
    <!--八、-->
    <div class="col-12" v-if="!(mImg[9]==''&&content[6]==''&&mImg[10]=='')">
      <img :src="mImg[9]" v-if="!(mImg[9]=='')">
      <p v-html="content[6]" v-if="!(content[6]=='')"></p>
      <div class="row d-flex align-items-center" v-if="!(mImg[10]==''&&content[7]=='')">
        <div class="col-5"><img :src="mImg[10]"></div>
        <div class="col-7"><p v-html="content[7]"></p></div>
      </div>     
    </div>
    <!--九、-->
    <div class="col-12" v-if="!(mImg[11]==''&&content[8]=='')">
      <img :src="mImg[11]" v-if="!(mImg[11]=='')">
      <p v-html="content[8]" v-if="!(content[8]=='')"></p>
    </div>
    <!--十、-->
    <div class="col-12" v-if="!(mImg[12]==''&&content[9]=='')">
      <img :src="mImg[12]" v-if="!(mImg[12]=='')">
      <p v-html="content[9]" v-if="!(content[9]=='')"></p>
    </div>
    <!--十一、 -->
    <div class="col-12" v-if="!(mImg[13]==''&&content[10]=='')">
      <img :src="mImg[13]" v-if="!(mImg[13]=='')">
      <div class="row d-flex align-items-center" v-if="!(mImg[14]==''&&content[10]=='')">
        <div class="col-7"><p v-html="content[10]"></p></div>
        <div class="col-5"><img :src="mImg[14]"></div>
      </div>
    </div>
    <!--十二、 -->
    <div class="col-12" v-if="!(mImg[15]==''&&content[11]=='')">
      <img :src="mImg[15]" v-if="!(mImg[15]=='')">
      <p v-html="content[11]" v-if="!(content[11]=='')"></p>
    </div>
    <!--十三、-->
    <div class="col-12" v-if="!(mImg[16]=='')"><img :src="mImg[16]"></div>
    <!--十四、-->
    <div class="col-12" v-if="!(mImg[17]=='')"><img :src="mImg[17]"></div>
    <!--十五、-->
    <div class="col-12" v-if="!(content[12]=='')"><p v-html="content[12]"></p></div>
  </div>
</div>
</template>

<script>
export default {
  data(){return {
    mImg:[],
    content:[],
    title:"美味趋势",
    uid:1
  }},
  created(){
    this.getJoinPic();
    this.getJoinText();
  },
  methods:{
    getJoinPic(){
      var uid=this.$route.query.uid;
      var url = "http://176.30.9.140:3000/getJoinPic";
      this.axios.get(url,{params:{uid}}).then(result=>{
        for(var item of result.data){
          this.mImg.push(item.img)
        }
        this.title=result.data[0].title;
      })
    },
    getJoinText(){
      var uid=this.$route.query.uid;
      var url = "http://176.30.9.140:3000/getJoin";
      this.axios.get(url,{params:{uid}}).then(result=>{
        for(var item of result.data){
          this.content.push(item.content)
        }
      })
    }
  },
   watch:{
    $route:{
      handler(to){
        this.uid=to.query.uid;
        this.mImg=[];
        this.content=[];
        this.getJoinPic();
        this.getJoinText();
      }
    },
    immediate:true
   }
}  
</script>

<style>
.Rightjoin>.row .col-12{
  padding:0;
  margin:5px;
}
.Rightjoin>.row .col-12 p{
  margin:0;
  padding:0 25px;
}
.Rightjoin>.row .col-12 img{
  width:97%;
  transition:all 1s;
}
.Rightjoin>.row .col-12 .row img{width:80%;margin-left:20px;}
.Rightjoin>.row .col-12 img:hover{
  transform:scale(1.025);
  transform:translateY(-7px);
}
.Rightjoin p strong{
  color:black;
  font-size:0.9rem;
}
.Rightjoin .my_font{
  font-family:'Century Gothic';
  line-height:1.5rem;
  font-size:0.9rem;
  color:#777;
}
.Rightjoin .my_bgcolor{background:#8c0024;}
</style>
