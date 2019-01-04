SET NAMES UTF8;
DROP DATABASE IF EXISTS FOODKING;
CREATE DATABASE FOODKING CHARSET=UTF8;
USE FOODKING;

/**用户信息**/
CREATE TABLE fk_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,       #编号
	uname     varchar(32),                    #姓名
	user_name varchar(16),                     #账号——邮箱
	upwd      varchar(32),                     #密码
	phone     varchar(11)                      #手机
); 
/**用户信息**/
CREATE TABLE fk_join(
	uid INT PRIMARY KEY AUTO_INCREMENT,         #编号
	family_uid INT,                             #页面编号
	title      VARCHAR(64),                     #页面标题
	content    VARCHAR(256)   	            #文字内容
); 
/**加盟专区图片**/
CREATE TABLE fk_join_pic(
	uid INT PRIMARY KEY AUTO_INCREMENT,       #编号
	family_uid INT,                           #页面编号
	title      VARCHAR(64),                   #页面标题
	picture    VARCHAR(128)                   #小图片路径
); 

/**表1：fk_product_pic-产品图片**/
CREATE TABLE fk_product_pic(
	pid INT PRIMARY KEY AUTO_INCREMENT,    #产品图片数据库编号
	product_id INT,                        #类编号
	md  VARCHAR(256)                      #中图片路径
#	lg  VARCHAR(256)                       #大图片路径
); 

/**表2：fk_product_family--炸粉类**/
CREATE TABLE fk_product_family(
	pid INT PRIMARY KEY AUTO_INCREMENT,	       #产品编号
	family_pid INT,	      		                 #分类组别=1 炸粉类
	fname VARCHAR(64), 			                   #标题——炸粉类
	subname varchar(64),                       #副标题
	md  VARCHAR(256)                           #中图片路径
);
create table fk_product_fname(
	fid INT PRIMARY KEY AUTO_INCREMENT,	       #产品编号
	fname VARCHAR(64) 			                   #标题——炸粉类
);
create table fk_product_sub(
	fid INT PRIMARY KEY AUTO_INCREMENT,	       #产品编号
	fname VARCHAR(64), 			                   #标题——炸粉类
	sub  varchar(2000)
);

/**表3：fk_product---商品详情页  **/
CREATE TABLE fk_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,	        #产品编号
	family_pid INT,	      		                  #分类组别=1 炸粉类
	title VARCHAR(64),			                    #主标题——炸粉类——卡啦粉
	subtitle VARCHAR(128),		                	#副标题——Crunchy Powder
	pnumber VARCHAR(64),	              	      #商品编号——AA1019
	pstatus INT,                                #库存状态1——供货中0——断货中
	price INT,                                  #商品价格325
	href VARCHAR(128),		                      #href
	pnews VARCHAR(64),                          #商品资讯——按规格写
	spec VARCHAR(64),	                          #规格应该是一个数组
	package VARCHAR(64)                         #包装规格
);



/**数据导入**/
/**1.信息表-导入**/
INSERT INTO fk_user VALUES
(NULL,'美味皇','MWH@163.com','123456','15232569854'),
(NULL,'美味皇','MWH@163.com','123456','15232569854'),
(NULL,'美味皇','MWH@163.com','123456','15232569854'),
(NULL,'美味皇','MWH@163.com','123456','15232569854');


/**表3：fk_product---商品详情页  **/
INSERT INTO fk_product VALUES
(NULL,1,'卡啦粉D','Crunchy Powder D','AA1027',1,325,'products/details/110','适用于炸鸡腿，有咸味，可免腌渍','AA1027——卡啦粉D','每包5KG，每箱4包（20KG）'),
(NULL,1,'卡啦粉','Crunchy Powder','AA1017',1,275,'products/details/120','适用于各体系，可炸卡啦炸鸡，可调浆炸地瓜条、杏鲍菇、及各类蔬菜，带有淡淡奶香味','AA1017——卡啦粉','每包5KG，每箱4包（20KG）'),
(NULL,1,'卡啦粉','Crunchy Powder','AA1019',1,275,'products/details/121','适用于各式美式卡啦炸鸡，无奶香味','AA1019——卡啦粉（奶香粉）','每包5KG，每箱4包（20KG）'),
(NULL,1,'卡啦粉','Crunchy Powder','AA1110',1,275,'products/details/122','适用于各式美式卡啦炸鸡，口感吃起来稍微硬一些','AA1110——卡啦粉SG','每包5KG，每箱4包（20KG）');


/**表1：fk_product_family--炸粉类**/

