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
(NULL,'1','炸粉类','卡啦粉D'),
(NULL,'1','炸粉类','卡啦粉'),
(NULL,'1','炸粉类','酵母浆粉'),
(NULL,'1','炸粉类','脆鸡排粉'),
(NULL,'1','炸粉类','酥浆粉'),
(NULL,'1','炸粉类','酥炸粉'),
(NULL,'1','炸粉类','香酥鸡排粉'),
(NULL,'1','炸粉类','香脆鸡粉'),
(NULL,'1','炸粉类','蜜酥地瓜粉'),
(NULL,'1','炸粉类','黄金地瓜粉'),
(NULL,'1','炸粉类','汤翅粉（白）'),
(NULL,'1','炸粉类','杏鲍菇粉'),
(NULL,'1','炸粉类','鱿鱼黏粉'),
(NULL,'1','炸粉类','起酥粉'),
(NULL,'1','炸粉类','金酥粉'),
(NULL,'1','炸粉类','起司脆酥粉'),
(NULL,'1','炸粉类','日式天妇罗炸粉'),
(NULL,'1','炸粉类','长薯条粉'),
(NULL,'2','腌渍粉','脆鸡排浸料'),
(NULL,'2','腌渍粉','香鸡排浸料'),
(NULL,'2','腌渍粉','卡啦鸡浸料'),
(NULL,'2','腌渍粉','盐酥鸡浸料'),
(NULL,'2','腌渍粉','香酥鸡浸料'),
(NULL,'2','腌渍粉','三角骨浸料'),
(NULL,'2','腌渍粉','鱿鱼浸料'),
(NULL,'2','腌渍粉','烤鸡腿浸料'),
(NULL,'2','腌渍粉','烤鸡（手扒鸡）浸料'),
(NULL,'2','腌渍粉','烤鸭浸料'),
(NULL,'2','腌渍粉','羊排调香粉'),
(NULL,'2','腌渍粉','香嫩牛排粉'),
(NULL,'2','腌渍粉','纽澳良浸料'),
(NULL,'2','腌渍粉','纽澳良调味料（孜然）'),
(NULL,'3','撒料类','818胡椒'),
(NULL,'3','撒料类','801、8015胡椒'),
(NULL,'3','撒料类','9系列胡椒'),
(NULL,'3','撒料类','912撒料'),
(NULL,'3','撒料类','香辣椒盐粉'),
(NULL,'3','撒料类','鸡排椒盐（派）'),
(NULL,'3','撒料类','香酥鸡撒料'),
(NULL,'3','撒料类','美味鸡蜜撒料'),
(NULL,'3','撒料类','粗黑胡椒撒料'),
(NULL,'3','撒料类','统一粗黑胡椒盐'),
(NULL,'3','撒料类','美味帝一专用椒盐'),
(NULL,'3','撒料类','咖喱撒料'),
(NULL,'3','撒料类','墨西哥撒料'),
(NULL,'3','撒料类','孜然烤肉撒料'),
(NULL,'3','撒料类','纽奥良撒料'),
(NULL,'3','撒料类','甘梅撒料'),
(NULL,'3','撒料类','白甘梅撒料SL'),
(NULL,'3','撒料类','柠檬清香撒料'),
(NULL,'3','撒料类','香蒜撒料A'),
(NULL,'3','撒料类','香辛料'),
(NULL,'3','撒料类','2561义式撒料'),
(NULL,'3','撒料类','海苔撒料'),
(NULL,'3','撒料类','纯海苔粉（细）'),
(NULL,'3','撒料类','纯海苔粉（粗）'),
(NULL,'3','撒料类','起司撒料'),
(NULL,'3','撒料类','哇沙米撒料'),
(NULL,'3','撒料类','巧克力撒料'),
(NULL,'3','撒料类','抹茶撒料'),
(NULL,'3','撒料类','特级椒盐粉'),
(NULL,'3','撒料类','韩式泡菜撒料'),
(NULL,'3','撒料类','万用椒盐'),
(NULL,'3','撒料类','真馔椒盐'),
(NULL,'4','酱粉类','日式咖喱酱粉'),
(NULL,'4','酱粉类','香浓咖喱酱粉'),
(NULL,'4','酱粉类','起司酱粉'),
(NULL,'4','酱粉类','泰式酸辣酱粉'),
(NULL,'4','酱粉类','黑胡椒酱粉'),
(NULL,'4','酱粉类','蘑菇酱粉'),
(NULL,'4','酱粉类','照烧酱'),
(NULL,'4','酱粉类','照烧酱料粉'),
(NULL,'4','酱粉类','义大利面——红酱粉'),
(NULL,'4','酱粉类','义大利面——白酱粉'),
(NULL,'4','酱粉类','美味鸡蜜酱粉'),
(NULL,'4','酱粉类','碳烤酱粉'),
(NULL,'4','酱粉类','蜜汁烧烤酱粉'),
(NULL,'4','酱粉类','碳烤鱿鱼玉米酱粉'),
(NULL,'4','酱粉类','卤味酱粉'),
(NULL,'4','酱粉类','卤王卤味香料'),
(NULL,'4','酱粉类','卤王麻辣香料'),
(NULL,'5','汤头粉','奶香玉米浓汤'),
(NULL,'5','汤头粉','南瓜浓汤粉'),
(NULL,'5','汤头粉','火锅高汤汤头'),
(NULL,'5','汤头粉','火锅高汤汤头2'),
(NULL,'5','汤头粉','拉面汤头粉'),
(NULL,'5','汤头粉','香浓拉面A粉'),
(NULL,'5','汤头粉','香浓拉面B粉'),
(NULL,'5','汤头粉','大骨面线汤头粉'),
(NULL,'5','汤头粉','柴鱼面线汤头粉'),
(NULL,'5','汤头粉','姜母鸭香料'),
(NULL,'5','汤头粉','姜母鸭汤粉'),
(NULL,'5','汤头粉','麻辣鸭血臭豆腐'),
(NULL,'5','汤头粉','红烧牛肉面汤粉'),
(NULL,'5','汤头粉','关东煮汤粉'),
(NULL,'5','汤头粉','起司牛奶汤粉'),
(NULL,'6','冷饮类','炼乳粉'),
(NULL,'6','冷饮类','咖啡冻粉'),
(NULL,'6','冷饮类','嫩仙草冻粉'),
(NULL,'6','冷饮类','布丁冻粉'),
(NULL,'6','冷饮类','抹茶冻粉'),
(NULL,'6','冷饮类','巧克力冻粉'),
(NULL,'6','冷饮类','奶酪粉'),
(NULL,'6','冷饮类','烧仙草粉'),
(NULL,'6','冷饮类','冬瓜风味茶粉'),
(NULL,'6','冷饮类','奶精'),
(NULL,'7','辣椒粉','辣椒粉'),
(NULL,'7','辣椒粉','辣椒粉A1'),
(NULL,'7','辣椒粉','一级辣粉'),
(NULL,'7','辣椒粉','麻辣撒料'),
(NULL,'7','辣椒粉','川辣撒料'),
(NULL,'7','辣椒粉','辣椒粉（1g/500人）'),
(NULL,'8','烘焙预拌粉','红豆饼粉'),
(NULL,'8','烘焙预拌粉','卡士达馅料'),
(NULL,'8','烘焙预拌粉','巧克力卡士达'),
(NULL,'8','烘焙预拌粉','抹茶卡士达'),
(NULL,'8','烘焙预拌粉','章鱼烧粉'),
(NULL,'8','烘焙预拌粉','章鱼烧酱粉'),
(NULL,'8','烘焙预拌粉','热狗粉'),
(NULL,'8','烘焙预拌粉','鸡蛋仔粉'),
(NULL,'8','烘焙预拌粉','鸡蛋糕粉'),
(NULL,'8','烘焙预拌粉','奶油鸡蛋糕粉'),
(NULL,'8','烘焙预拌粉','松饼粉'),
(NULL,'8','烘焙预拌粉','松饼粉（新）'),
(NULL,'8','烘焙预拌粉','奶油松饼粉'),
(NULL,'9','便当简餐类','排骨粉'),
(NULL,'9','便当简餐类','五香嫩排粉'),
(NULL,'9','便当简餐类','特香嫩排粉'),
(NULL,'9','便当简餐类','特香排骨粉'),
(NULL,'9','便当简餐类','盐酥排骨粉'),
(NULL,'9','便当简餐类','鸡腿粉A'),
(NULL,'9','便当简餐类','特级鸡腿粉'),
(NULL,'9','便当简餐类','鲜味鱼排粉'),
(NULL,'9','便当简餐类','鱼排粉A'),
(NULL,'9','便当简餐类','蒜味鸡腿粉'),
(NULL,'10','小吃类','肉燥特香料'),
(NULL,'10','小吃类','新香肠调香料'),
(NULL,'10','小吃类','水饺料'),
(NULL,'10','小吃类','水煎包馅料'),
(NULL,'10','小吃类','卤味香'),
(NULL,'10','小吃类','卤肉粉'),
(NULL,'10','小吃类','凉卤粉'),
(NULL,'10','小吃类','红烧牛腩料'),
(NULL,'10','小吃类','东山鸭头卤粉'),
(NULL,'11','单品类','美味王高鲜'),
(NULL,'11','单品类','美味王鲜鸡粉'),
(NULL,'11','单品类','日式抹茶粉'),
(NULL,'11','单品类','冬瓜砖'),
(NULL,'11','单品类','可可粉'),
(NULL,'11','单品类','咖啡红茶包'),
(NULL,'11','单品类','果糖粉'),
(NULL,'11','单品类','七味唐辛子'),
(NULL,'12','设备器材','全家桶'),
(NULL,'12','设备器材','油温计'),
(NULL,'12','设备器材','计时器'),
(NULL,'12','设备器材','圆型盐酥鸡漏斗'),
(NULL,'12','设备器材','三角型盐酥鸡漏斗'),
(NULL,'12','设备器材','薯条篮（大）'),
(NULL,'12','设备器材','薯条篮（小）'),
(NULL,'12','设备器材','油捞网'),
(NULL,'12','设备器材','公版防油纸袋（4两）'),
(NULL,'12','设备器材','公版防油纸袋（6两）'),
(NULL,'12','设备器材','公版防油纸袋（8两）'),
(NULL,'12','设备器材','测温枪'),
(NULL,'12','设备器材','粉浆壶'),
(NULL,'12','设备器材','胡椒罐（塑胶）');



