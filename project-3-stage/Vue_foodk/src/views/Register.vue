<template>
  <div class="register">
    <div class="w-100">
      <form action="">
        <ul class="my_ul_width list-unstyled d-flex flex-column justify-content-center">
          <li class="d-flex justify-content-center my_height mt-4">
            <div class="my_secolor my_smallsize my_width text-center">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</div>
            <div class="my_div_width">
              <input class="my_li_width my_smallsize" type="text" placeholder="请输入您的账号" v-model="uname" @blur="checkName" id="uname2">
              <p class="vali_info">*</p>
            </div>
          </li>
          <li class="d-flex justify-content-center my_height mt-4">
            <div class="my_secolor my_smallsize my_width text-center">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</div>
            <div class="my_div_width">
              <input class="my_li_width my_smallsize" type="email" placeholder="请输入电子信箱" v-model="email" id="email">
            </div>
          </li>
          <li class="d-flex justify-content-center my_height mt-4">
            <div class="my_secolor my_smallsize my_width text-center">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</div>
            <div class="my_div_width">
            <input class="my_li_width my_smallsize" type="password" placeholder="请输入密码" v-model="upwd" id="upwd2">
            </div>
          </li>
          <li class="d-flex justify-content-center my_height mt-4">
            <div class="my_secolor my_smallsize my_width text-center">确认密码</div>
            <div class="my_div_width">
            <input class="my_li_width my_smallsize" type="password" placeholder="请再次输入密码" v-model="agupwd" id="agupwd">
            </div>
          </li>
          <li class="d-flex justify-content-center my_height mt-4">
            <div class="my_secolor my_smallsize my_width text-center">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机</div>
            <div class="my_div_width">
            <input class="my_li_width my_smallsize" type="tel" placeholder="请输入手机号码" v-model="phone" id="phone">
            </div>
          </li>
          <li class="d-flex justify-content-center my_height mt-5">
            <div class="my_secolor my_smallsize my_width text-center">验证号码</div>
            <div class="my_div_width">
            <input id="registerInput" v-model="registerInput1" @blur="getRegisterInput" class="w-25 my_smallsize" type="text" placeholder="请填入右侧代码">
            <span id="registerSpan" class="d-inline-block w-25" @click="getstr2">123456</span>
            </div>
          </li>
        </ul>
        <div class="my_margin d-flex justify-content-center my_div_width">
          <a class="btn btn-transparent border p-1 border-danger w-25 rounded-0 my_smallsize mr-4">重填</a>
          <a class="btn btn-transparent border p-1 border-danger w-25 rounded-0 my_smallsize" @click="handleReg">提交</a>
        </div>
      </form>
    </div>
  </div>

</template>
<script>
import {Toast} from "mint-ui"
export default {
  data(){
    return{
      uname:"",
      email:"",
      upwd:"",
      agupwd:"",
      phone:"",
      str2:"",
      registerInput1:"",
      isSubmit:false //是否允许提交，设定不允许
    }
  },
  mounted() {
    this.getstr2()
  },
  methods:{
    getRegisterInput(){
      var registerInput = document.getElementById("registerInput");
      if(this.registerInput1 === this.str2){
        Toast("验证通过");
      }else{
        Toast("验证不通过");
      }
    },
    getstr2(){
      var registerSpan = document.getElementById("registerSpan");
      var str2=[];
      for(var i=0;i<6;i++){
        str2[i]=String.fromCharCode(Math.random()*9+48);
      }
      str2=str2.join('');
      registerSpan.innerHTML=str2;
      this.str2=str2;
    },
    checkName(){
      //01,获取用户输入用户名
      var n = this.uname;
      //02,发送ajax请求
      var url = "http://127.0.0.1:3000/exUname?uname="+n;
      this.axios.get(url).then(result=>{
        if(result.data.code >0){
          Toast("欢迎使用");
          this.isSubmit = true;
        }else{
          Toast("该用户名已存在！");
          this.isSubmit = false;
        }
      })
    },
    handleReg(){
      if(!this.isSubmit){
        Toast("用户名已存在，请修改");
        return;
      }
      //1:获取用户输入用户名 账号 密码  确认密码
      //双向绑定
      var n = this.uname;
      var e = this.email;
      var p = this.upwd;
      var p2 = this.agupwd;
      var ph = this.phone;
      console.log(n+"|"+e+"|"+p+"|"+agupwd);
      //2:验证
      var reguname = /^[a-z0-9_]{8,12}$/i;
      var regemail = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
      var regupwd = /^[a-z0-9]{8,12}$/i;
      var regphone = /^1[3-8]\d{9}$/
      if(!reguname.test(n)){
        Toast("用户名格式不正确");
        return;
      } 
      if(!regemail.test(e)){
        Toast("邮箱格式不正确");
        return;
      }
      if(!regupwd.test(p)){
        Toast("密码格式不正确");
        return;
      }
      if(p!= p2){
        Toast("两次密码不一致，请修改");
        return;
      }
      if(!regphone.test(ph)){
        Toast("手机号格式不正确");
        return;
      }
      //3：发送ajax请求
      var url = "http://127.0.0.1:3000/register?uname="+n+"&upwd="+p;
      this.axios.get(url).then(result=>{
        if(result.data.code==1){
          Toast(result.data.msg);
        }else{
          Toast(result.data.msg);
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

