SET NAMES UTF8;
DROP DATABASE IF EXISTS FOODKING;
CREATE DATABASE FOODKING CHARSET=UTF8;
USE FOODKING;

/**用户信息**/
CREATE TABLE fk_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,   #编号
	uname varchar(32),                    #姓名
	user_name varchar(16),                #账号——邮箱
	upwd varchar(32),                     #密码
	phone varchar(11)                     #手机
); 



/**表1：fk_product_pic-产品图片**/
CREATE TABLE fk_product_pic(
	pid INT PRIMARY KEY AUTO_INCREMENT,    #产品图片数据库编号
	product_id INT,                        #类编号
	md  VARCHAR(256),                      #中图片路径
	lg  VARCHAR(256)                       #大图片路径
); 

/**表2：fk_product_family--炸粉类**/
CREATE TABLE fk_product_family(
	fid INT PRIMARY KEY AUTO_INCREMENT,	       #产品编号
	fname VARCHAR(64) 			                   #标题——炸粉类
);

/**表3：fk_product---商品详情页  **/
CREATE TABLE fk_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,	        #产品编号
	family_pid INT,	      		                  #分类组别=1 炸粉类
	title VARCHAR(64),			                    #主标题——炸粉类——卡啦粉
	subtitle VARCHAR(128),		                	#副标题——Crunchy Powder
	pnumber VARCHAR(64),	              	      #商品编号——AA1019
	pstatus INT                                 #库存状态1——供货中0——断货中
	price INT                                   #商品价格325
	href VARCHAR(128),		                      #href
	pnews VARCHAR(64),                          #商品资讯——按规格写
	spec VARCHAR(64)	                          #规格应该是一个数组
);


/**表3：fk_product---商品详情页  **/
INSERT INTO fk_product VALUES
(NULL,1,'卡啦粉D','Crunchy Powder D','AA1027',1,325,'products/details/110','适用于炸鸡腿，有咸味，可免腌渍','AA1027——卡啦粉D'),
(NULL,1,'卡啦粉','Crunchy Powder','AA1017',1,275,'products/details/120','适用于各体系，可炸卡啦炸鸡，可调浆炸地瓜条、杏鲍菇、及各类蔬菜，带有淡淡奶香味','AA1017——卡啦粉'),
(NULL,1,'卡啦粉','Crunchy Powder','AA1019',1,275,'products/details/121','适用于各式美式卡啦炸鸡，无奶香味','AA1019——卡啦粉（奶香粉）'),
(NULL,1,'卡啦粉','Crunchy Powder','AA1110',1,275,'products/details/122','适用于各式美式卡啦炸鸡，口感吃起来稍微硬一些','AA1110——卡啦粉SG');

/**表1：fk_product_family--炸粉类**/
INSERT INTO fk_product_family VALUES
(NULL,1,'Fried'),
(NULL,2,'Pickled'),
(NULL,3,'Saddle'),
(NULL,4,'Sauce'),
(NULL,5,'Soup'),
(NULL,6,'Drink'),
(NULL,7,'Pepper'),
(NULL,8,'Baking'),
(NULL,9,'Lightmeal'),
(NULL,10,'Snack'),
(NULL,11,'Single'),
(NULL,12,'Material');

/**表2：fk_product_pic-产品图片**/
INSERT INTO fk_product_pic VALUES
(NULL,1,'http://127.0.0.1:3000/images/products/Fried01.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried02.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried03.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried04.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried05.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried06.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried07.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried08.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried09.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried10.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried11.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried12.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried13.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried14.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried15.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried16.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried17.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried18.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled01.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled02.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled03.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled04.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled05.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled06.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled07.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled08.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled09.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled10.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled11.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled12.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled13.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled14.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle01.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle02.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle03.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle04.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle05.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle06.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle07.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle08.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle09.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle10.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle11.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle12.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle13.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle14.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle15.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle16.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle17.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle18.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle19.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle20.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle21.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle22.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle23.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle24.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle25.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle26.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle27.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle28.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle29.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle30.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle31.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle32.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce01.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce02.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce03.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce04.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce05.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce06.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce07.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce08.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce09.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce10.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce11.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce12.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce13.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce14.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce15.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce16.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce17.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce01.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup01.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup02.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup03.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup04.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup05.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup06.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup07.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup08.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup09.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup10.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup11.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup12.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup13.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup14.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup15.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup16.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup17.jpg');