/**表2：fk_product_pic-产品图片**/
INSERT INTO fk_product_pic VALUES
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried01.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried02.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried03.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried04.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried05.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried06.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried07.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried08.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried09.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried10.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried11.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried12.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried13.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried14.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried15.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried16.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried17.jpg'),
(NULL,1,'http://127.0.0.1:3000/images/products/Fried/Fried18.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled01.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled02.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled03.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled04.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled05.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled06.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled07.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled08.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled09.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled10.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled11.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled12.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled13.jpg'),
(NULL,2,'http://127.0.0.1:3000/images/products/Pickled/Pickled14.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle01.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle02.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle03.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle04.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle05.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle06.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle07.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle08.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle09.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle10.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle11.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle12.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle13.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle14.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle15.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle16.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle17.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle18.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle19.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle20.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle21.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle22.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle23.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle24.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle25.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle26.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle27.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle28.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle29.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle30.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle31.jpg'),
(NULL,3,'http://127.0.0.1:3000/images/products/Saddle/Saddle32.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce01.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce02.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce03.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce04.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce05.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce06.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce07.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce08.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce09.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce10.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce11.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce12.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce13.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce14.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce15.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce16.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce17.jpg'),
(NULL,4,'http://127.0.0.1:3000/images/products/Sauce/Sauce01.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Saup/Soup01.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Saup/Soup02.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup03.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup04.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup05.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup06.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup07.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup08.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup09.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup10.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup11.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup12.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup13.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup14.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup15.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup16.jpg'),
(NULL,5,'http://127.0.0.1:3000/images/products/Soup/Soup17.jpg');













