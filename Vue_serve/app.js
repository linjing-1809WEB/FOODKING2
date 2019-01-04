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


//功能一：获取商品详情
//输出json数组{code:1,pagecount:?,data:result} 说明输出成功，页码数，具体数据！ 
app.get("/getProduct",(req,res)=>{
	var pno=req.query.pno;
	var pageSize=req.query.pageSize;
	if(!pno)pno=1;
	if(!pageSize)pageSize=18;
	var reg=/^[0-9]{1,2}$/;
	if(!reg.test(pno)){
		res.send({code:-1,msg:"页码格式不正确"});
		return;
	}
	if(!reg.test(pageSize)){
		res.send({code:-2,msg:"页数格式不正确"});
		return;
	}
	//定义obj.code
	var progress=0;
	var obj={code:1};
	//计算obj.pagecount
	var fid=req.query.fid;
	var sql="select count(pid) as cn from fk_product_family where family_pid=?";
		pool.query(sql,[fid],(err,result)=>{
		if(err)throw err;
		obj.pagecount=Math.ceil(result[0].cn/pageSize);
		progress+=50;
		if(progress==100){
			res.send(obj);
		}
	})
	//获取obj.data!
	//限制显示个数，传开始值offset 和页数 pageSize
	var offset=parseInt((pno-1)*pageSize);
	pageSize=parseInt(pageSize);
	var sql="select * from fk_product_family where family_pid=? limit ?,?";
	pool.query(sql,[fid,offset,pageSize],(err,result)=>{
		if(err)throw err;
		obj.data=result;
		progress+=50;
		if(progress==100){
			res.send(obj);
		}
	})
})



//功能二：添加用户信息


//功能三：


//功能...