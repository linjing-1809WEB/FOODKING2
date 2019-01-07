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
//功能一：获取页头页尾的图片！
app.get("/getImage",(req,res)=>{
	var rows=[
		{id:1,img_url:"http://127.0.0.1:3000/images/index_base/boydyBG.jpg"},
		{id:2,img_url:"http://127.0.0.1:3000/images/index_base/contentContainerBG.jpg"},
		{id:3,img_url:"http://127.0.0.1:3000/images/index_base/logo.png"},
		{id:4,img_url:"http://127.0.0.1:3000/images/index_base/logo_rwd.png"},
		{id:5,img_url:"http://127.0.0.1:3000/images/index_base/Iso.png"},
		{id:6,img_url:"http://127.0.0.1:3000/images/index_base/IAF.png"},
		{id:7,img_url:"http://127.0.0.1:3000/images/index_base/tel.jpg"},
	];
	res.send(rows);
});
//功能二：获取商品详情——主标题
app.get("/getFname",(req,res)=>{
	var sql="select * from fk_product_fname";
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		res.send(result);
	})
});
//功能三：获取商品详情——主标题、副标题、图片等！
//输出json数组{code:1,pagecount:?,data:result} 说明输出成功，页码数，具体数据！ 
app.get("/getProduct",(req,res)=>{
//获取请求的参数
	var pno=req.query.pno;
	var pageSize=req.query.pageSize;
	var fid=req.query.fid;
	var kwords=req.query.kwords;
	
	
	// console.log("fid="+fid);
	// console.log("pno="+pno);
	// console.log("kwords="+kwords);
	// console.log(fid==undefined && kwords!=undefined);
	// console.log(fid!=undefined && kwords==undefined);
	// console.log(fid==undefined && kwords==undefined);

//验证
	if(!pno)pno=1;
	if(!pageSize)pageSize=18;
	var reg=/^[0-9]{1,2}$/;
	if(!reg.test(pno)){
		res.send({code:-1,msg:"页码格式不正确"});
		return;
	}
//定义obj.code、计算obj.pagecount、获取obj.data!显示页码obj.pno,和查询总数obj.total
//限制显示个数，传开始值offset 和页数 pageSize
var progress=0;
var obj={code:1,pno:pno};
var offset=parseInt((pno-1)*pageSize);
pageSize=parseInt(pageSize);

//分两种情况，一给了fid根据类查找数据，二没有给fid而是给了kwords根据关键字查找数据！
//一、当fid==undefined && kwords!=undefined   应该是按关键字查找
//二、当fid!=undefined && kwords==undefined  应该是按类编号查找
//三、当fid==undefined && kwords==undefined   应该是全部查找！
	if(fid==undefined && kwords!=undefined){//undefined  竟然是true！！！
		kwords=kwords.split(" ");
		var titles=kwords.map(function(){return ` subname like ? `;}).join(" and ");
		kwords.forEach(function(val,i,arr){kwords[i]=`%${val}%`;});
		var sql="select count(pid) as cn from fk_product_family where "+titles;
		pool.query(sql,[kwords],(err,result)=>{
			if(err)throw err;
			obj.pagecount=Math.ceil(result[0].cn/pageSize);
			obj.totals=Math.ceil(result[0].cn);
			progress+=50;
			if(progress==100){res.send(obj);}
		})
		var sql="select * from fk_product_family where  "+titles+"  limit ?,? ";
		pool.query(sql,[kwords,offset,pageSize],(err,result)=>{
			if(err)throw err;
			obj.data=result;
			progress+=50;
			if(progress==100){res.send(obj);console.log("kwords的"+obj);}
		})
	}else if(fid!=undefined && kwords==undefined){
  //按照fid类查找数据的情况！
		var sql="select count(pid) as cn from fk_product_family where family_pid=?";
		pool.query(sql,[fid],(err,result)=>{
			if(err)throw err;
			obj.pagecount=Math.ceil(result[0].cn/pageSize);
			obj.totals=Math.ceil(result[0].cn);
			progress+=50;
			if(progress==100){res.send(obj);}
		})
		var sql="select * from fk_product_family where family_pid=? limit ?,?";
		pool.query(sql,[fid,offset,pageSize],(err,result)=>{
			if(err)throw err;
			obj.data=result;
			progress+=50;
			if(progress==100){res.send(obj);console.log("fid的"+obj);}
		})
	}else if(fid==undefined && kwords==undefined){
		//查找全部数据的情况！
		var sql="select count(pid) as cn from fk_product_family";
		pool.query(sql,(err,result)=>{
			if(err)throw err;
			obj.pagecount=Math.ceil(result[0].cn/pageSize);
			obj.totals=Math.ceil(result[0].cn);
			progress+=50;
			if(progress==100){res.send(obj);}
		})
		var sql="select * from fk_product_family limit ?,?";
		pool.query(sql,[offset,pageSize],(err,result)=>{
			if(err)throw err;
			obj.data=result;
			progress+=50;
			if(progress==100){res.send(obj);console.log("全部的"+obj);}
		})
	}
})


//功能二：添加用户信息


//功能三：


//功能...