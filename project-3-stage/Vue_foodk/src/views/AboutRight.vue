<template>
<div class="Rightabout">
  <div class="text-center font-weight-bold mt-2">{{title}}</div> 
  <strong><hr class="my_bgcolor p-0 mt-2 mb-2"></strong>
  <div class="row">
    <!-- 1 -->
    <div class="col-12" v-if="!(img[0]=='')">
      <img :src="img[0]">
    </div>
    <!-- 2 -->
    <div class="col-12" v-if="!(content[0]==''&&img[1]=='')">
      <img :src="img[1]" v-if="!(img[1]=='')">
      <p v-html="content[0]" v-if="!(content[0]=='')"></p>
    </div>
    <!-- 3 -->
    <div class="col-12" v-if="!(content[1]==''&&img[2]==''&&content[2]==''&&content[3]=='')">
      <img :src="img[2]" v-if="!(img[2]=='')">
      <p v-html="content[1]" v-if="!(content[1]=='')"></p>
      <div class="row" v-if="!(content[2]==''&&img[3]=='')">
        <div class="col-5"><img :src="img[3]"></div>
        <div class="col-7"><p v-html="content[2]"></p></div>
      </div>
      <div class="row" v-if="!(content[3]==''&&img[4]=='')">
        <div class="col-7"><p v-html="content[3]"></p></div>
        <div class="col-5"><img :src="img[4]"></div>
      </div>
    </div>
    <!-- 4 -->
    <div class="col-12" v-if="!(content[4]==''&&img[5]=='')">
      <img :src="img[5]" v-if="!(img[5]=='')">
      <p v-html="content[4]" v-if="!(content[4]=='')"></p>
    </div>
    <!-- 5 -->
    <div class="col-12" v-if="!(content[5]==''&&img[6]=='')">
      <img :src="img[6]" v-if="!(img[6]=='')">
      <p v-html="content[5]" v-if="!(content[5]=='')"></p>
    </div>
    <!-- 6 -->
    <div class="col-12" v-if="!(content[6]==''&&img[7]=='')">
      <img :src="img[7]" v-if="!(img[7]=='')">
      <p v-html="content[6]" v-if="!(content[6]=='')"></p>
    </div>
    <!-- 7 -->
    <div class="col-12" v-if="!(img[8]==''&&content[7]==''&&img[9]=='')">
      <img :src="img[8]" v-if="!(img[8]=='')">
      <p v-html="content[7]" v-if="!(content[7]=='')"></p>
      <div class="row" v-if="!(img[9]==''&&content[8]=='')">
        <div class="col-5"><img :src="img[9]"></div>
        <div class="col-7"><p v-html="content[8]"></p></div>
      </div>
    </div>
    <!-- 8 -->
    <div class="col-12" v-if="!(content[9]==''&&img[10]=='')">
      <img :src="img[10]" v-if="!(img[10]=='')">
      <p v-html="content[9]" v-if="!(content[9]=='')"></p>
    </div>
    <!-- 9 -->
    <div class="col-12" v-if="!(img[11]=='')">
      <img :src="img[11]">
    </div>
    <!-- 10 -->
    <div class="col-12" v-if="!(content[10]==''&&img[12]=='')">
      <img :src="img[12]" v-if="!(img[12]=='')">
      <p v-html="content[10]" v-if="!(content[10]=='')"></p>
    </div>
    <!-- 11 -->
    <div class="col-12" v-if="!(content[11]==''&&img[13]=='')">
      <img :src="img[13]" v-if="!(img[13]=='')">
      <p v-html="content[11]" v-if="!(content[11]=='')"></p>
    </div>
    <!-- 12 -->
    <div class="col-12" v-if="!(content[12]==''&&img[14]=='')">
      <img :src="img[14]" v-if="!(img[14]=='')">
      <p v-html="content[12]" v-if="!(content[12]=='')"></p>
    </div>
    <!-- 13 -->
    <div class="col-12" v-if="!(img[15]=='')">
      <img :src="img[15]">
    </div>
    <!-- 14 -->
    <div class="col-12" v-if="!(content[13]=='')">
      <p v-html="content[13]"></p>
    </div>
    <!-- 15 -->
    <div class="col-12" v-if="!(img[16]=='')">
      <img :src="img[16]">
    </div>
    <!-- 16 -->
    <div class="col-12" v-if="!(content[14]=='')">
      <p v-html="content[14]"></p>
    </div>
    <!-- 17 -->
    <div class="col-12" v-if="!(img[17]=='')">
      <img :src="img[17]">
    </div> 
    <!-- 18 -->
    <div class="col-12" v-if="!(img[18] == '')">
      <img :src="img[18]">
    </div> 
  </div>
</div>
</template>
<script>
export default {
  data(){
    return{
      img:[],
      content:[],
      title:"企業簡介"
    }
  },
  created(){
    this.getAboutPic();
    this.getAboutText();
  },
  methods:{
    getAboutText(){
      var aid = this.$route.query.aid;
      var url = "http://176.30.9.140:3000/getAbout";
      this.axios.get(url,{params:{aid}}).then(result=>{
        for(var item of result.data){
          this.content.push(item.text);
        }
      });
    },
    getAboutPic(){
      var aid = this.$route.query.aid;
      var url = "http://176.30.9.140:3000/getAboutPic";
      this.axios.get(url,{params:{aid}}).then(result=>{
        for(var item of result.data){
          this.img.push(item.img);
        }
        this.title=result.data[2].title;
      });
    }
  },
  watch:{
    $route:{
      handler(to){
      this.aid=to.query.aid;
      this.img=[];
      this.content=[];
      this.getAboutPic();
      this.getAboutText();
      }
    },
    immediate:true 
  }
}
</script>

<style scoped>
.Rightabout .row .col-12{
  padding:0;
  margin:5px 0;
}
.Rightabout .row .col-12 p{
  margin:0;
  padding:10px 25px;
  text-indent:25px;
}
.Rightabout .row .col-12 img{
  width:97%;
  margin-left:0.5rem;
}
.Rightabout>.row .col-12 .row img{
  width:80%;
  margin-left:20px;
}
.my_font{
  font-family:'Century Gothic';
  line-height:1.5rem;
  font-size:0.9rem;
  color:#777;
}
.my_bgcolor{background:#8c0024;}
</style>
