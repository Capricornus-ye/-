SET NAMES UTF8;
DROP DATABASE IF EXISTS lc;
CREATE DATABASE lc CHARSET=UTF8;
USE lc;

CREATE TABLE `lc_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(24) DEFAULT NULL,
  `upwd` varchar(16) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `lc_user` (`uid`, `uname`, `upwd`, `phone`) VALUES
(1, 'tom', '123456', '13211552846');

CREATE TABLE `lc_list` (
  `pid` int(11) NOT NULL,
  `brand` varchar(36) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `lc_list` (`pid`, `brand`, `price`, `title`, `details`, `pic`) VALUES
(1, '小众之地', '1170.00', '17Nandan Road花香调香水 | 感受植物香气的清新迷人', '灵感来自创始人对上海桂花的印象，迷朦的桂花香，夹杂了桂花、绿草、城市...', 'img/263996.jpg'),
(2, 'Seletti', '1422.00', '意大利铝制狼头骨摆件 | 时髦了半个世纪的网红家居品牌', '造型独特，奇珍异宝系列摆件，每一件都独一无二...', 'img/263957.jpg'),
(3, 'Diem', '118.00', '1日本植物精萃漱口水500ml | 畅销亚洲的口腔护理品牌', '畅销全球的口腔护理品牌，两款薄荷味可选，植物精华，快速清新口气，温和清洁...', 'img/263986.jpg'),
(4, 'CHOCO CONCERT', '1380.00', '明星同款白色休闲运动鞋 | Gucci同款进口皮革 男女同款', '与Gucci品牌Ace系列运动鞋采用相同皮革，青春时尚...', 'img/263947.jpg'),
(5, 'Seletti', '661.00', '意大利设计师心动花瓶 | 放桌上 让心花怒放', '造型独特，放桌上，心花怒放，送女友首选的浪漫礼物...', 'img/263951.jpg'),
(6, 'B&O', '2298.00', 'Earset挂耳式无线蓝牙 | 适合耳朵的每一个形状', '经典的三轴转向提高舒适感，精密度和灵敏度，三款可选...', 'img/263961.jpg'),
(7, 'GLAME EVER', '699.00', '多枚菱形大理石吊坠手链 | 别有时尚质感 精致简约', '别有时尚质感，精致简约，经典大理石纹理，侧面镶嵌多枚锆石，细节尽显璀璨...', 'img/263891.jpg'),
(8, 'K-Bright', '328.00', '开心系列心形戒指 | 灵动的像张开心的翅膀', '深入肌肤底层，留下丝绒般的肤感，有效亮颜，柔肤...', 'img/263938.jpg'),
(9, 'VIVALANDS', '680.00', '17Nandan Road花香调香水 | 感受植物香气的清新迷人', '925银镀18K金，戒圈可调节，心形可开合，寓意开心...', 'img/263906.jpg'),
(10, '观夏SUMMER Lab', '298.00', '玫瑰灵药甜蜜香薰礼盒 | 世界知名调香师合作研制', '玫瑰香与粉晶石的神秘邂逅，让你多攒些恋爱的运气 ...', 'img/263887.jpg'),
(11, 'MOBOH', '339.00', '原创设计师 3D立体耳钉 | 耳畔的与众不同和时尚精致', '性外观男女通用，银针耳钉防过敏，时尚出街单品...', 'img/263818.jpg'),
(12, 'AYTM', '849.00', '放在哪里都好看置物架 | 随意收纳 与周围融为一体', '设计繁复而又优雅，高品质材料和精益求精的细节...', 'img/263878.jpg'),
(13, 'MANITO', '298.00', '真丝睡眠眼罩 红心提花款 | 柔软桑蚕丝 安享亲肤睡眠', '丝滑桑蚕丝，安享亲肤睡眠，Shape of Love系列，6A级桑蚕丝舒适亲肤，安享睡...', '.img/263865.jpg'),
(14, 'Lucia Berutto', '960.00', '时尚双层加绒睡衣套装 | 精致 从一件舒适睡衣开始', '选用中性风格，外观时尚挺括，让整体更加时尚精致...', 'img/263771.jpg'),
(15, 'handhandhand', '188.00', '天然大豆手工香氛蜡烛 | 有故事的艺术香薰蜡烛', '有神秘木质香，诱人玫瑰香，清甜浆果和浓郁晚玉香可选...', 'img/263806.jpg'),
(16, 'SUDIO', '749.00', 'NIVA迷你入耳式蓝牙耳机 | 可连接2台不同的手机', '指触操控，控制音乐，接听电话，激活多种语音功能...', 'img/263717.jpg'),
(17, 'ITO', '1098.00', 'Pistachio超轻旅行箱-炭黑磨砂款 | 德国红点奖 高颜值又实用', 'PISTACHIO系列超轻旅行箱，从东方建筑生活美学出发，诚实遵循产品实用性，...', 'img/250807.jpg'),
(18, 'YǏN隐', '1260.00', '莫比乌斯系列全金手链 | 手腕间流动的精致优雅', '通体18K真金材质，不会变质褪色，15+2cm延长链', 'img/263746.jpg');

CREATE TABLE `lc_index_product` (
  `pid` int(11) NOT NULL,
  `brand` varchar(36) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `lc_index_product` (`pid`, `brand`, `price`, `title`, `details`, `pic`) VALUES
(1, '小众之地', '1170.00', '17Nandan Road花香调香水 | 感受植物香气的清新迷人', '灵感来自创始人对上海桂花的印象，迷朦的桂花香，夹杂了桂花、绿草、城市...', 'img/263996.jpg'),
(2, 'Seletti', '1422.00', '意大利铝制狼头骨摆件 | 时髦了半个世纪的网红家居品牌', '造型独特，奇珍异宝系列摆件，每一件都独一无二...', 'img/263957.jpg'),
(3, 'Diem', '118.00', '1日本植物精萃漱口水500ml | 畅销亚洲的口腔护理品牌', '畅销全球的口腔护理品牌，两款薄荷味可选，植物精华，快速清新口气，温和清洁...', 'img/263986.jpg'),
(4, 'CHOCO CONCERT', '1380.00', '明星同款白色休闲运动鞋 | Gucci同款进口皮革 男女同款', '与Gucci品牌Ace系列运动鞋采用相同皮革，青春时尚...', 'img/263947.jpg'),
(5, 'Seletti', '661.00', '意大利设计师心动花瓶 | 放桌上 让心花怒放', '造型独特，放桌上，心花怒放，送女友首选的浪漫礼物...', 'img/263951.jpg'),
(6, 'B&O', '2298.00', 'Earset挂耳式无线蓝牙 | 适合耳朵的每一个形状', '经典的三轴转向提高舒适感，精密度和灵敏度，三款可选...', 'img/263961.jpg'),
(7, 'GLAME EVER', '699.00', '多枚菱形大理石吊坠手链 | 别有时尚质感 精致简约', '别有时尚质感，精致简约，经典大理石纹理，侧面镶嵌多枚锆石，细节尽显璀璨...', 'img/263891.jpg'),
(8, 'K-Bright', '328.00', '开心系列心形戒指 | 灵动的像张开心的翅膀', '深入肌肤底层，留下丝绒般的肤感，有效亮颜，柔肤...', 'img/263938.jpg'),
(9, 'VIVALANDS', '680.00', '17Nandan Road花香调香水 | 感受植物香气的清新迷人', '925银镀18K金，戒圈可调节，心形可开合，寓意开心...', 'img/263906.jpg'),
(10, '观夏SUMMER Lab', '298.00', '玫瑰灵药甜蜜香薰礼盒 | 世界知名调香师合作研制', '玫瑰香与粉晶石的神秘邂逅，让你多攒些恋爱的运气 ...', 'img/263887.jpg'),
(11, 'MOBOH', '339.00', '原创设计师 3D立体耳钉 | 耳畔的与众不同和时尚精致', '性外观男女通用，银针耳钉防过敏，时尚出街单品...', 'img/263818.jpg'),
(12, 'AYTM', '849.00', '放在哪里都好看置物架 | 随意收纳 与周围融为一体', '设计繁复而又优雅，高品质材料和精益求精的细节...', 'img/263878.jpg'),
(13, 'MANITO', '298.00', '真丝睡眠眼罩 红心提花款 | 柔软桑蚕丝 安享亲肤睡眠', '丝滑桑蚕丝，安享亲肤睡眠，Shape of Love系列，6A级桑蚕丝舒适亲肤，安享睡...', 'img/263865.jpg'),
(14, 'Lucia Berutto', '960.00', '时尚双层加绒睡衣套装 | 精致 从一件舒适睡衣开始', '选用中性风格，外观时尚挺括，让整体更加时尚精致...', 'img/263771.jpg'),
(15, 'handhandhand', '188.00', '天然大豆手工香氛蜡烛 | 有故事的艺术香薰蜡烛', '有神秘木质香，诱人玫瑰香，清甜浆果和浓郁晚玉香可选...', 'img/263806.jpg'),
(16, 'SUDIO', '749.00', 'NIVA迷你入耳式蓝牙耳机 | 可连接2台不同的手机', '指触操控，控制音乐，接听电话，激活多种语音功能...', 'img/263717.jpg'),
(17, 'ITO', '1098.00', 'Pistachio超轻旅行箱-炭黑磨砂款 | 德国红点奖 高颜值又实用', 'PISTACHIO系列超轻旅行箱，从东方建筑生活美学出发，诚实遵循产品实用性，...', 'img/250807.jpg'),
(18, 'YǏN隐', '1260.00', '莫比乌斯系列全金手链 | 手腕间流动的精致优雅', '通体18K真金材质，不会变质褪色，15+2cm延长链', 'img/263746.jpg');

CREATE TABLE `lc_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `lc_index_carousel` (`cid`, `img`) VALUES
(1, 'img/1375.png'),
(2, 'img/1374.png'),
(3, 'img/1352.gif');

