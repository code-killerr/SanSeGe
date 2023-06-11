CREATE TABLE userdata(
userid INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(16),
userpassword VARCHAR(16),
userheadpic TEXT,
userintroduce VARCHAR(100),
userphone VARCHAR(15),
useremail VARCHAR(30)
);

INSERT INTO userdata(username, userpassword, userheadpic, userintroduce, userphone,useremail) VALUES ('test', '123456', '', '测试用户', '', 'test@ck.com');
INSERT INTO userdata(username, userpassword, userheadpic, userintroduce, userphone,useremail) VALUES ('admin', '123456', '', '管理员哦', '', 'admin@ck.com');

CREATE TABLE book(
	b_isbn VARCHAR(15) PRIMARY KEY,
	b_name VARCHAR(50),
	b_author VARCHAR(30),
	b_coabstract TEXT,
	b_auabstract TEXT,
	b_publish VARCHAR(30),
	b_year YEAR,
	b_cover VARCHAR(50),
	b_score DOUBLE
);

SELECT * FROM book;
INSERT INTO book(b_isbn,b_name,b_author,b_coabstract,b_auabstract,b_publish,b_year,b_cover,b_score) VALUES ('9787533936020','月亮与六便士','毛姆','“满地都是六便士，他却抬头看见了月亮。” 银行家查尔斯，人到中年，事业有成，为了追求内心隐秘的绘画梦想，突然抛妻别子，弃家出走。他深知：人的每一种身份都是一种自我绑架，唯有失去是通向自由之途。 在异国他乡，他贫病交加，对梦想却愈发坚定执着。他说：我必须画画，就像溺水的人必须挣扎。 在经历种种离奇遭遇后，他来到南太平洋的一座孤岛，同当地一位姑娘结婚生子，成功创作出一系列惊世杰作。就在此时，他被绝症和双目失明击倒，临死之前，他做出了让所有人震惊的决定……人世漫长得转瞬即逝，有人见尘埃，有人见星辰。查尔斯就是那个终其一生在追逐星辰的人。','威廉·萨默塞特·毛姆（William Somerset Maugham,1874 -1965)，英国小说家，剧作家，被誉为“故事圣手”。 生于巴黎，十岁前父母双亡，由叔叔接回英国抚养，因身材矮小，说话结巴，总被同龄人欺凌，性格孤僻敏感。 18岁在伦敦学医，后弃医从文。23岁时发表首部小说《兰贝斯的丽莎》，从此走上文学创作的道路。人生经历奇特，他做过助产，做过间谍，做过演员，做过救护车司机；他做过丈夫，做过情人，拒绝过女人的求婚，他的求婚也被另一个女人拒绝；他自称“四分之三喜欢女人，只有四分之一喜欢男人”。 在文学界，毛姆是一个优雅、老到、冷漠的人性观察者，几乎每一个人都能在他的故事中看到自己，这也让毛姆成为二十世纪炙手可热的作家。 他的后半生住在一座仙境般的别墅里，晚年几乎获得了整个欧洲文学界的一切殊荣。91岁时，逝于法国。 经典代表作：《月亮与六便士》《人性的枷锁》。','浙江文艺出版社','2017','./sansege/no-img/yl.jpg',9.4);
INSERT INTO book(b_isbn,b_name,b_author,b_coabstract,b_auabstract,b_publish,b_year,b_cover,b_score) VALUES ('9787201088822','人性的弱点','戴尔·卡耐基','《人性的弱点》为卡内基经典之作，于1937年首次出版。本书汇集了成功学大师卡内基的思想精华，深刻剖析了人性中的弱点，同时引用了许多名人及普通人的真实案例；讲述了他们如何通过学习书中的内容，以尊重、理解、真诚为基石，改变自己为人处世的态度，提高语言沟通能力并增强自信，从而获得他人的信任甚至影响他人，然后取得成功。','戴尔·卡耐基（Dale Cungyie）,20世纪伟大的心灵导师和成功学大师,美国现代成人教育之父。卡耐基利用大量普通人不断努力取得成功的故事,通过演讲和书唤超无数陷入迷惘者的斗志,激励他们取得辉煌的成功 キ耐基在实践的基础上撰写而成的著作,是20世纪畅销的成功励忠经典 主要代表作有: 《沟通的艺术》《人性的弱点》《人性的优点》《美好的人生》《快乐的人生》等 ,这些书出版之后，先后被译成几十种文字，被普为 人类出版史上的奇迹。','天津人民出版社','2014','./sansege/no-img/rxdrd.jpg',9.2);
INSERT INTO book(b_isbn,b_name,b_author,b_coabstract,b_auabstract,b_publish,b_year,b_cover,b_score) VALUES ('9787535435330','人为什么活着','王小波','假设我相信上帝（其实我是不信的），并且正在为善恶不分而苦恼，我就会请求上帝让我聪明到足以明辨是非的程度，而绝不会请他让我愚蠢到让人家给我灌输善恶标准的程度。假若上帝要我负起灌输的任务，我就要请求他让我在此项任务和下地狱中做一选择，并且我坚定不移的决心是：选择后者。 假设我相信上帝（其实我是不信的），并且正在为善恶不分而苦恼，我就会请求上帝让我聪明到足以明辨是非的程度，而绝不会请他让我愚蠢到让人家给我灌输善恶标准的程度。假若上帝要我负起灌输的任务，我就要请求他让我在此项任务和下地狱中做一选择，并且我坚定不移的决心是：选择后者。','王小波，1952年出生于北京，并先后当过知青、民办教师、工人、工科大学生。其后，王小波在美国匹兹堡大学取得文学硕士，再学电脑，于统计系当助教，回国后在中国人民大学任教。出版作品有《黄金时代》、《白银时代》、《青铜时代》等。','长江文艺出版社','2007','./sansege/no-img/rwsmhz.jpg',9.0);
INSERT INTO book(b_isbn,b_name,b_author,b_coabstract,b_auabstract,b_publish,b_year,b_cover,b_score) VALUES ('9787533943370','人间失格','太宰治','本书是日本著名小说家太宰治具影响力的小说作品。本书又名《丧失为人的资格》，发表于1948年，是一部自传体的小说，纤细的自传体中透露出别致的颓废，毁灭式的绝笔之作。本书蕴藏了其短暂一生的种种遭遇和内心的迷茫挣扎。即使时移世易，更深的绝望依旧源自内心的迷茫，而这种迷茫和彷徨几乎贯穿了太宰治以及我们每个人的青春。因此，《人间失格》是一部残酷而永恒的青春文学。只是，在迷茫的灵魂破碎之后，有人选择在喧嚣中继续生命，而太宰治诗意地离去了。从他的作品中，你可以读懂曾经的彷徨与绝望，看到我们内心那个懦弱而又渴望实现的自我。','太宰治，1909—1948，与川端康成、三岛由纪夫齐名的作家。出身于贵族家庭，从小体弱，心思纤细敏感。高中时开始发表随笔，1935年，短篇小说《逆行》入围芥川奖，1945年《女学生》获第四届北村透谷文学奖。本书选取的《人间失格》、《Goodbye》、《维庸之妻》等是其公认的代表作。太宰治一生多次求死，最终在自我放逐和沉沦中结束了年轻的生命。在其短暂的一生中，他向世人展示了无与伦比的才华，留下了众多不朽之作。其作品多采用“私小说”的自我告白形式，充满了纯粹而敏锐的感受性，渗透着心底真切的迷茫、无助、挣扎，以及深深的绝望，吸引着一代又一代的年轻人。','浙江文艺出版社','2016','./sansege/no-img/rjsg.jpg',8.8);
INSERT INTO book(b_isbn,b_name,b_author,b_coabstract,b_auabstract,b_publish,b_year,b_cover,b_score) VALUES ('9787542665010','棋王','阿城','棋王》《树王》《孩子王》是阿城的三部中篇小说，创作和发表于上个世纪七八十年代，是他的成名作也是他的代表作。三部小说都是通过知青的视角来描写普通人的人生经历和下乡生活。知识青年，简称知青，指从1950年代开始到1970年代末期从城市下放到农村做农民的年轻人，这些人多数人是初中或高中学生。这些人身上折射着一个时代甚至几个时代的历史烟云。很多反映知青生活的作品，是突出生活的苦累和生活方式、观念的冲突。而阿城的“三王”则是另外一派风清月明，充满理想主义色彩，在写作手法、格调与主题上与同期作品有很多差异，因此小说一发表，便轰动文坛。时至今日，“三王”的写作手法、理想主义情怀和“不合作”姿态，仍然意义重大、毫不过时。','阿城，姓钟。今年开始写东西，在《上海文学》等刊物上发了几篇中短篇小说，署名就是阿城。为的是对自己的文字负责。出生于1949年清明节。中国人怀念死人的时候，我糊糊涂涂地来了。半年之后，中华人民共和国成立。按传统的说法，我也算是旧社会过来的人。这之后，是小学、中学。中学未完，文化“革命”了。于是去山西、内蒙插队，后来又去云南，如是者十多年。1979年返回北京。娶妻。找到一份工作。生子，与别人的孩子一样可爱。这样的经历不超出任何中国人的想象力。大家怎么活过，我就怎么活过。大家怎么活着，我也怎么活着。有一点不同的是，我写些字，投到能铅印出来的地方，换一些钱来贴补家用。但这与一个出外打零工的木匠一样，也是手艺人。因此，我与大家一样，没有什么不同。 ','上海三联书店','2019','./sansege/no-img/zxy_rank52.jpg',8.6);
INSERT INTO book(b_isbn,b_name,b_author,b_coabstract,b_auabstract,b_publish,b_year,b_cover,b_score) VALUES ('9787559631541','如何畅享啤酒','约翰·霍尔','这是一本由屡获殊荣的啤酒专家写给大家的啤酒指南。本书中介绍了关于啤酒的所有知，从啤酒的原料到口味，从第一批现代的啤酒先锋如何使啤酒形成了我们今天喝到的风味，以及广告在销售中所起到的关键作用，关于啤酒的点点滴滴，都将一一展现。由此可以得知，啤酒远不止是各种原料的混合物，啤酒中留存着历史发展的轨迹、流行文化的兴衰。作者通过对啤酒历史的研究，市场化的分析，以及对业内人士的采访，为读者提供了一个全面的啤酒知识指南，引领读者批判性地思考啤酒这款饮料。了解啤酒，才能更好的畅享啤酒。','约翰·霍尔是一位报道啤酒行业的获奖记者，世界各地啤酒比赛的评审、发言人。他是《精酿啤酒与酿造》杂志的高级编辑。曾陆续出版过与啤酒相关的作品，包括《如何畅享啤酒》、《美国精酿啤酒烹饪书》等。他的作品屡次被刊登在《纽约时报》、《华盛顿邮报》、《华尔街日报》、《葡萄酒爱好者》等知名刊物上。','北京联合出版公司','2019','./sansege/no-img/rhcxpj.jpg',8.4);
INSERT INTO book(b_isbn,b_name,b_author,b_coabstract,b_auabstract,b_publish,b_year,b_cover,b_score) VALUES ('9787229108250','超新星纪元','刘慈欣','　御夫座的一颗恒星能量爆发，强劲的粒子洪流横扫地球，成年人的基因尽遭破坏，面临死亡。地球即将成为孩子们的世界，成人世界与孩子世界的交接顿时成为头等大事，种种匪夷所思的游戏在全世界范围内迅速展开，一个个孩子国家领导人从游戏中脱颖而出。 当地球上后一批成年人在他们自掘的巨大洞窟——终聚地——永远地安眠之后，历史翻开崭新的一页，超新星纪元开始了。','刘慈欣，首位获得世界科幻奖“雨果奖”的亚洲作家，中国科幻文学的主要代表作家，中国科普作家协会会员。自上世纪90年代开始发表科幻作品，曾连续九次获得中国科幻“银河奖”。2015年，凭借长篇小说《三体》成为亚洲首位“雨果奖”获得者。因为对中国科幻文学的巨大贡献，于同年获得银河奖“科幻功勋奖”。 刘慈欣的作品兼具科学探索与人文关怀，在世界科幻文学中树立了一种具有中国特色的科幻文学样式，其“三体三部曲”被认为是中国科幻文学的里程碑之作。','重庆出版社','2016','./sansege/no-img/cxxjy.jpg',8.3);
INSERT INTO book(b_isbn,b_name,b_author,b_coabstract,b_auabstract,b_publish,b_year,b_cover,b_score) VALUES ('9787544766500','杀死一只知更鸟','哈珀·李','20世纪30年代，大萧条时期美国南方静谧的小镇，几桩离奇的疑案彻底打破了几个孩子平静的生活：事件的真凶，怪人的谜底，传言背后的真相…… 在父亲的指引下，他们在迷雾中寻找真知，在磨难中历练风度，在不公平中积累正气，经历了暴风骤雨般的成长，也感受了人间的温暖与真情。','哈珀.李，1926年生于美国亚拉巴马州的门罗维尔。童年就读于当地的学校，后在亚拉巴马大学攻读法律。与著名作家杜鲁门?卡波特是从小的至交，《杀死一只知更鸟》中的迪尔，就是以他为原型的。曾获包括普利策奖在内的多个文学奖项，并被授予总统自由勋章。除了写作，还钟爱19世纪文学和18世纪音乐，对于猫和旅行也有浓厚的兴趣。多年来一直隐居在老家，拒绝媒体采访和各种社会活动，终生未婚。2016年，在位于门罗维尔的家中去世，享年89岁。','译林出版社',' 2017','./sansege/no-img/zxy_rank51.jpg',8.1);
INSERT INTO book(b_isbn,b_name,b_author,b_coabstract,b_auabstract,b_publish,b_year,b_cover,b_score) VALUES ('9787533929671','局外人','阿尔贝·加缪','《局外人》讲述了一位寻常的年轻职员，终日麻木地生活在漫无目的惯性中，某日去海边度假，卷进一宗冲突，犯下杀人案，最后因"他没有在母亲的葬礼上流一滴泪"的理由，被法庭以"法兰西人民"的名义判处死刑的故事。阐述了存在主义的一个重要命题：现代生活中人类社会的荒诞和陌生感导致个体的绝望与虚无。并通过平静地记述一个小人物被司法机关"妖魔化"的整个过程，深刻地讽刺了现代法律的虚伪和愚弄的实质。','加缪，法国小说家、哲学家、戏剧家、评论家。生于阿尔及利亚蒙多维。第二次世界大战前曾供职于《共和晚报》、《巴黎晚报》。战争期间，参加反对德国法西斯的地下抵抗运动，负责《战斗报》的出版工作。1942年发表小说《局外人》，震惊法国文坛。其后陆续出版《鼠疫》《反抗者》《西西弗斯的神话》《卡里古拉》《堕落》等文学、哲学著作。1957年10月17日获诺贝尔文学奖。1960年1月4日死于车祸。','浙江文艺出版社','2010','./sansege/no-img/zxy_rank54.jpg',8.2);
INSERT INTO book(b_isbn,b_name,b_author,b_coabstract,b_auabstract,b_publish,b_year,b_cover,b_score) VALUES ('9787208061644','追风筝的人','卡勒德·胡赛尼','“许多年过去了，人们说陈年旧事可以被埋葬，然而我终于明白这是错的，因为往事会自行爬上来。回首前尘，我意识到在过去二十六年里，自己始终在窥视着那荒芜的小径。”12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟随父亲逃往美国。成年后的阿米尔始终无法原谅自己当年对哈桑的背叛。为了赎罪，阿米尔再度踏上暌违二十多年的故乡，希望能为不幸的好友尽一点心力，却发现一个惊天谎言，儿时的噩梦再度重演，阿米尔该如何抉择？小说如此残忍而又美丽，作者以温暖细腻的笔法勾勒人性的本质与救赎，读来令人荡气回肠。','卡勒德·胡赛尼（Khaled Hosseini），1965年生于阿富汗喀布尔市，后随父亲迁往美国。毕业于加州大学圣地亚哥医学系，现居加州。著有小说《追风筝的人》(The Kite Runner，2003）、《灿烂千阳》(A Thousand Splendid Suns，2007)、《群山回唱》（And the Mountains Echoed,2013）。作品全球销量超过5000万册。“立志拂去蒙在阿富汗普通民众面孔的尘灰，将背后灵魂的悸动展示给世人”。2006年，因其作品巨大的国际影响力，胡赛尼获得联合国人道主义奖，并受邀担任联合国难民署亲善大使。他还创立了以自己名字命名的基金会，为阿富汗的难民提供人道主义援助。','上海人民出版社','2006','./sansege/no-img/zfzdr.jpg',8.0);

