//引入express模块,创建端口，监听，并托管到静态文件在public
const express=require('express');
var app=express();
app.listen(3000);
app.use(express.static('./public'));

//使用body-parser中间件来将post请求的数据req.body解析为对象
const bodyParser=require('body-parser');
app.use(bodyParser.urlencoded({extended:false}));

//引入链接池
const pool=require('./pool');

//解决跨域访问的配置-->先加载cors模块
const cors=require('cors');
app.use(cors({
	origin:[
		"http://127.0.0.1:3001",
		"http://localhost:3001",
		"http://127.0.0.1:8080",
		"http://localhost:8080"
	],
	credentials:true
}))

//此处开始直接创建路由器  不另外创建路由文件夹。

//功能一：获取用户信息


//功能二：添加用户信息


//功能三：获取商品详情


//功能...