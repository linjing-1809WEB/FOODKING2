<template>
  <div class="login">
    <div class="w-100">
      <form action="">
        <ul class="my_ul_width list-unstyled d-flex flex-column justify-content-center">
          <li class="d-flex justify-content-center my_height mt-4">
            <div class="my_secolor my_smallsize my_width text-center">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</div>
            <div class="my_div_width">
              <input class="my_li_width my_smallsize" type="email" placeholder="请输入账号" v-model="uname" id="uname1">
            </div>
          </li>
          <li class="d-flex justify-content-center my_height mt-4">
            <div class="my_secolor my_smallsize my_width text-center">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</div>
            <div class="my_div_width">
            <input class="my_li_width my_smallsize" type="password" placeholder="请输入密码" v-model="upwd" id="upwd1">
            </div>
          </li>
          <li class="d-flex justify-content-center my_height mt-5">
            <div class="my_secolor my_smallsize my_width text-center">验证号码</div>
            <div class="my_div_width">
            <input id="loginInput" v-model="loginInput1" @blur="getLoginInput" class="w-25 my_smallsize" type="text" placeholder="请填入右侧代码">
            <span id="loginSpan" class="d-inline-block w-25" @click="getstr">123456</span>
            </div>
          </li>
        </ul>
        <div class="my_margin d-flex justify-content-center my_div_width">
          <a class="btn btn-transparent border p-1 border-danger w-25 rounded-0 my_smallsize" @click="handeLogin">登录</a>
        </div>
      </form>
    </div>
</div>
</template>
<script>
import {Toast} from "mint-ui"
export default {
  data(){
    return {
      uname:"",
      upwd:"",
      loginInput1:"",
      str:""
    }
  },
  mounted() {
    this.getstr()
  },
  methods:{
    getLoginInput(){
      var loginInput = document.getElementById("loginInput");
      if(this.loginInput1 === this.str){
        Toast("验证通过");
      }else{
        Toast("验证码不正确");
      }
    },
    getstr(){
      var loginSpan = document.getElementById("loginSpan");
      var str=[];
      for(var i=0;i<6;i++){
        str[i]=String.fromCharCode(Math.random()*9+48);
      }
      str=str.join('');
      loginSpan.innerHTML=str;
      this.str=str;
    },
    handeLogin(){
      //1:获取用户输入的用户名和密码
      var n = this.uname;
      var p = this.upwd;
      //2：验证
      var reg = /^[a-z0-9_]{3,12}$/i
      //3:如果验证失败，给提示消息
      if(!reg.test(n)){
        Toast("用户名格式不正确");
        return;
      }
      if(!reg.test(p)){
        Toast("密码格式不正确");
        return;
      }
      //4:发送ajax请求
      var url = "http://127.0.0.1:3000/login?uname="+n+"&upwd="+p;
      this.axios.get(url).then(result=>{
        if(result.data.code == 1 && this.loginInput1 === this.str){
          Toast("登录成功");
          // this.$router.push("/index")
        }else{
          Toast("用户名或密码不匹配")
        }
      })
    }
  }
}
</script>
<style scoped>
.my_width{
  width:20%;
  line-height:2rem;
}
.my_li_width{
  width:80%;
}
.my_ul_width{
  width:80%;
  margin:1px auto;
}
.my_div_width{
  width:80%;
}
.my_height{
  height:2rem;
}
.my_margin{
  margin:5rem auto;
}
</style>