INSERT INTO fk_product_family VALUES
(NULL,'0','热销商品','巧克力卡士达','http://127.0.0.1:3000/images/products/Baking/Baking03.jpg'),
(NULL,'0','热销商品','章鱼烧粉','http://127.0.0.1:3000/images/products/Baking/Baking05.jpg'),
(NULL,'0','热销商品','脆鸡排粉','http://127.0.0.1:3000/images/products/Fried/Fried04.jpg'),
(NULL,'0','热销商品','排骨粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal01.jpg'),
(NULL,'0','热销商品','脆鸡排浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled01.jpg'),
(NULL,'0','热销商品','香嫩牛排粉','http://127.0.0.1:3000/images/products/Pickled/Pickled12.jpg'),
(NULL,'0','热销商品','特香嫩排粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal03.jpg'),
(NULL,'0','热销商品','蜜汁烧烤酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce13.jpg'),
(NULL,'0','热销商品','蒜味鸡腿粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal10.jpg'),
(NULL,'1','炸粉类','卡啦粉D','http://127.0.0.1:3000/images/products/Fried/Fried01.jpg'),
(NULL,'1','炸粉类','卡啦粉','http://127.0.0.1:3000/images/products/Fried/Fried02.jpg'),
(NULL,'1','炸粉类','酵母浆粉','http://127.0.0.1:3000/images/products/Fried/Fried03.jpg'),
(NULL,'1','炸粉类','脆鸡排粉','http://127.0.0.1:3000/images/products/Fried/Fried04.jpg'),
(NULL,'1','炸粉类','酥浆粉','http://127.0.0.1:3000/images/products/Fried/Fried05.jpg'),
(NULL,'1','炸粉类','酥炸粉','http://127.0.0.1:3000/images/products/Fried/Fried06.jpg'),
(NULL,'1','炸粉类','香酥鸡排粉','http://127.0.0.1:3000/images/products/Fried/Fried07.jpg'),
(NULL,'1','炸粉类','香脆鸡粉','http://127.0.0.1:3000/images/products/Fried/Fried08.jpg'),
(NULL,'1','炸粉类','蜜酥地瓜粉','http://127.0.0.1:3000/images/products/Fried/Fried09.jpg'),
(NULL,'1','炸粉类','黄金地瓜粉','http://127.0.0.1:3000/images/products/Fried/Fried10.jpg'),
(NULL,'1','炸粉类','汤翅粉（白）','http://127.0.0.1:3000/images/products/Fried/Fried11.jpg'),
(NULL,'1','炸粉类','杏鲍菇粉','http://127.0.0.1:3000/images/products/Fried/Fried12.jpg'),
(NULL,'1','炸粉类','鱿鱼黏粉','http://127.0.0.1:3000/images/products/Fried/Fried13.jpg'),
(NULL,'1','炸粉类','起酥粉','http://127.0.0.1:3000/images/products/Fried/Fried14.jpg'),
(NULL,'1','炸粉类','金酥粉','http://127.0.0.1:3000/images/products/Fried/Fried15.jpg'),
(NULL,'1','炸粉类','起司脆酥粉','http://127.0.0.1:3000/images/products/Fried/Fried16.jpg'),
(NULL,'1','炸粉类','日式天妇罗炸粉','http://127.0.0.1:3000/images/products/Fried/Fried17.jpg'),
(NULL,'1','炸粉类','长薯条粉','http://127.0.0.1:3000/images/products/Fried/Fried18.jpg'),
(NULL,'2','腌渍粉','脆鸡排浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled01.jpg'),
(NULL,'2','腌渍粉','香鸡排浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled02.jpg'),
(NULL,'2','腌渍粉','卡啦鸡浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled03.jpg'),
(NULL,'2','腌渍粉','盐酥鸡浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled04.jpg'),
(NULL,'2','腌渍粉','香酥鸡浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled05.jpg'),
(NULL,'2','腌渍粉','三角骨浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled06.jpg'),
(NULL,'2','腌渍粉','鱿鱼浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled07.jpg'),
(NULL,'2','腌渍粉','烤鸡腿浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled08.jpg'),
(NULL,'2','腌渍粉','烤鸡（手扒鸡）浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled09.jpg'),
(NULL,'2','腌渍粉','烤鸭浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled10.jpg'),
(NULL,'2','腌渍粉','羊排调香粉','http://127.0.0.1:3000/images/products/Pickled/Pickled11.jpg'),
(NULL,'2','腌渍粉','香嫩牛排粉','http://127.0.0.1:3000/images/products/Pickled/Pickled12.jpg'),
(NULL,'2','腌渍粉','纽澳良浸料','http://127.0.0.1:3000/images/products/Pickled/Pickled13.jpg'),
(NULL,'2','腌渍粉','纽澳良调味料（孜然）','http://127.0.0.1:3000/images/products/Pickled/Pickled14.jpg'),
(NULL,'3','撒料类','818胡椒','http://127.0.0.1:3000/images/products/Saddle/Saddle01.jpg'),
(NULL,'3','撒料类','801、8015胡椒','http://127.0.0.1:3000/images/products/Saddle/Saddle02.jpg'),
(NULL,'3','撒料类','9系列胡椒','http://127.0.0.1:3000/images/products/Saddle/Saddle03.jpg'),
(NULL,'3','撒料类','912撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle04.jpg'),
(NULL,'3','撒料类','香辣椒盐粉','http://127.0.0.1:3000/images/products/Saddle/Saddle05.jpg'),
(NULL,'3','撒料类','鸡排椒盐（派）','http://127.0.0.1:3000/images/products/Saddle/Saddle06.jpg'),
(NULL,'3','撒料类','香酥鸡撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle07.jpg'),
(NULL,'3','撒料类','美味鸡蜜撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle08.jpg'),
(NULL,'3','撒料类','粗黑胡椒撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle09.jpg'),
(NULL,'3','撒料类','统一粗黑胡椒盐','http://127.0.0.1:3000/images/products/Saddle/Saddle10.jpg'),
(NULL,'3','撒料类','美味帝一专用椒盐','http://127.0.0.1:3000/images/products/Saddle/Saddle11.jpg'),
(NULL,'3','撒料类','咖喱撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle12.jpg'),
(NULL,'3','撒料类','墨西哥撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle13.jpg'),
(NULL,'3','撒料类','孜然烤肉撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle14.jpg'),
(NULL,'3','撒料类','纽奥良撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle15.jpg'),
(NULL,'3','撒料类','甘梅撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle16.jpg'),
(NULL,'3','撒料类','白甘梅撒料SL','http://127.0.0.1:3000/images/products/Saddle/Saddle17.jpg'),
(NULL,'3','撒料类','柠檬清香撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle18.jpg'),
(NULL,'3','撒料类','香蒜撒料A','http://127.0.0.1:3000/images/products/Saddle/Saddle19.jpg'),
(NULL,'3','撒料类','香辛料','http://127.0.0.1:3000/images/products/Saddle/Saddle20.jpg'),
(NULL,'3','撒料类','2561义式撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle21.jpg'),
(NULL,'3','撒料类','海苔撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle22.jpg'),
(NULL,'3','撒料类','纯海苔粉（细）','http://127.0.0.1:3000/images/products/Saddle/Saddle23.jpg'),
(NULL,'3','撒料类','纯海苔粉（粗）','http://127.0.0.1:3000/images/products/Saddle/Saddle24.jpg'),
(NULL,'3','撒料类','起司撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle25.jpg'),
(NULL,'3','撒料类','哇沙米撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle26.jpg'),
(NULL,'3','撒料类','巧克力撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle27.jpg'),
(NULL,'3','撒料类','抹茶撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle28.jpg'),
(NULL,'3','撒料类','特级椒盐粉','http://127.0.0.1:3000/images/products/Saddle/Saddle29.jpg'),
(NULL,'3','撒料类','韩式泡菜撒料','http://127.0.0.1:3000/images/products/Saddle/Saddle30.jpg'),
(NULL,'3','撒料类','万用椒盐','http://127.0.0.1:3000/images/products/Saddle/Saddle31.jpg'),
(NULL,'3','撒料类','真馔椒盐','http://127.0.0.1:3000/images/products/Saddle/Saddle32.jpg'),
(NULL,'4','酱粉类','日式咖喱酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce01.jpg'),
(NULL,'4','酱粉类','香浓咖喱酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce02.jpg'),
(NULL,'4','酱粉类','起司酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce03.jpg'),
(NULL,'4','酱粉类','泰式酸辣酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce04.jpg'),
(NULL,'4','酱粉类','黑胡椒酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce05.jpg'),
(NULL,'4','酱粉类','蘑菇酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce06.jpg'),
(NULL,'4','酱粉类','照烧酱','http://127.0.0.1:3000/images/products/Sauce/Sauce07.jpg'),
(NULL,'4','酱粉类','照烧酱料粉','http://127.0.0.1:3000/images/products/Sauce/Sauce08.jpg'),
(NULL,'4','酱粉类','义大利面——红酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce09.jpg'),
(NULL,'4','酱粉类','义大利面——白酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce10.jpg'),
(NULL,'4','酱粉类','美味鸡蜜酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce11.jpg'),
(NULL,'4','酱粉类','碳烤酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce12.jpg'),
(NULL,'4','酱粉类','蜜汁烧烤酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce13.jpg'),
(NULL,'4','酱粉类','碳烤鱿鱼玉米酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce14.jpg'),
(NULL,'4','酱粉类','卤味酱粉','http://127.0.0.1:3000/images/products/Sauce/Sauce15.jpg'),
(NULL,'4','酱粉类','卤王卤味香料','http://127.0.0.1:3000/images/products/Sauce/Sauce16.jpg'),
(NULL,'4','酱粉类','卤王麻辣香料','http://127.0.0.1:3000/images/products/Sauce/Sauce17.jpg'),
(NULL,'5','汤头粉','奶香玉米浓汤','http://127.0.0.1:3000/images/products/Soup/Soup01.jpg'),
(NULL,'5','汤头粉','南瓜浓汤粉','http://127.0.0.1:3000/images/products/Soup/Soup02.jpg'),
(NULL,'5','汤头粉','火锅高汤汤头','http://127.0.0.1:3000/images/products/Soup/Soup03.jpg'),
(NULL,'5','汤头粉','火锅高汤汤头2','http://127.0.0.1:3000/images/products/Soup/Soup04.jpg'),
(NULL,'5','汤头粉','拉面汤头粉','http://127.0.0.1:3000/images/products/Soup/Soup05.jpg'),
(NULL,'5','汤头粉','香浓拉面A粉','http://127.0.0.1:3000/images/products/Soup/Soup06.jpg'),
(NULL,'5','汤头粉','香浓拉面B粉','http://127.0.0.1:3000/images/products/Soup/Soup07.jpg'),
(NULL,'5','汤头粉','大骨面线汤头粉','http://127.0.0.1:3000/images/products/Soup/Soup08.jpg'),
(NULL,'5','汤头粉','柴鱼面线汤头粉','http://127.0.0.1:3000/images/products/Soup/Soup09.jpg'),
(NULL,'5','汤头粉','姜母鸭香料','http://127.0.0.1:3000/images/products/Soup/Soup10.jpg'),
(NULL,'5','汤头粉','姜母鸭汤粉','http://127.0.0.1:3000/images/products/Soup/Soup11.jpg'),
(NULL,'5','汤头粉','麻辣鸭血臭豆腐','http://127.0.0.1:3000/images/products/Soup/Soup12.jpg'),
(NULL,'5','汤头粉','红烧牛肉面汤粉','http://127.0.0.1:3000/images/products/Soup/Soup13.jpg'),
(NULL,'5','汤头粉','关东煮汤粉','http://127.0.0.1:3000/images/products/Soup/Soup14.jpg'),
(NULL,'5','汤头粉','起司牛奶汤粉','http://127.0.0.1:3000/images/products/Soup/Soup15.jpg'),
(NULL,'6','冷饮类','炼乳粉','http://127.0.0.1:3000/images/products/Drink/Drink01.jpg'),
(NULL,'6','冷饮类','咖啡冻粉','http://127.0.0.1:3000/images/products/Drink/Drink02.jpg'),
(NULL,'6','冷饮类','嫩仙草冻粉','http://127.0.0.1:3000/images/products/Drink/Drink03.jpg'),
(NULL,'6','冷饮类','布丁冻粉','http://127.0.0.1:3000/images/products/Drink/Drink04.jpg'),
(NULL,'6','冷饮类','抹茶冻粉','http://127.0.0.1:3000/images/products/Drink/Drink05.jpg'),
(NULL,'6','冷饮类','巧克力冻粉','http://127.0.0.1:3000/images/products/Drink/Drink06.jpg'),
(NULL,'6','冷饮类','奶酪粉','http://127.0.0.1:3000/images/products/Drink/Drink07.jpg'),
(NULL,'6','冷饮类','烧仙草粉','http://127.0.0.1:3000/images/products/Drink/Drink08.jpg'),
(NULL,'6','冷饮类','冬瓜风味茶粉','http://127.0.0.1:3000/images/products/Drink/Drink09.jpg'),
(NULL,'6','冷饮类','奶精','http://127.0.0.1:3000/images/products/Drink/Drink10.jpg'),
(NULL,'7','辣椒粉','辣椒粉','http://127.0.0.1:3000/images/products/Pepper/Pepper01.jpg'),
(NULL,'7','辣椒粉','辣椒粉A1','http://127.0.0.1:3000/images/products/Pepper/Pepper02.jpg'),
(NULL,'7','辣椒粉','一级辣粉','http://127.0.0.1:3000/images/products/Pepper/Pepper03.jpg'),
(NULL,'7','辣椒粉','麻辣撒料','http://127.0.0.1:3000/images/products/Pepper/Pepper04.jpg'),
(NULL,'7','辣椒粉','川辣撒料','http://127.0.0.1:3000/images/products/Pepper/Pepper05.jpg'),
(NULL,'7','辣椒粉','辣椒粉（1g/500人）','http://127.0.0.1:3000/images/products/Pepper/Pepper06.jpg'),
(NULL,'8','烘焙预拌粉','红豆饼粉','http://127.0.0.1:3000/images/products/Baking/Baking01.jpg'),
(NULL,'8','烘焙预拌粉','卡士达馅料','http://127.0.0.1:3000/images/products/Baking/Baking02.jpg'),
(NULL,'8','烘焙预拌粉','巧克力卡士达','http://127.0.0.1:3000/images/products/Baking/Baking03.jpg'),
(NULL,'8','烘焙预拌粉','抹茶卡士达','http://127.0.0.1:3000/images/products/Baking/Baking04.jpg'),
(NULL,'8','烘焙预拌粉','章鱼烧粉','http://127.0.0.1:3000/images/products/Baking/Baking05.jpg'),
(NULL,'8','烘焙预拌粉','章鱼烧酱粉','http://127.0.0.1:3000/images/products/Baking/Baking06.jpg'),
(NULL,'8','烘焙预拌粉','热狗粉','http://127.0.0.1:3000/images/products/Baking/Baking07.jpg'),
(NULL,'8','烘焙预拌粉','鸡蛋仔粉','http://127.0.0.1:3000/images/products/Baking/Baking08.jpg'),
(NULL,'8','烘焙预拌粉','鸡蛋糕粉','http://127.0.0.1:3000/images/products/Baking/Baking09.jpg'),
(NULL,'8','烘焙预拌粉','奶油鸡蛋糕粉','http://127.0.0.1:3000/images/products/Baking/Baking10.jpg'),
(NULL,'8','烘焙预拌粉','松饼粉','http://127.0.0.1:3000/images/products/Baking/Baking11.jpg'),
(NULL,'8','烘焙预拌粉','松饼粉（新）','http://127.0.0.1:3000/images/products/Baking/Baking12.jpg'),
(NULL,'8','烘焙预拌粉','奶油松饼粉','http://127.0.0.1:3000/images/products/Baking/Baking13.jpg'),
(NULL,'9','便当简餐类','排骨粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal01.jpg'),
(NULL,'9','便当简餐类','五香嫩排粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal02.jpg'),
(NULL,'9','便当简餐类','特香嫩排粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal03.jpg'),
(NULL,'9','便当简餐类','特香排骨粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal04.jpg'),
(NULL,'9','便当简餐类','盐酥排骨粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal05.jpg'),
(NULL,'9','便当简餐类','鸡腿粉A','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal06.jpg'),
(NULL,'9','便当简餐类','特级鸡腿粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal07.jpg'),
(NULL,'9','便当简餐类','鲜味鱼排粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal08.jpg'),
(NULL,'9','便当简餐类','鱼排粉A','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal09.jpg'),
(NULL,'9','便当简餐类','蒜味鸡腿粉','http://127.0.0.1:3000/images/products/Lightmeal/Lightmeal10.jpg'),
(NULL,'10','小吃类','肉燥特香料','http://127.0.0.1:3000/images/products/Snack/Snack01.jpg'),
(NULL,'10','小吃类','新香肠调香料','http://127.0.0.1:3000/images/products/Snack/Snack02.jpg'),
(NULL,'10','小吃类','水饺料','http://127.0.0.1:3000/images/products/Snack/Snack03.jpg'),
(NULL,'10','小吃类','水煎包馅料','http://127.0.0.1:3000/images/products/Snack/Snack04.jpg'),
(NULL,'10','小吃类','卤味香','http://127.0.0.1:3000/images/products/Snack/Snack05.jpg'),
(NULL,'10','小吃类','卤肉粉','http://127.0.0.1:3000/images/products/Snack/Snack06.jpg'),
(NULL,'10','小吃类','凉卤粉','http://127.0.0.1:3000/images/products/Snack/Snack07.jpg'),
(NULL,'10','小吃类','红烧牛腩料','http://127.0.0.1:3000/images/products/Snack/Snack08.jpg'),
(NULL,'10','小吃类','东山鸭头卤粉','http://127.0.0.1:3000/images/products/Snack/Snack09.jpg'),
(NULL,'11','单品类','美味王高鲜','http://127.0.0.1:3000/images/products/Single/Single01.jpg'),
(NULL,'11','单品类','美味王鲜鸡粉','http://127.0.0.1:3000/images/products/Single/Single02.jpg'),
(NULL,'11','单品类','日式抹茶粉','http://127.0.0.1:3000/images/products/Single/Single03.jpg'),
(NULL,'11','单品类','冬瓜砖','http://127.0.0.1:3000/images/products/Single/Single04.jpg'),
(NULL,'11','单品类','可可粉','http://127.0.0.1:3000/images/products/Single/Single05.jpg'),
(NULL,'11','单品类','咖啡红茶包','http://127.0.0.1:3000/images/products/Single/Single06.jpg'),
(NULL,'11','单品类','果糖粉','http://127.0.0.1:3000/images/products/Single/Single07.jpg'),
(NULL,'11','单品类','七味唐辛子','http://127.0.0.1:3000/images/products/Single/Single08.jpg'),
(NULL,'12','设备器材','全家桶','http://127.0.0.1:3000/images/products/Material/Material01.jpg'),
(NULL,'12','设备器材','油温计','http://127.0.0.1:3000/images/products/Material/Material02.jpg'),
(NULL,'12','设备器材','计时器','http://127.0.0.1:3000/images/products/Material/Material03.jpg'),
(NULL,'12','设备器材','圆型盐酥鸡漏斗','http://127.0.0.1:3000/images/products/Material/Material04.jpg'),
(NULL,'12','设备器材','三角型盐酥鸡漏斗','http://127.0.0.1:3000/images/products/Material/Material05.jpg'),
(NULL,'12','设备器材','薯条篮（大）','http://127.0.0.1:3000/images/products/Material/Material06.jpg'),
(NULL,'12','设备器材','薯条篮（小）','http://127.0.0.1:3000/images/products/Material/Material07.jpg'),
(NULL,'12','设备器材','油捞网','http://127.0.0.1:3000/images/products/Material/Material08.jpg'),
(NULL,'12','设备器材','公版防油纸袋（4两）','http://127.0.0.1:3000/images/products/Material/Material09.jpg'),
(NULL,'12','设备器材','公版防油纸袋（6两）','http://127.0.0.1:3000/images/products/Material/Material10.jpg'),
(NULL,'12','设备器材','公版防油纸袋（8两）','http://127.0.0.1:3000/images/products/Material/Material11.jpg'),
(NULL,'12','设备器材','测温枪','http://127.0.0.1:3000/images/products/Material/Material12.jpg'),
(NULL,'12','设备器材','粉浆壶','http://127.0.0.1:3000/images/products/Material/Material13.jpg'),
(NULL,'12','设备器材','胡椒罐（塑胶）','http://127.0.0.1:3000/images/products/Material/Material14.jpg');



