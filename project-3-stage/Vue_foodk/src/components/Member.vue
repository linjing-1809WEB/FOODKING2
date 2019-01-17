<template>
  <div class="member">
    <div class="w-100 p-1 mt-3 text-center my_toplogin">会员中心</div>
    <hr class="my_bgcolor mr-1 ml-1 mt-0 mb-0">
    <div class="w-100">
        <ul class="my_ul_width list-unstyled d-flex flex-column justify-content-center">
          <li class="d-flex justify-content-center my_height mt-4">
            <div class="my_secolor my_smallsize my_width text-center">选择方式</div>
            <div class="my_div_width">
              <div class="my_div_width d-flex justify-content-around">
              <router-link class="btn btn-transparent my_a_width border p-1 border-primary text-primary rounded-0 my_smallsize" to="/member/Login">会员登录</router-link>
              <router-link class="btn btn-transparent my_a_width border p-1 border-danger text-danger rounded-0 my_smallsize" to="/member/Register">会员注册</router-link>
            </div>
            </div>
          </li>
        </ul>
        <login-box :class="{'d-none':loginHide}"></login-box>
        <register-box :class="{'d-none':registerHide}"></register-box>
    </div>
  </div>
</template>

<script>
import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
export default {
  components:{
    "login-box":Login,
    "register-box":Register
  },
  data(){return {
    loginHide:true,
    registerHide:false,
    n:this.$route.params.method
  }},
  created() {
    this.get();
  },
  methods:{
    get(){
      var n=this.$route.params.method;
      if(n=="Login"){
        this.loginHide=false;
        this.registerHide=true;
      }else{
        this.loginHide=true;
        this.registerHide=false;
      }
    }
  },
  watch:{
    $route:{
      handler(to){
        this.n=to.params.method;
        this.get();
      }
    }
  },
}
</script>

<style scoped>
/* login中的样式，包含register */
.my_toplogin{
  font-size:1.2rem;
  color:black;
  font-family:"黑体";
  font-weight:500;
}
.my_width{
  width:20%;
  line-height:2rem;
}

.my_ul_width{
  width:80%;
  margin:1px auto;
}
.my_div_width{
  width:80%;
}
.my_a_width{
  width:30%;
}
.my_height{
  height:2rem;
}
</style>