CREATE TABLE film(
f_id INT AUTO_INCREMENT PRIMARY KEY,
f_name VARCHAR(20),
f_type VARCHAR(15),
f_poster VARCHAR(50),
f_director VARCHAR(15),
f_star VARCHAR(20),
f_focus VARCHAR(20),
f_time VARCHAR(20),
f_play INT ,
f_intro TEXT,
f_grade DOUBLE,
f_good INT,
f_bad INT
);

SELECT * FROM film;
INSERT INTO film(f_name,f_type,f_poster,f_director,f_star,f_focus,f_time,f_play,f_intro,f_grade,f_good,f_bad) VALUES ('流浪地球','科幻/灾难','null','吴京','吴京/屈楚萧/李光洁','中国科幻电影元年','2019/02/05',215464,'近未来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建...',8.5,1000,100);
INSERT INTO film(f_name,f_type,f_poster,f_director,f_star,f_focus,f_time,f_play,f_intro,f_grade,f_good,f_bad) VALUES ('变形金刚5','科幻/动作','null','迈克尔·贝','马克·沃尔伯格/安东尼·霍普金斯','地球陷入毁灭危机','2017/06/23',354156,'地球陷入毁灭危机，擎天柱失踪，越来越多的汽车人和霸天虎来到地球，前海豹突击队成员威廉·伦诺克斯成为了政府军组建的TRF中的一员，负责绞杀地球上的汽车人——不论好坏...',8.0,1000,100);
INSERT INTO film(f_name,f_type,f_poster,f_director,f_star,f_focus,f_time,f_play,f_intro,f_grade,f_good,f_bad) VALUES ('海王','动作/冒险/奇幻','null','詹姆斯·温','杰森·莫玛/艾梅柏·希尔德','亚特兰蒂斯女王和人类相知相恋','2018/12/07',684561,'许多年前，亚特兰蒂斯女王和人类相知相恋，共同孕育了爱情的结晶——后来被陆地人称为海王的亚瑟·库瑞。在成长的过程中，亚瑟接受海底导师维科的严苛训练，时刻渴望去看望母亲...',8.7,1000,100);