/**表2：fk_product_pic-产品图片**/



/**加盟专区内容**/
INSERT INTO fk_join VALUES
(NULL,1,'美味趨勢','近年來，隨著亞洲風席捲國際美食界，台灣小吃頓時成為熱門話題。舉凡台灣常見的各種茶飲（餘韻繞樑的傳統茶飲、五花八門的調味茶飲等）、小吃（人見人愛的炸雞、鹽酥雞、蚵仔煎、雞蛋糕、車輪餅等），融合異國文化或食材形成的美食（揚名國際的珍珠奶茶、受日本飲食影響的火鍋及章魚燒），台灣美食匯集了中華以及異國料理之精華，展現出十足的在地民俗風情與飲食文化，不少外籍人士嘗過之後皆讚不絕口、一吃上癮，深獲國際市場歡迎，來自世界各地的詢價單猶如雪片般飛來，詢問美味王販賣各式台灣小吃的原料及技術事宜。'),
(NULL,1,'美味趨勢','然而，近年國內卻接連爆發重大的食品安全危機，從塑化劑事件（2011）到毒澱粉事件（2013），皆重創台灣美食的國際形象。以外銷德國的珍珠奶茶業者面臨的負面報導為例，若是美味王的客戶，美味王一開始就會建議業者務必自行生產，只要花二十萬就能供應二十家店，完全不需要放防腐劑，還可以自行調整口味及口感，將原料品質完全掌握在自己手中。'),
(NULL,1,'美味趨勢','此外，在話題性過去後，能否維持不墜的銷售量也是業者在投入之前須納入考量的重要因素。'),
(NULL,1,'美味趨勢','美味王堅持以最平實的價格提供客戶世界級的高品質原料，安全、衛生、絕對美味，您除了參照隨原料附上的詳細操作手冊外，尚可撥打諮詢熱線，美味王專人為您解答料理過程中的任何問題。有了我們的支持，您將可以在世界上任何一個角落輕輕鬆鬆端出最道地的台灣口味。'),
(NULL,1,'美味趨勢','不只賣您原料及指導您如何製作商品，美味王將根據您的需求提供專業規劃，協助您進行經營管理。所有美味王開發的產品皆是餐飲界的暢銷保證，具有最高的市場接受度以及長期的銷售魅力，是絕對不會令您失望的金雞母。'),
(NULL,1,'美味趨勢','塑化劑事件爆發時，美味王並未生產政府所列的五大類商品（運動飲料類、果汁飲料類、茶飲料類、果凍及果醬類與膠粉錠狀類），本來是無須送驗證明，但為了讓海內外的廣大客戶群安心，我們主動準備交叉使用的大量原料樣本送驗，送驗的原料占目前生產原料的百分之九十以上。龐大的檢驗費用自然對利潤有所影響，但是美味王向來堅持只要是對的就應該做，而美味王新廠落成後更會陸續引進儀器以自行檢驗，因為美味王不喜歡道歉，既然如此就該做好。'),
(NULL,1,'美味趨勢','不景氣的現在，餐飲業成為許多人開創新事業的選擇，美味王時常接到完全不懂餐飲業的客戶詢問如何踏出第一步。以拉麵店為例，美味王會替客戶列一張清單，從需要甚麼原物料、器材、店面、裝潢，至少要準備多少資金都包括在內。客戶可以托美味王代為準備，也可以依清單自行採買，美味王與一般加盟商不同，不會動輒向客戶收取一兩百萬，強制客戶全包。甚至於籌備完畢後，美味王在人力調派範圍內，會於開幕時派遣人力前去支援一兩天。當然，日後若發生任何技術或經營方面的問題，美味王絕對會協助客戶一同解決。'),
(NULL,2,'技術支援','此外，美味王還提供加工廠設立、餐飲業規劃創設、連鎖事業協助輔導、跨國創業諮詢等服務，以公司專業技術協助客戶利用有效行銷及網路工具從事跨國產業之升級。任何想開創獲利永續經營的餐飲事業，都是我們目前服務及量產原料供應的對象。有別於加盟事業，美味王提供的是專業傳承的服務，讓客戶能完全掌握自己的事業與前途。'),
(NULL,2,'技術支援','研習以美味王示範和講解為主，再由大家實際操作，並配合現場輔導，建議大家過程中拍照、錄影隨時做紀錄。傳授技術輔導，完全學會為止，復習詢問不收任何費用（材料費自付），美味王保證您學成，並提供您創業、轉業、致富的機會，無法赴約時可另約時間或找親友代上以保留權利。'),
(NULL,2,'技術支援','卡拉雞排、卡拉雞腿、卡拉雞翅、傳統鹽酥雞、香酥魷魚、香酥雞排、豆乳雞、轟炸大魷魚'),
(NULL,2,'技術支援','香香雞、甘梅地瓜、雞米花、脆皮雞排'),
(NULL,2,'技術支援','雞蛋糕、紅豆餅、美味鬆餅'),
(NULL,2,'技術支援','基茶類：紅茶、綠茶、青茶、烏龍茶、冬瓜茶'),
(NULL,2,'技術支援','調茶類：蜂蜜綠茶、百香綠、蜂蜜檸檬、蜜茶、冬瓜青、紅、檸檬、冰淇淋紅茶'),
(NULL,2,'技術支援','奶香類：奶茶、茉香奶、冬瓜鮮奶、烏龍奶茶、紅茶拿鐵'),
(NULL,2,'技術支援','口感類：珍珠紅、綠、青、烏龍、布丁奶茶、嫩仙草奶茶、咖啡凍奶茶、百香QQ綠茶、檸檬愛玉'),
(NULL,2,'技術支援','鮮果類：翡翠檸檬、鮮桔檸檬、鮮柚綠茶、柳橙綠茶'),
(NULL,2,'技術支援','熱飲類：薑母鮮奶、薑母奶茶、桂圓紅棗、熱奶茶系列、抹茶拿鐵、巧克力可可'),
(NULL,2,'技術支援','咖啡類：美式咖啡、拿鐵、奶蓋咖啡、焦糖瑪奇朵、摩卡咖啡、卡布其諾咖啡'),
(NULL,3,'物流傳遞','為了迅速且穩定的供貨給分散全球的廣大客戶群，美味王十分重視物流運送過程。以下為您介紹不同地區的送貨方式。'),
(NULL,3,'物流傳遞','台灣地區（台澎金馬）'),
(NULL,3,'物流傳遞','貨品將由「新竹貨運」或「嘉里大榮物流」運送。3000元以上的訂單免收運費，3000元以下的訂單將酌收120元運費'),
(NULL,3,'物流傳遞','中國大陸地區'),
(NULL,3,'物流傳遞','貨品將經由小三通路線運送。請注意：運費時常變動，請務必於出貨前與本公司專責人員確認運費。運費皆依船運公司實報實銷，美味王絕無從中賺取運輸利潤。若您有固定配合的船運公司，本公司亦可將貨品送至指定地點。'),
(NULL,3,'物流傳遞','其他海外地區'),
(NULL,3,'物流傳遞','樣品或少量貨品可由郵局或國際快遞寄出。若客戶能夠提供進口憑證，也可直接為您的大量貨品辦理出口'),
(NULL,3,'物流傳遞','廈門美味皇出貨'),
(NULL,4,'加盟品牌','沿街小巷皆飄香，香酥口感齒難忘，經過專業研發團隊調配出特製口味，上海香酥雞致力於帶給消費者美味、專業、安心、衛生的美食饗宴。'),
(NULL,4,'加盟品牌','原物料均經過嚴格檢驗與把關，肉品透過合格中央調配工廠調製，低溫環境下製造生產，以專業技術嚴格檢控肉品生菌數，一條龍生產過程重視每項細節，顧客享受「上海香酥雞」傳統美味同時，能安心無虞的一口接一口。'),
(NULL,4,'加盟品牌','提供加盟店完整的教育訓練，專業技術平行轉移，進行商圈評估、市場調查，由總部協助規劃行銷。廣告企劃案。加盟後，後勤支援輔導定期派遣專人至加盟店巡店，提供這些問題的解決之道，將動力化為堅強得實力與業績。專業原物料生產公司、技術人員、優質專案規劃團隊作為後盾，協助加盟夥伴，秉持誠信及將心比心的企業核心，攜手為團隊共創未來。'),
(NULL,4,'加盟品牌','「上海香酥雞」加盟總部嚴格把關肉品及油品新鮮度，解決食安疑慮，長期合作的供應商、大量採買、降低成本，從品質出發展現美味背後的價值，帶給消費者傳統的好滋味。'),
(NULL,4,'加盟品牌','心饗上海香酥雞加盟細節'),
(NULL,4,'加盟品牌','世界上每個國家都有屬於代表自己的美食，我們也以「台灣小吃」聞名世界，台灣小吃是台灣生活與文化街頭特色食物的總稱。台灣琳瑯滿目的小吃每個都有著不同風格與特色，不僅僅是美味，平易近人的價錢也是其中因素。'),
(NULL,4,'加盟品牌','本品牌的宗旨為發揚台灣美食文化，取名“旺魔”是用英文onemore的諧音，意思就是美味到讓您會一再光顧，有股擋不住的魔力，就像被惡魔纏身控制般讓人無法輕易掙脫，這滋味美妙得令人發狂，觸電般的快感欲罷不能。'),
(NULL,4,'加盟品牌','旺魔的品項裡香香雞吃起來很嫩，口感又很酥脆，現點現炸，脆皮雞排則是皮脆而不油，肉質美味且鮮嫩多汁，金黃麵衣包裹住雞肉的精華美味，炸出來是非常脆的外皮，裡面則是鮮嫩的雞肉，咬下一口喀嚓作響，外皮酥脆加上鮮嫩肉質相互依偎產生和諧的旋律，雞汁在口中猛烈綻放，吃起來有不同的層次，打破雞排油膩膩的刻板印象。除了脆皮雞排、香香雞外，另外搭配的產品有黃金地瓜跟馬鈴薯條，都是以在地文化為出發點，提高台灣地方特產的能見度，亦能享受美食，何樂而不為。'),
(NULL,4,'加盟品牌','旺魔網站'),
(NULL,4,'加盟品牌','名字有著我們倆一起創造幸福的意涵，兒時美好記憶讓我們攜手重現，濃郁蛋香淺嚐一口，大人小孩都抵擋不住的香氣，香軟綿密的口感忍不住一口接一口，歡迎喜愛小倆雞蛋糕的朋友們，趕快與我們一起共創幸福、甜蜜、美好的心事業。'),
(NULL,4,'加盟品牌','香氣濃郁聞香而來的香氣吸引顧客停下腳步，軟嫩口感的原味卡通雞蛋糕牽引著新舊世代美味的回憶，無法不愛上的幸福滋味。採用無鋁泡打粉，無防腐劑，獨特配方，糕體香軟綿密，外皮酥脆可口。'),
(NULL,4,'加盟品牌','許多剛開始創業的朋友，都會遇到毫無頭緒的困擾，泛指從零開始尋找設備、攤車等狀況，倘若您又不擅於使用網路資訊，情況將更是困難重重，我們為了讓創業者可以更輕鬆、更方便的創業，特為貴賓們提供一套完整的創業計畫。'),
(NULL,4,'加盟品牌','小倆雞蛋糕更加願意盡團隊力量協助需要幫助的家庭，給自己一個機會，與小倆雞蛋糕一同邁向嶄新未來，讓我們並肩努力，為自己也為「家」踏出第一步，相信這一步，會使您變得很不一樣。'),
(NULL,4,'加盟品牌','小倆雞蛋糕加盟細節'),
(NULL,4,'加盟品牌','羅斯特秉持著顧客至上的觀念，讓每一位來消費的客人能感到尊重，才有好的心情來享受美食，願意跟每一位加盟者分享成功的經驗以及傳承最好的技術，不用自己再摸索，無須繁瑣前置作業，讓沒有餐飲經驗的創業新鮮人變成香雞排卡啦炸雞達人！小資金開創你的美好未來。'),
(NULL,4,'加盟品牌','1998年在台北捷運麟光站攤販開始賣起美味的雞排，2008羅斯特在台灣於經濟部智慧財產局已申請商標註冊。'),
(NULL,4,'加盟品牌','秉持著顧客至上的觀念，讓每一位來消費的客人能感到尊重，才有好的心情來享受美食。優惠加盟專案，輕鬆掌握未來。完整教育訓練，專業營運輔導與商圈評估，全套生財器具提供，輔導超過百家加盟店的豐富經驗團隊，是您成功創業唯一選擇!'),
(NULL,4,'加盟品牌','搶雞王源自1989年由美味王食品工業有限公司（以下僅稱美味王）創辦人由日本橫濱市中華街引進台灣，初期以雞胸肉經過醃製形成雞腿肉質的脆皮雞排受到市場上的青睞，由於餐飲業長期使用嫩精因此對於日本這種天然物理技術所造成雞肉軟嫩多汁Ｑ彈可口的肉質，無不感到非常神奇而造成轟動，常常大排長龍瘋狂搶購的場面而得名，故取名為搶雞王炸雞。'),
(NULL,4,'加盟品牌','創業初期，美味王集團並不是以獲利為出發點，而是面對長期的經濟危機與金融風暴致使許多人民失業或是苦無合適的工作可以從事，所以都是無償協助世界各國的餐飲熱愛好者善意使用的原則下取的合法授權使用，因此並無加盟金、權利金及保證金的收取，只是要求其使用者為了保障其品質與服務的能符合用永續經營的標準，必須向美味王公司採購販售食品所製作的相關原料，包括炸雞粉、醃製料、香辛料外撒料等加工製作的基本原料，並受總公司的監督管理。');


