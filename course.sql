# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.18)
# Database: course
# Generation Time: 2020-04-08 02:22:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`)
VALUES
	(0,'其它'),
	(1,'人型');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table han_zis
# ------------------------------------------------------------

DROP TABLE IF EXISTS `han_zis`;

CREATE TABLE `han_zis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '简体字',
  `main_pronunciation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主要发音',
  `other_pronunciation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其它发音',
  `transformation` text COLLATE utf8mb4_unicode_ci COMMENT '异体字',
  `oracle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'svg' COMMENT '甲骨文',
  `bronze` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'svg' COMMENT '金文',
  `seal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'svg' COMMENT '篆文',
  `lishu` text COLLATE utf8mb4_unicode_ci COMMENT '隶书',
  `kaishu` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '楷书',
  `simplified` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简体',
  `original_meaning` text COLLATE utf8mb4_unicode_ci COMMENT '字源本义',
  `interpretation` longtext COLLATE utf8mb4_unicode_ci COMMENT '字源释义',
  `liushu` int(10) unsigned DEFAULT '1' COMMENT '六书',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图像',
  `category` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `association` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联汉字',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `han_zis` WRITE;
/*!40000 ALTER TABLE `han_zis` DISABLE KEYS */;

INSERT INTO `han_zis` (`id`, `name`, `main_pronunciation`, `other_pronunciation`, `transformation`, `oracle`, `bronze`, `seal`, `lishu`, `kaishu`, `simplified`, `original_meaning`, `interpretation`, `liushu`, `img`, `category`, `association`)
VALUES
	(1,'人','rén',NULL,'亻','svg','svg','svg',NULL,'人',NULL,'侧面站立的人','甲骨文、金文画的都是侧面站立的人，谦恭礼貌的人。古代文化表示只有具备谦恭礼貌的品质才能称为人。',1,'1_ren',1,'休 企'),
	(2,'卩','jié',NULL,'㔾卪','jpeg','jpeg','jpeg',NULL,'卩',NULL,'跪坐的人','甲骨文、金文画的都是跪坐的人。随着汉字的发展现状卩字大多只作为偏旁使用了。凡是由卩字发展而来的汉字，大多都和人的腿部动作有关。',1,'2_jie',1,'卯 却'),
	(3,'尸','shī',NULL,NULL,'svg','svg','svg',NULL,'尸',NULL,'蹲坐或侧躺的人','甲骨文、金文画的都是蹲坐的人。横着看又像一个侧躺的人。古代坐着代替死者接受祭祀，大多为死者的下属或晚辈，后来引申指死尸。弯曲的部分像屁股，凡以尸发展的字大多和屁股有关系。本字不是尸体的尸，作为偏旁来用，屍才是尸体的尸字。',1,'3_shi',1,'屍 尾'),
	(4,'勹','bāo',NULL,NULL,'jpeg',NULL,'svg',NULL,'勹',NULL,'弯腰搂抱的人','甲骨文画的是弯着身体的人。古人处理秧苗，制作陶罐等都要弯下腰来工作。',1,'4_bao',1,'包'),
	(5,'亡','wáng','wú','亾兦','svg','svg','svg',NULL,'亡',NULL,'死人的骨头','甲骨文画的是一个手持挡板，设法把自己隐藏起来的人。人遇到危害时本能地会将自己藏起来。引申为走失，逃跑，消失不见的意思。\n另一种解释：像死人的骨头，手脚弯曲。亡的形状像把人的肢体弯曲后再下葬；或者是杂草间的白骨。因为有死亡的意思。\n亡还有灭绝，无、不、没等意思。',3,'5_wang',1,'盲 匃'),
	(6,'欠','qiàn',NULL,NULL,'jpeg',NULL,'svg',NULL,'欠',NULL,'张口吐气的人','画得是一个张开吐气的人。像是一个身体不好的人在叹气或打哈欠。引申为欠缺的意义',1,'6_qian',1,'吹'),
	(7,'旡','jì',NULL,NULL,'svg',NULL,'svg',NULL,'旡',NULL,'回头吐气的人','甲骨文画得像一个跪在地上回头吐气的人。和欠字左右对称。表示气逆哽塞。因为气不顺而会去咳气或打嗝。',1,'7_ji',1,'既'),
	(8,'儿','rén',NULL,NULL,'svg','svg',NULL,NULL,'儿',NULL,'双脚站立的人','甲骨文画的是一个双腿站立的人，突出两条腿。本字不是儿童的儿字，而是一个字素，发音为rén作为偏旁使用，一般放在字的下面组成其它字。',1,'8_ren',1,'元 兒 兄 見'),
	(9,'匕','bǐ','pìn',NULL,'svg','svg','svg',NULL,'匕',NULL,'与别人互动的人','甲骨文像一个趴在地上的人。人趴在地上引申为需要与他人互动。',1,'9_bi',1,'比 老 化'),
	(10,'子','zǐ',NULL,NULL,'svg','svg','svg',NULL,'子',NULL,'婴儿','甲骨文底部一个圆代表婴儿的头，头上长着胎发，弯曲的竖线代表婴儿的身体，横线代表婴儿的手。因为小婴儿不会行走所以没有画出婴儿的腿。',1,'10_zi',1,'好'),
	(11,'方','fāng','fáng,fǎng,páng,wǎng,fēng',NULL,'svg','svg','svg',NULL,'方',NULL,'橫木上吊着死人','甲骨文和金文画的都是横木上吊着死人的形状。表示疆界之处设置的禁咒（驱除恶邪的巫术），因此引申为外方（远离之国，外国）之义。\n因为边境也代表方向，因此又引申为方向之义。再引申为路途，方式之义。',1,'11_fang',1,'旁 防'),
	(12,'大','dà','dài,tài',NULL,'svg','svg','svg',NULL,'大',NULL,'正面站立的人','甲骨文和金文画的都是一个正面站立，双臂张开，顶天立地的巨人形象。因此引申为大、盛大、伟大子义。古人把人类看作万物之灵，又有天大地大人亦大之说。',1,'12_da',1,'太'),
	(13,'屰','nì','pò,jí',NULL,'svg','svg','svg',NULL,'屰',NULL,'倒立的人','甲骨文金文画的都是一个正面倒立的人。引申为朝着相反方向而行。',1,'13_ni',1,'逆'),
	(14,'立','lì','wèi',NULL,'svg','svg','svg',NULL,'立',NULL,'站在地上的人','甲骨文金文画的都是正面站立在大地上的人，由大和横线组成。表示站立之义。',3,'14_li',1,'位'),
	(15,'天','tiān',NULL,NULL,'svg','svg','svg',NULL,'天',NULL,'人头','甲骨文金文都画着一个正面的人，再加上大大的头部。人体最上端为头部，来表示头顶上方的东西，引申为天空。',3,'15_tian',1,NULL),
	(16,'辛','xīn',NULL,NULL,'svg','svg','svg',NULL,'辛',NULL,'逆天的人','甲骨文画的是一个正面倒立的人，顶上一条横线。横线表示天，因此表示为逆天人，引申为罪犯。\n另外一种解释，金文像一个带手把的刑具，也引申为罪犯。',3,'16_xin',0,'辨'),
	(17,'夭','yāo','wò,wāi',NULL,'svg','svg','svg',NULL,'夭',NULL,'奔跑的人','甲骨文和金文画得都像一个挥舞手臂奔跑的人形。篆文夭字人的头颈倾斜，因此又引申为过早死亡字义。',1,'17_yao',0,'妖'),
	(18,'文','wén',NULL,NULL,'svg','svg','svg',NULL,'文',NULL,'人身上的纹身','甲骨文金文表示的都是在人胸前的刺青、纹身。古代在身上刺出各式各样的符号，主要表示种族或身份。因此引申为语言符号的总称。',1,'18_wen',0,NULL),
	(19,'巳','sì','yǐ',NULL,'svg','svg','svg',NULL,'巳',NULL,'胎儿','甲骨文画的像一个胎儿，上面一个圆圈代表胎儿的头，下面弯曲的部分表示胎儿的身体。因为胎儿在母亲的身体内手脚不会活动所以没画出来。',1,'19_si',0,NULL),
	(20,'?','tū',NULL,NULL,'','','svg',NULL,NULL,NULL,'婴儿出生的姿势，头朝下','甲骨文画的像一个头朝下正在出生的婴儿。?是字素，作为偏旁使用。与?有关的字大多都表示初生之义。',1,'20_tu',0,'育'),
	(21,'老','lǎo',NULL,'耂','svg','svg','svg',NULL,'老',NULL,'长发老人','甲骨文画的是一个长发之人，拄着拐杖。金文中匕表示趴在地上的人。暗示距离死亡已经不远了。作为字素时常用耂来代替。',3,'21_lao',0,'孝'),
	(22,'女','nǚ','rǔ',NULL,'svg','svg','svg',NULL,'女',NULL,'跪坐女人的姿态','甲骨文画的是一个跪坐的女人，双手重叠，恭敬地祈拜神灵的形状。女子除了义指女性以外，还用作第二人称代词，念ru指代“你”，即”汝“字最初的形态。',1,'22_nv',0,'好'),
	(23,'母','mǔ','mú,wǔ,wú',NULL,'svg','svg','svg',NULL,'母',NULL,'胸部出现双乳的女性','甲骨文女字加了两点表示成熟女性的两个乳房。',1,'23_mu',0,NULL),
	(24,'交','jiāo',NULL,NULL,NULL,'svg','svg',NULL,'交',NULL,'双腿交叉站立的人','金文画的是一个正面双脚交叉站立者的形象。两脚交叉，因此有交错之义。由此又引申出交互，交换，交替、交相等义。交的姿势似乎被视为一种美丽的姿势，因此”佼“、“娇‘有美貌之义。',1,'24_jiao',0,NULL),
	(25,'夫','fū','fú',NULL,'svg','svg','svg',NULL,'夫',NULL,'插着发髻的男人','甲骨文大字加头部加一条横线表示男人头上插着发髻，衣冠整齐。头上插着三支簪加手 （又）为“妻‘，表示女人用手整理发髻，义示婚礼上的新娘。”夫“、”妻“均表示婚礼时的盛装之姿，由此”夫“有了丈夫、男子之义。',1,'25_fu',0,NULL),
	(26,'妻','qī',NULL,NULL,NULL,'svg','svg',NULL,'妻',NULL,'整理发髻的女子','头上插着三支簪加手 （又）为“妻‘，表示女人用手整理发髻，即婚礼时穿着着姿态，义为妻子。”夫“、”妻“均表示婚礼时的盛装之姿。',1,'26_qi',0,NULL),
	(27,'身','shēn','juān',NULL,NULL,'svg','svg',NULL,'身',NULL,'腹部隆起怀有身孕的女人','金文画的是腹部隆起怀有身孕的女人。“身”原来指的是身孕，后来引申为指身体、自身。',1,'27_shen',0,NULL),
	(28,'肉','ròu','rù','⺼',NULL,NULL,'svg',NULL,'',NULL,'肉快','甲骨文画得像肉块的形状。大块的肉，柔嫩的肉，筋络可见。肉之义，也可以指身体、肌肤。甲骨文肉和月十分相像，所以古人就把这两个字混用。现在常见的字带月字旁的部首，大多和肉有关系。',1,'28_rou',0,NULL),
	(29,'心','xīn',NULL,'忄㣺',NULL,'svg','svg',NULL,'',NULL,'心脏','金文画的像心脏的形状。古人相信心脏为生命之源所在，且为思考的器官。',1,'29_xin',0,NULL),
	(30,'囟','xìn',NULL,'田','jpeg','jpeg','svg',NULL,'',NULL,'婴儿的囟门','篆文描述的是婴儿头顶的囟门，与细小的网眼形状相似。\"囟\"和\"甶\"这两个字古字非常相像，后来随着文字的发展后来有关\"囟\'和\'甶\"做偏旁的字就改写成田字。',1,'30_xin',0,'細'),
	(31,'甶','fú',NULL,'田',NULL,NULL,'jpeg',NULL,'',NULL,'鬼的头','篆文描述的就像一个人鬼的头部。\"囟\"和\"甶\"这两个字古字非常相像，后来随着文字的发展后来有关\"囟\'和\'甶\"做偏旁的字就改写成田字。',1,'31_fu',0,'鬼 異'),
	(32,'頁','yè',NULL,NULL,'svg','svg','svg',NULL,'','页','头戴礼帽跪着拜礼的人','甲骨文画的像一个头带着帽子跪着在行礼的人。后来因为读音相同，这个字就假借用于表示页面字义。',1,'32_ye',0,'煩 順 顱'),
	(33,'自','zì',NULL,NULL,'svg','svg','svg',NULL,'',NULL,'鼻子','甲骨文画得是一个鼻子的正视图。人指称自己时，常用手指着自己的鼻子或按鼻头，这样的习惯从古代开始就有。因此引申为自己之义。由于本字后来被假借于表示自己的“自”后来又造出“鼻”字来表示鼻子。',1,'33_zi',0,'鼻 首 息 臭'),
	(34,'目','mù',NULL,NULL,'svg','svg','svg',NULL,'',NULL,'眼睛','古“目”字横长形，现字为竖长形。目是人接触外界的第一器官。看是和他人交往的最初行为，因此引申为精神交流之义。',1,'34_mu',0,'眉 見 相'),
	(35,'耳','ěr','réng',NULL,'svg','svg','svg',NULL,'',NULL,'耳朵','甲骨文金文画得都是耳朵的形状。',1,'35_er',0,'聽 聰'),
	(36,'牙','yá','yà',NULL,NULL,'svg','svg',NULL,'',NULL,'磨牙（大牙）','金文画得是两颗牙齿相互对咬。表示磨牙（大牙）用了咀嚼或撕咬。',1,'36_ya',0,'呀 鴉 雅 芽'),
	(37,'齒','chǐ',NULL,'歯','svg','svg','svg',NULL,'','齿','门牙','甲骨文形象得表示来嘴里的两排牙齿。代表门牙，会影响相貌和说话。金文上半部加了一个脚，下止代表发音（没有意义）。观看动物的牙齿可知其年龄，因此又有年龄之义。',4,'37_chi',0,'龄'),
	(38,'口','kǒu',NULL,NULL,'svg','svg','svg',NULL,'',NULL,'一种祭器曰“祝咒之器”','甲骨文及金文画的是古代的一种祭祀的器具。两条竖线代表2个耳朵，中间的圆圈代码这个器具的口。回来借用这个字来代表口腔。口字作为字素时大多代表这种祭器，但有时指代口腔。\n古汉语中，“祝”、“咒”二字相通，本义都是祝告。殷商时期存在一种“祝咒的文化”。殷人极其频繁地使用祭器进行祝咒祷告。祷词放入祭器中，开始郑重虔诚的祷告。祝告者希望通过祷告给自己带来好运，同时给敌人带来不幸。“祝”或“咒”实际上时一枚硬币的两面，即是护卫性的又是攻击性的，缺一不可。',1,'38_kou',0,'古 右 可 名 各 吿 吉 害 史'),
	(39,'舌','shé',NULL,NULL,'svg',NULL,'svg',NULL,'',NULL,'舌头','甲骨文金文都表示口中吐出舌头知态。指舌头，又表示言语。甲骨文的形态舌头前端分为两杈，表示像蛇的舌头一样灵活，动作剧烈之类动物的舌头。并非人的舌头。传说，汉代人董蔼将书籍抄录于手掌，然后用舌舔食，记忆其内容，人称“舌学”。',1,'39_she',0,NULL),
	(40,'tu','tū',NULL,NULL,'','','svg',NULL,NULL,NULL,'婴儿出生的姿势，头朝下','甲骨文画的像一个头朝下正在出生的婴儿。?是字素，作为偏旁使用。与?有关的字大多都表示初生之义。',1,'20_tu',0,'育'),
	(41,'?','zuǒ',NULL,NULL,'jpeg','jpeg','jpeg',NULL,'',NULL,'左手','甲骨文画的是左手的形状，是“左”字的最初字型。',1,'41_zuo',0,'左 右 有 灰 友'),
	(42,'又','yòu',NULL,NULL,'svg','svg','svg',NULL,'',NULL,'右手','甲骨文画的是右手的形状，是“右”字的最初字型。也表示有的意思，后来又表示再、又的意思，又引申为帮助的意思。',1,'42_you',0,'友'),
	(43,'爪','zhuǎ',NULL,'爫',NULL,'svg','svg',NULL,'',NULL,'抓取的手','金文画的是一只锐利的爪子，像在抓取东西。',1,'43_zhua',0,'采 抓'),
	(44,'手','shǒu',NULL,'扌',NULL,'svg','svg',NULL,'',NULL,'五指手','金文画的像一只有五个手指的手。',1,'44_shou',0,'失 找 抓'),
	(45,'zuo','zuǒ',NULL,NULL,'jpeg','jpeg','jpeg',NULL,'',NULL,'左手','甲骨文画的是左手的形状，是“左”字的最初字型。',1,'41_zuo',0,'左 右 有 灰 友'),
	(46,'攵','pū',NULL,'攴',NULL,'jpeg','jpeg',NULL,'',NULL,'手持器具','金文画地表示一个手拿着一个工具。',1,'46_pu',0,'牧 败'),
	(47,'殳','shū',NULL,NULL,'svg','svg','svg',NULL,'',NULL,'手持武器','金文画得像手持着一种扁平的武器。殳是一种有棱无刃的长形兵器，用于撞击与槌打，是古代五种兵器之一。',1,'47_shu',0,'役 投'),
	(48,'聿','yù',NULL,NULL,'svg','svg','svg',NULL,'',NULL,'手握筆','金文画地像一只握笔的手。聿是筆的本字。',1,'48_yu',0,'筆'),
	(49,'尺','chǐ','chě',NULL,NULL,'svg','svg',NULL,'',NULL,'尺的长度','手指的拇指和中指张开到最大程度后向下之形。上部表示手腕，下边“八”的部分形式手指张开。这个距离表示一尺。',1,'49_chi',0,NULL),
	(50,'寸','cùn','cǔn',NULL,NULL,NULL,'svg',NULL,'',NULL,'寸的长度','“又”与“一”组合之形。“又”乃手指伸开的右手，“又”下加“一”，表示一根手指。一根手指的宽度表示一寸。',3,'50_cun',0,NULL),
	(51,'力','lì',NULL,NULL,NULL,'svg','svg',NULL,'',NULL,'手持耕地农具（耒耜）','金文画得都是手持耒耜（农具）的形状。使用耒耜耕耘与田间，需要众多的劳力，因此“力”有力量、农业、工作、努力之义。',1,'51_li',0,'加 勸 勤 功 助 勞'),
	(52,'丑','chǒu',NULL,NULL,'svg','svg','svg',NULL,'',NULL,'手指动作','甲骨文手加三个点表示与手指动作有关。表示拧、扭之义。与“醜”字没有任何关系。',2,'52_chou',0,'扭 紐 妞 羞'),
	(53,'止','zhǐ',NULL,'龰','svg','svg','svg',NULL,'',NULL,'足迹','甲骨文画的是足迹的形象。脚用力踩出足迹，因此有了停止、停留之义。表示足迹的“止”加足旁，构成“趾”字。“止”乃“趾”之初文。',1,'53_zhi',0,'步'),
	(54,'夂','zhǐ','zhōng','夊','jpeg','jpeg','svg',NULL,'',NULL,'倒置的足迹','甲骨文画的是足迹倒置之形。表示步履从上而下。',1,'54_zhi',0,'各 冬 备'),
	(55,'之','zhī',NULL,'㞢','svg','svg','svg',NULL,'',NULL,'地上的足迹','甲骨文在止下面加一横表示，出发地的足迹。足迹使人联想到足之动作，因此之有了朝向、前行之义。后来“之”字假借其发音用作代词，表示这个之义。',2,'55_zhi',0,NULL),
	(56,'正','zhèng','zhēng','?','svg','svg','svg',NULL,'',NULL,'向着城邑逼近','甲骨文在止上加一个“囗”表示逞强围起的“邑”，后来金文把“囗”改成横线。“正”本义表示向着城邑逼近，义为征伐以及征服。“正”为“征”字初文。向被征服的地方的人民征税，谓之“征”。这样的统治方法谓之“政”。对被征服地的人们施以重压，强制纳税，此谓之“政”，而降这样的统治方法认作正正义。由此“正”有了正确、纠正之义，并有纯正之义。',3,'56_zheng',0,'征 政 证'),
	(57,'足','zú','jù',NULL,'svg','svg','svg',NULL,'',NULL,'膝关节以下的足部','甲骨文上部画的表示膝关节，下部表示足迹之形，表示脚部。“足”并未描画腿部全体，只是用膝、脚代表“足”。',1,'57_zu',0,NULL),
	(58,'疋','shū','pǐ',NULL,'svg','svg','svg',NULL,'',NULL,'膝盖以下部分','甲骨文描画的是膝盖以下的部分。“疋”通“胥“义为相助。',1,'58_shu',0,'蛋 疏'),
	(59,'上','shàng','shǎng','丄 二 ','svg','svg','svg',NULL,'',NULL,'手掌之上','甲骨文底下一条线表示手掌，在手掌之上再画一点表示手掌之上。后来示意的一点演变成纵线，字行变成“丄”，进而纵线旁加点，演化成现在的“上”。由掌上之义引申，泛指各种意义的上方，亦有呈上，登上之义。另外，空间方面用“上”表示高处、上流等。时间方面用“上”表示起点、往昔等。人际关系方面用“上”表示上级、献上、上等、上层等。',2,'59_shang',0,NULL),
	(60,'下','xià',NULL,'丅','svg','svg','svg',NULL,'',NULL,'手掌之下','甲骨文底下一条线表示手掌朝下，在手掌之下再画一点表示手掌之下。后来示意的一点演变成纵线，字行变成“丅”，进而纵线旁加点，演化成现在的“下”。“下”除了指空间之下以外，还有下降、下落、下移、卸下、下马、下车等义。时间方面用“下”义指后、末。此外，“下”还用于形容地位卑下、品质低劣，有低、差之义。',2,'60_xia',0,NULL),
	(61,'乃','nǎi','ǎi','𠄎','svg','svg','svg',NULL,'',NULL,'乳房','甲骨文画得像乳房的侧面轮廓线，右上弯弯的表示乳头。母乳是代代相传，生命初始的物质条件。因而就假借来表示抽象的承接关系。“乃”表示连词、语气词有于是、就、才等义。',1,'61_nai',0,'奶 扔 仍 秀'),
	(62,'而','ér','néng',NULL,'svg','svg','svg',NULL,'',NULL,'头发剃断之人','表示头发剃断结不成发髻之人，即求雨的巫祝之姿。',1,'62_er',0,'耐 需'),
	(63,'舛','chuǎn',NULL,NULL,'svg','svg','svg',NULL,'',NULL,'双脚张开','表示双脚张开的形状',1,'63_chuan',0,NULL),
	(64,'癶','bō',NULL,NULL,'jpeg','jpeg','jpeg',NULL,'',NULL,'双足并排','甲骨文画得是并排的两只脚，示意行将出发。',1,'64_bo',0,'登 癸 '),
	(65,'行','xíng','háng,hàng,héng,xìng','彳','svg','svg','svg',NULL,'',NULL,'十字路口','甲骨文金文描述的是十字路口的形象。宽阔大道交叉的形象。道路上人们东来西往，故有前行、行走之义。交叉路口亦是形形色色的灵来往必经之地，因此，古时在此处举行各种各样的巫术活动。由行走之义引申，“行”泛指各种行为，并表示举行、进行之义。',1,'65_xing',0,NULL),
	(66,'辵','chuò',NULL,'辶','svg','svg','svg',NULL,'',NULL,'一只脚行走在路上',NULL,1,NULL,0,NULL),
	(67,'屮','chè','cǎo',NULL,'svg','svg','svg',NULL,'',NULL,'一棵草','草木出生的形象',1,'67_che',0,NULL),
	(68,'不','bù','fǒu,fōu,fū',NULL,'svg','svg','svg',NULL,'',NULL,'逆天生长的草','古人观察植物的生长，发现所有的花草树木都是朝着天、向上茁壮生长，没见过哪个植物是倒过来长的。甲骨文“屮”呈现一株生长正常的植物，根往下长，但茎干朝上发展，然而，“不”的甲骨文却是一株倒过来生长的植物，上面的一横代表天，更清楚表明其逆天生长的含义。',1,'68_bu',0,NULL),
	(69,'屯','tún','zhūn',NULL,'svg','svg','svg',NULL,'',NULL,'种子萌发新芽','古人认为，种子在冬天休眠期间必定蓄积了极大的能量，芽苞是能量释放出来的结果。于是，“屯”便引申出蓄积或聚集的意思。',1,'69_tun',0,NULL),
	(70,'艸','cǎo',NULL,'草','svg','svg','svg',NULL,'',NULL,'两颗草','“草”古代用“艸”字代表“”',1,'70_cao',0,NULL),
	(71,'卉','',NULL,'芔','svg','svg','svg',NULL,'',NULL,'三颗草','古人以“三”代表多，所以，三根草代表众多草类。“卉”是“草”的总称。',1,'71_hui',0,NULL),
	(72,'丰','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(73,'生','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(74,'朩','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(75,'竹','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(76,'耑','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(77,'木','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(78,'本','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(79,'末','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(80,'丕','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(81,'朱','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(82,'未','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(83,'果','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(84,'咅','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(85,'耒','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(86,'才','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(87,'干','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(88,'于','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(89,'爿','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(90,'片','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(91,'束','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(92,'柬','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(93,'禾','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(94,'來','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(95,'朿','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(96,'帚','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(97,'糸','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(98,'玄','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(99,'幺','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(100,'玆','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(101,'絲','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(102,'己','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(103,'弗','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(104,'夷','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(105,'虫','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(106,'它','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(107,'也','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(108,'龍','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(109,'乙','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(110,'蟲','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(111,'風','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(112,'魚','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(113,'竹','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(114,'冉','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(115,'龜','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(116,'黽','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(117,'隹','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(118,'鳥','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(119,'羽','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(120,'非','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(121,'卂','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(122,'羊','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(123,'牛','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(124,'虎','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(125,'豕','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(126,'犬','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(127,'豸','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(128,'馬','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(129,'象','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(130,'能','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(131,'兔','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(132,'鹿','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(133,'鼠','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(134,'亠','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(135,'高','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(136,'京','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(137,'㐭','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(138,'向','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(139,'宀','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(140,'广','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(141,'穴','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(142,'囪','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(143,'凡','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(144,'井','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(145,'囗','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(146,'用','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(147,'㕣','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(148,'門','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(149,'戶','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(150,'冖','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(151,'冂','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(152,'内','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(153,'入','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(154,'丙','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(155,'网','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(156,'凵','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(157,'皿','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(158,'皀','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(159,'豆','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(160,'臼','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(161,'缶','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(162,'壴','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(163,'畐','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(164,'酉','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(165,'龜','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(166,'亯','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(167,'鼎','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(168,'鬲','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(169,'由','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(170,'其','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(171,'南','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(172,'亼','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(173,'西','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(174,'鹵','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(175,'匚','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(176,'勺','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL),
	(177,'升','',NULL,NULL,'svg','svg','svg',NULL,'',NULL,NULL,NULL,1,NULL,0,NULL);

/*!40000 ALTER TABLE `han_zis` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table liu_shus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `liu_shus`;

CREATE TABLE `liu_shus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `liu_shus` WRITE;
/*!40000 ALTER TABLE `liu_shus` DISABLE KEYS */;

INSERT INTO `liu_shus` (`id`, `name`)
VALUES
	(1,'象形'),
	(2,'指事'),
	(3,'会意'),
	(4,'形声'),
	(5,'转注'),
	(6,'假借');

/*!40000 ALTER TABLE `liu_shus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(19,'2014_10_12_000000_create_users_table',1),
	(20,'2014_10_12_100000_create_password_resets_table',1),
	(21,'2019_08_19_000000_create_failed_jobs_table',1),
	(22,'2019_09_28_024417_create_liu_shus_table',1),
	(23,'2019_09_28_024609_create_categories_table',1),
	(24,'2019_09_28_024639_create_han_zis_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