CREATE TABLE music(
m_no INT PRIMARY KEY AUTO_INCREMENT,
m_name VARCHAR(20),
m_singer VARCHAR(20),
m_lyricist VARCHAR(20),
m_composer VARCHAR(20),
m_album VARCHAR(20),
m_cover TEXT
);

SELECT * FROM music;
INSERT INTO music(m_name,m_singer,m_lyricist,m_composer,m_album,m_cover) VALUES ('大碗宽面','吴亦凡','吴亦凡','吴亦凡','大碗宽面','null'); 
INSERT INTO music(m_name,m_singer,m_lyricist,m_composer,m_album,m_cover) VALUES ('来自天堂的魔鬼','邓紫棋','邓紫棋','邓紫棋','新的心跳','null');
INSERT INTO music(m_name,m_singer,m_lyricist,m_composer,m_album,m_cover) VALUES ('易燃易爆炸','陈粒','尚梦迪/骈然','陈粒','如也','null');  
INSERT INTO music(m_name,m_singer,m_lyricist,m_composer,m_album,m_cover) VALUES ('你还要我怎样','薛之谦','薛之谦','薛之谦','意外','null');  
INSERT INTO music(m_name,m_singer,m_lyricist,m_composer,m_album,m_cover) VALUES ('雨蝶','李翊君','许常德','张宇','情爱怨女','null');  
INSERT INTO music(m_name,m_singer,m_lyricist,m_composer,m_album,m_cover) VALUES ('小小的太阳','张宇','十一郎','张宇','月亮 太阳','null');


CREATE TABLE user_favorite_book(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userid INT,
	b_isbn VARCHAR(15),
	FOREIGN KEY(userid) references userdata(userid),
	FOREIGN KEY(b_isbn) references book(b_isbn)
	);
	
CREATE TABLE user_favorite_music(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userid INT,
	m_no INT,
	FOREIGN KEY(userid) REFERENCES userdata(userid),
	FOREIGN KEY(m_no) REFERENCES music(m_no)
	);
	 
CREATE TABLE user_favorite_film(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userid INT,
	f_id INT,
	FOREIGN KEY(userid) REFERENCES userdata(userid),
	FOREIGN KEY(f_id) REFERENCES film(f_id)
	);