/**图片路径导入**/
INSERT INTO fk_join_pic VALUES
(NULL,1,'美味趨勢','img/join/joinMW/joinMW (5).png'),
(NULL,1,'美味趨勢','img/join/joinMW/joinMW (6).png'),
(NULL,1,'美味趨勢','img/join/joinMW/joinMW (7).png'),
(NULL,1,'美味趨勢','img/join/joinMW/joinMW (8).png'),
(NULL,1,'美味趨勢','img/join/joinMW/joinMW (9).png'),
(NULL,1,'美味趨勢','img/join/joinMW/joinMW (10).png'),
(NULL,1,'美味趨勢','img/join/joinMW/joinMW (1).png'),
(NULL,1,'美味趨勢','img/join/joinMW/joinMW (2).png'),
(NULL,1,'美味趨勢','img/join/joinMW/joinMW (3).png'),
(NULL,1,'美味趨勢','img/join/joinMW/joinMW (4).png'),
(NULL,2,'技術支援','img/join/joinJS/joinJS (2).png'),
(NULL,2,'技術支援','img/join/joinJS/jishu2.png'),
(NULL,2,'技術支援','img/join/joinJS/meiwei3.jpg'),
(NULL,2,'技術支援','img/join/joinJS/jishu3.png'),
(NULL,2,'技術支援','img/join/joinJS/jishu4.png'),
(NULL,2,'技術支援','img/join/joinJS/jishu5.png'),
(NULL,2,'技術支援','img/join/joinJS/jishu6.png'),
(NULL,3,'物流傳遞','img/join/joinJS/wuliu1.png'),
(NULL,3,'物流傳遞','img/join/joinJS/wuliu2.png'),
(NULL,3,'物流傳遞','img/join/joinJS/wuliu7.png'),
(NULL,3,'物流傳遞','img/join/joinJS/wuliu8.png'),
(NULL,3,'物流傳遞','img/join/joinJS/wuliu9.png'),
(NULL,3,'物流傳遞','img/join/joinJS/wuliu3.png'),
(NULL,3,'物流傳遞','img/join/joinJS/wuliu10.png'),
(NULL,3,'物流傳遞','img/join/joinJS/wuliu6.png'),
(NULL,3,'物流傳遞','img/join/joinJS/wuliu6.png'),
(NULL,4,'加盟品牌','img/join/joinJS/jiam1.png'),
(NULL,4,'加盟品牌','img/join/joinJS/jiam2.png'),
(NULL,4,'加盟品牌','img/join/joinJS/jiam3.png'),
(NULL,4,'加盟品牌','img/join/joinJS/jiam4.png'),
(NULL,4,'加盟品牌','img/join/joinJS/jiam5.png'),
(NULL,4,'加盟品牌','img/join/joinJS/jiam6.png'),
(NULL,4,'加盟品牌','img/join/joinJS/jiam7.png'),
(NULL,4,'加盟品牌','img/join/joinJS/jiam8.png'),
(NULL,4,'加盟品牌','img/join/joinJS/jiam9.png'),
(NULL,4,'加盟品牌','img/join/joinJS/jiam10.png');
