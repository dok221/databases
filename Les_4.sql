
create database my character set = utf8mb4;

drop table if exists users;
create table users(
	id serial primary key, -- serial = bigint unsigned not null auto_increment unique
	firstname varchar(50),
	lastname varchar(50),
	email varchar(120) unique,
	phone varchar(20) unique,
	birthday date,
	hometown varchar(100),
	gender char(1),
	photo_id bigint unsigned,
	create_at datetime default now(),
	pass char(40)
);


INSERT INTO users 
(id, firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) 
VALUES 
(3,'������','�������','qwe@asdf.qw',123123123,'m','1983-03-21','�������',NULL,
'fdkjgsdflskdjfgsdfg142356214','2020-09-25 22:09:27.0');

INSERT INTO users (id,firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
(6,'�������','�������','segginton4@cam.ac.uk',4513359033,'m','1984-06-19','������',NULL,'e6ab5f555555fb26c7c60ddd23c8118307804330','2020-09-25 22:09:27.0')
,(7,'���������','���������','aswaddle5@altervista.org',1874462339,'m','1987-07-07','������',NULL,'b25e49362b83833eece7d225717f2e285213bf25','2020-09-25 22:09:27.0')
,(8,'�������','�������','fleahey6@ftc.gov',2951798252,'m','1984-11-27','������',NULL,'07521436ef4b4ad464ed04cdceb99f422bbbd9c5','2020-09-25 22:09:27.0')
,(9,'�����','��������','rcasley7@exblog.jp',3237322265,'m','1984-08-04','���������',NULL,'5aac7b105729d4ad431db6a4e73604ecec132fa8','2020-09-25 22:09:27.0')
,(10,'�����','��������','rlantry8@pen.io',3731144657,'f','1989-08-07','������',NULL,'ba6c51c3064c20f9de84d4ed69733d9dd408e504','2020-09-25 22:09:27.0')
,(11,'������','�������','egoatcher9@behance.net',8774858608,'m','1984-09-04','����������',NULL,'16f4e6ac1aedd2d9707b56d767f452f3246e67f7','2020-09-25 22:09:27.0');

INSERT INTO users (firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
('�����','�������','eshetliff0@virginia.edu',9442875153,'f','1984-12-19','���������',NULL,'9d0f9f7cdbe467af211a5d5bc91e2e16da891521','2020-09-25 22:09:27.0')
,('����','��������','ldeguara1@bing.com',6774820315,'f','1982-04-19','������',NULL,'3866567f83079af02f517913d98a34e8a5514111','2020-09-25 22:09:27.0')
,('������','�������','cdominick2@cnn.com',4056088011,'f','1984-04-26','������',NULL,'37cda6f77b46bb92ebfea535bdd89d6a145ee28a','2020-09-25 22:09:27.0')
,('�����','���������','dbydaway3@hugedomains.com',2159168663,'f','1980-02-08','����������',NULL,'340287d956987900a051e920136b2c1c17351321','2020-09-25 22:09:27.0')
,('������','��������','hpullin4@state.gov',2619617364,'f','1983-11-22','��������',NULL,'d4a54226f86124d38f463d60c3658a32be191e0e','2020-09-25 22:09:27.0')
,('�����','����������','lhulme5@tamu.edu',1315489478,'f','1982-03-27','���������',NULL,'4cbd30f625fd3440804baf6f509246e8ff81d46b','2020-09-25 22:09:27.0')
,('������','�������','ngrzesiak6@blogspot.com',1253462931,'m','1988-08-03','���������',NULL,'89d65795895ed1c2f48114474ef37c92e1796dee','2020-09-25 22:09:27.0')
,('������','��������','ewathall7@slate.com',8696039405,'m','1984-06-06','���������',NULL,'011af674acb2a19440bb6a013d33dd9a231d53a4','2020-09-25 22:09:27.0')
,('�������','���������','epindar8@oracle.com',2981339919,'m','1980-04-24','���������',NULL,'e3e589b0cc498fb982ed1cbae5d20d3766e97b36','2020-09-25 22:09:27.0')
,('�������','���������','jdelacoste9@chicagotribune.com',4051023201,'f','1987-12-19','���������',NULL,'2def62b6a77064a15b157222f1b43bb538a0293e','2020-09-25 22:09:27.0')
;

INSERT INTO users (firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
('�����','���������','adabbotdoyleu@latimes.com',3659256004,'f','1980-07-25','������',NULL,'151acd87edd4c6d68ce4a92bc846f2abeae49b8e','2020-09-25 22:09:27.0')
,('������','��������','gmedlerv@desdev.cn',7849899275,'m','1986-12-27','�����-���������',NULL,'4613c2845f696b03d37b801e0cdab710fb6beaea','2020-09-25 22:09:27.0')
,('���������','������','pschonfelderw@icio.us',9788815521,'f','1989-01-09','������ ��������',NULL,'3a4548bbbbed1c9d604750295dd22b34b706427f','2020-09-25 22:09:27.0')
,('������','���������','klilleyx@ftc.gov',7449749232,'f','1982-12-26','������',NULL,'07dc7b613035be338b2d299bf481d9ced8731129','2020-09-25 22:09:27.0')
,('������','��������','dtribey@foxnews.com',9461404246,'m','1985-07-24','������',NULL,'4f2d890e00efe71d86b23d64aa3ab7c7f6c2262b','2020-09-25 22:09:27.0')
,('����','���������','alukockz@google.co.jp',5057501481,'f','1984-08-18','����',NULL,'cd21e4ceb76f06cbe1d3ecd30345701dfc01f28c','2020-09-25 22:09:27.0')
,('�������','�������','acorrington10@barnesandnoble.com',2034001863,'m','1984-08-12','�����-���������',NULL,'7fe1c2e54c91bb20754abe19f3633ecb294f69ce','2020-09-25 22:09:27.0')
,('�������','���������','lradbourn11@diigo.com',5033419317,'f','1988-09-01','�����',NULL,'a1313b86956b58564bf1bc069cfdeaec107b235b','2020-09-25 22:09:27.0')
,('�����','��������','hdudeney12@digg.com',6621801231,'f','1987-01-10','������',NULL,'b29ff9bce316ab42dfe8b8ae997b551fd05ba3a4','2020-09-25 22:09:27.0')
,('������','���������','bpressnell13@cargocollective.com',9315587169,'f','1988-05-14','���',NULL,'3f88873d6babca57eb1c5371be6a431c415c6ae5','2020-09-25 22:09:27.0')
;

INSERT INTO users (firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
('�������','���������','gtaber14@ask.com',2634109732,'f','1981-07-24','������',NULL,'af711421307bf3ea53e2a1fd5c7cdc47bc0464d4','2020-09-25 22:09:27.0')
,('�������','������������','harchell15@businessinsider.com',9437670910,'f','1985-08-23','����',NULL,'6da0975df3909e3928a20d54fbbca3c0361ff060','2020-09-25 22:09:27.0')
,('�������','������','ssullly16@umn.edu',2822890926,'f','1988-02-03','�����-���������',NULL,'e02ed0156bcadbc65c407e4f6d0c907449dcfb49','2020-09-25 22:09:27.0')
,('�����','���������','ndunkerly17@elpais.com',6667018887,'f','1989-11-15','������ ��������',NULL,'e08d50568524e1712fd178b2d453eccaec3497d9','2020-09-25 22:09:27.0')
,('�������','��������','bbass18@cloudflare.com',4094890532,'f','1985-09-18','���',NULL,'52bb52432e2afd23c8da1f5587ba6dcfc5321b3e','2020-09-25 22:09:27.0')
,('�����','������������','hrivett19@nyu.edu',3198003378,'f','1988-03-18','����������',NULL,'ecabdafeec47fe7ae2303f3482e875ec47a504aa','2020-09-25 22:09:27.0')
,('������','�������','bpiggen1a@networkadvertising.org',6147416992,'f','1983-04-04','������',NULL,'efaf246cf8b3e0fe4795e9a6bc33e852dcf76bb2','2020-09-25 22:09:27.0')
,('����','�������','epiers1b@constantcontact.com',5283489590,'f','1983-10-13','������',NULL,'c7f7a47fbda0cd6cd1e0d34265521b26dd561592','2020-09-25 22:09:27.0')
,('�����','�������','mizod1c@1und1.de',9077450643,'f','1988-06-04','������',NULL,'2cddeecac91feeb2f03c5b2eb5a0cda8407bf25b','2020-09-25 22:09:27.0')
,('����','�����������','iwhetnell1d@kickstarter.com',4854790930,'f','1981-07-19','���',NULL,'1e570efd00e3262785cf1dcd9eb0dc4ecb6a213d','2020-09-25 22:09:27.0')
;
INSERT INTO users (firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
('����','��������','clamonby1e@boston.com',5239735195,'f','1987-11-04','�����������',NULL,'659c44b7d1deec5ba15d5c2a24345a655f536cf8','2020-09-25 22:09:27.0')
,('�����','��������','ssimeons1f@scribd.com',8902784216,'f','1981-11-11','�����-���������',NULL,'b48da6b9f87aa771566ab1d75cb69081105f6a50','2020-09-25 22:09:27.0')
,('����','����������','lroggerone1g@engadget.com',8414878509,'f','1981-10-20','���',NULL,'2d10eec8cdac3f29976908c3efa65aed77028732','2020-09-25 22:09:27.0')
,('�����','��������','astandfield1h@themeforest.net',9347973825,'f','1989-09-28','����',NULL,'8113bb2b1039acc5d314fb74840c11963c2d0671','2020-09-25 22:09:27.0')
,('����','����������','educkit1i@globo.com',4777653528,'f','1987-11-29','�����������',NULL,'49c2e20c7e932772449c133770fcb6fababacdae','2020-09-25 22:09:27.0')
,('�������','������','khudless1j@oakley.com',9035161534,'f','1989-05-27','���������',NULL,'5009a649664092e862d0eaaf055391e453889bbb','2020-09-25 22:09:27.0')
,('���������','��������','msandiland1k@unesco.org',4366159925,'f','1984-11-30','�����',NULL,'94b83db9e43e7aed7fa9bcf13adc71aa179f89cb','2020-09-25 22:09:27.0')
,('�����','������','mtrevers1l@amazon.com',7266747785,'f','1988-11-26','�����������',NULL,'2cee62ceb700cc6f95e628d60a75b17b1732ef65','2020-09-25 22:09:27.0')
,('�������','��������','uruffle1m@free.fr',7366490172,'m','1984-10-16','������-��-����',NULL,'b02744a3459bf40c24434c311c7028547ad70889','2020-09-25 22:09:27.0')
,('����','�������','lpetruskevich1n@statcounter.com',8016989162,'f','1984-11-18','�������',NULL,'3314213f61429d374db27ef36b8caf681f649050','2020-09-25 22:09:27.0')
;
INSERT INTO users (firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
('�������','���������','awinnett1o@hao123.com',5606350937,'f','1986-07-13','������������',NULL,'012724188466775fd1b41ce9803a36dca24a63b6','2020-09-25 22:09:27.0')
,('�������','��������','bfurphy1p@nifty.com',9375852898,'f','1982-06-07','���������',NULL,'9f3614ed85067d90f9a882975f6a8d4dfc3f43df','2020-09-25 22:09:27.0')
,('�����','���������','sstemp1q@theglobeandmail.com',6523490247,'f','1981-01-16','���������',NULL,'44ffb111616d23edfc480f0639b63d4d065147aa','2020-09-25 22:09:27.0')
,('�����','�������','gmazin1r@fotki.com',5301390113,'f','1986-06-25','�����������',NULL,'c5e9fcc1e5c3991df06be270bdc1ccb4cd8c5ac1','2020-09-25 22:09:27.0')
,('���������','����������','lkrale1s@google.com.br',8271364242,'f','1982-03-10','�����',NULL,'99d6158bc261ca00d6dcf348dbf9ea368a1ae46b','2020-09-25 22:09:27.0')
,('������','����������','ojosefs1t@shinystat.com',3192842536,'f','1988-06-07','������',NULL,'7ba41712fe6615ae0cf36ee45daf697ccb143563','2020-09-25 22:09:27.0')
,('����','�������','apietesch1u@marketwatch.com',4447992090,'f','1986-12-17','������-��-����',NULL,'3d7d5ac699eef8151fe1b7bfd533a321b56bb59d','2020-09-25 22:09:27.0')
,('�������','�����','lgow1v@example.com',7897075774,'m','1981-08-23','������-��-����',NULL,'176936e9534c8e4b7fa4e2823745770ee0b64880','2020-09-25 22:09:27.0')
,('������','����������','cmarte1w@globo.com',2396829153,'f','1986-03-14','�����������',NULL,'e396e8928248b9331ee11b9c0c5a4653d6ad2fad','2020-09-25 22:09:27.0')
,('������','�������','lruddock1x@wikimedia.org',8866042922,'m','1981-09-03','������',NULL,'5750b294231512ca402800e4eef400036e08507d','2020-09-25 22:09:27.0')
;
INSERT INTO users (firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
('���������','��������','jscirman1y@about.me',9518059825,'f','1989-06-12','����������',NULL,'deb3e4b9c818260e9adf17b225f45234390713cf','2020-09-25 22:09:27.0')
,('����','������','tkitchingman1z@omniture.com',9061846141,'m','1988-02-24','������',NULL,'dc4a7a560f689bf62ddc9aa22bbd64becceffca6','2020-09-25 22:09:27.0')
,('�������','��������','mlangman20@biblegateway.com',6284148195,'m','1981-07-20','������������',NULL,'3b802df74686705a1d5ed6c253b0d588bb02103c','2020-09-25 22:09:27.0')
,('���������','��������','jtuff21@yandex.ru',6686191671,'f','1984-09-14','���������',NULL,'32800bf3d9a44c1e74c4c697989d4d265c100716','2020-09-25 22:09:27.0')
,('�������','����������','dtidbold22@forbes.com',4804069885,'f','1987-05-15','������',NULL,'fb762d0873e171610eace7e45c4728888990524d','2020-09-25 22:09:27.0')
,('�������','������','hspivie23@artisteer.com',9391944702,'m','1987-11-26','����',NULL,'581e202c66b30b0c2382af4e8d3eac3c831d0ddd','2020-09-25 22:09:27.0')
,('�������','�������','dsimkiss24@youtu.be',8197243501,'m','1983-01-19','���������',NULL,'6b1258bd81342cb6d68ecb3b2fbeeba913bf70f3','2020-09-25 22:09:27.0')
,('������','����������','ttichelaar25@i2i.jp',1835522933,'m','1985-10-13','������',NULL,'0e903f53c20657667ee04e67eba9bf70d13e8248','2020-09-25 22:09:27.0')
,('������','���������','vbyard26@dedecms.com',3912001914,'m','1980-03-11','�������',NULL,'e0d1f2c5ea78335ecc106a2d371616cedfc21505','2020-09-25 22:09:27.0')
,('���������','���������','lduigenan27@list-manage.com',9018710320,'m','1986-12-08','�������',NULL,'8b8123b5ccb6aa6c06dbda8c75f91f62f44d5fe3','2020-09-25 22:09:27.0')
;
INSERT INTO users (firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
('������','�������','svery28@nsw.gov.au',1155125246,'m','1981-11-12','������',NULL,'965cbe4558dce829055d547a3866f7d982997940','2020-09-25 22:09:27.0')
,('�������','�������','slitzmann29@timesonline.co.uk',4947082181,'m','1983-03-05','���������',NULL,'460c92435c10f0ae5c3bb7596bc3ed757cbee69f','2020-09-25 22:09:27.0')
,('�������','�����','jgiacomini2a@youtu.be',1236239169,'f','1989-01-28','�������',NULL,'a1cc4ab2add1ed470fa93495ece29978a51f8c00','2020-09-25 22:09:27.0')
,('�������','�����������','edurston2b@google.ca',2249473665,'m','1987-10-17','��������',NULL,'1976170ea8cb1a94b5572e5e67baad29c1a569fa','2020-09-25 22:09:27.0')
,('��������','�������','kfoulks2c@sphinn.com',8301549057,'m','1981-10-02','������',NULL,'5de1843e1bce099134f41d1522c17363245fc778','2020-09-25 22:09:27.0')
,('�����','��������','jboken2d@wordpress.com',1086531264,'f','1988-05-04','���������',NULL,'deddfab8a1ec0d8b3395b3d692ddae01aafcfc22','2020-09-25 22:09:27.0')
,('������','��������','gcottage2e@prlog.org',5525263441,'m','1982-03-13','�������',NULL,'e6582cbf8420fc471078f4e118fade0afb9830eb','2020-09-25 22:09:27.0')
,('��������','�����','hstrotone2f@devhub.com',7393531761,'m','1982-11-10','����������',NULL,'4fdd2cbb6dfa134449dc7c0186f8ab86c56058f2','2020-09-25 22:09:27.0')
,('����','�����','vtremmel2g@ed.gov',6139086790,'m','1980-01-29','�������',NULL,'c2230720a13c0dbe4123d982a09fdfb421d85ae1','2020-09-25 22:09:27.0')
,('���������','�������','jcarlesso2h@google.co.jp',3392340667,'m','1982-10-29','�������',NULL,'1e32b1e9e9066c24064cafebf9ed40aaf3aa647b','2020-09-25 22:09:27.0')
;
INSERT INTO users (firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
('�������','���������','mrucklidge2i@amazon.co.jp',7988872107,'m','1988-05-20','���������',NULL,'204b2aedb33e12cdf4a3a0e9737e945870b17081','2020-09-25 22:09:27.0')
,('�������','���������','aprydie2j@vistaprint.com',6741632937,'m','1989-09-17','�������',NULL,'ce449325f74a523bc1556da3d19921c684259925','2020-09-25 22:09:27.0')
,('���������','����������','dbeardsall2k@dmoz.org',3151907707,'f','1988-12-27','��������',NULL,'f1967dc12ed090fa0dd7259e2485cce97865e4d1','2020-09-25 22:09:27.0')
,('������','����������','rbulford2l@goodreads.com',7783646176,'f','1986-02-11','������������',NULL,'60ada1812162902fdf036cd8f41aed0b1ae31866','2020-09-25 22:09:27.0')
,('����','�������','rblankenship2m@aol.com',4963297188,'f','1986-01-05','���������',NULL,'74f7ad69beb17f40608046522c6cfe2ab75ffdfb','2020-09-25 22:09:27.0')
,('�������','�����','lsiveter2n@cnbc.com',9517280949,'m','1982-02-26','����������',NULL,'c99c810a5782926b16d2aae0f5a029c3ca0de755','2020-09-25 22:09:27.0')
,('������','����������','csamples2o@wordpress.com',3923826386,'f','1984-11-06','���������',NULL,'3a19575039593db8300b30e3051cf15890783bbc','2020-09-25 22:09:27.0')
,('������','�������','bwhitby2p@furl.net',8487221955,'m','1984-06-03','���������',NULL,'404bb0046780c0377ef1e96ce9001a701668c6c6','2020-09-25 22:09:27.0')
,('���������','��������','sbearman2q@ebay.co.uk',8066940781,'f','1986-02-13','������',NULL,'2d9f4c408a47c268a31fc39809d2fb04a2a04ec3','2020-09-25 22:09:27.0')
,('����','������','kscobie2r@sciencedaily.com',8186433808,'m','1982-11-23','���',NULL,'d0f98fc4b115f0ca2122f1ea0f53cdff006e0a90','2020-09-25 22:09:27.0')
;
INSERT INTO users (firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
('�������','��������','afickena@businessweek.com',1437600801,'m','1986-03-09','������',NULL,'a6042fbaffba5d97f05baf9bfe6163722d1d640d','2020-09-25 22:09:27.0')
,('���������','��������','mbaynhamb@howstuffworks.com',9798286372,'f','1982-08-25','�����',NULL,'60fb33d672eff5d474f18309e11320f40b7e7b4f','2020-09-25 22:09:27.0')
,('�������','����������','doxterbyc@ovh.net',5794027202,'f','1981-09-06','���������',NULL,'9967a9836ae9a490691dc6a7abf921c13de7693b','2020-09-25 22:09:27.0')
,('�������','������','ndurekd@facebook.com',4243478042,'m','1986-08-21','���������',NULL,'f0fe0f1cc166c63a8a8ec4ed6b0d56d4a6dc12c5','2020-09-25 22:09:27.0')
,('�������','�������','echildse@sohu.com',7191538491,'m','1983-05-17','����������',NULL,'c94230c5967832c1cab80d57668a6d2418f3ce0e','2020-09-25 22:09:27.0')
,('������','����������','agrigorushkinf@infoseek.co.jp',5466692275,'m','1984-05-26','���������',NULL,'81d0d1ebcd2d75030d7f2fceab8e229e2795b1f2','2020-09-25 22:09:27.0')
,('������','���������','hmcganng@umn.edu',3805318987,'m','1987-02-03','���',NULL,'b896871061ded2bcdd77430613f262046c0465e5','2020-09-25 22:09:27.0')
,('���������','���������','mcumberpatchh@macromedia.com',9972401583,'m','1984-07-17','�����',NULL,'4ecb30007604ee7baf41e5b68cf4bb5e45cfb9c9','2020-09-25 22:09:27.0')
,('������','������','ebankei@senate.gov',1672124574,'m','1985-04-26','�����-���������',NULL,'7bc86a9ac9b93f30c1af49c7423cc27c2773bd57','2020-09-25 22:09:27.0')
,('�������','������','tbrandij@cyberchimps.com',6387066678,'m','1987-06-13','���������',NULL,'6b3dd04daee595084ee9ff21279fe2b27cf87d3b','2020-09-25 22:09:27.0')
;
INSERT INTO users (firstname,lastname,email,phone,gender,birthday,hometown,photo_id,pass,create_at) VALUES 
('�������','�������','kbarthramk@springer.com',4521952112,'m','1984-09-21','������',NULL,'6c99e35fcb1313640ecc9ef074767cd912cb5fa3','2020-09-25 22:09:27.0')
,('���������','�����������','snewlandl@qq.com',4552946215,'m','1983-09-08','���������',NULL,'9e27dbd35bf80d7b000b78987f8136742db78694','2020-09-25 22:09:27.0')
,('�������','������','rstredderm@slideshare.net',5019199432,'m','1981-03-28','������������',NULL,'162f709959774d806963d0f4cf7946c3fd2d8a48','2020-09-25 22:09:27.0')
,('���������','�������','gpimn@github.com',8393364396,'f','1984-05-16','���������',NULL,'6213391ec7ef13d231e308d9e37d27bc3826f5d0','2020-09-25 22:09:27.0')
,('�������','���������','lbiniono@examiner.com',6376414090,'f','1987-08-20','������',NULL,'c416fe919541a2135942fae312c6b9fa450b9910','2020-09-25 22:09:27.0')
,('���������','�������','jkreberp@i2i.jp',7506356015,'f','1987-08-27','���������',NULL,'59c2c1bab5ce4f157ca65c0008d9dded06f77747','2020-09-25 22:09:27.0')
,('�������','��������','mburnhamsq@baidu.com',1633500921,'f','1987-11-28','����������',NULL,'d39dd4390bdcd9c5d439c0fe6a3c4a327af221eb','2020-09-25 22:09:27.0')
,('���������','�����������','wlangtreer@example.com',9894901275,'f','1980-11-03','���',NULL,'b703cb35fb2298673e577f461482a2faeaaf1eab','2020-09-25 22:09:27.0')
,('�����','��������','cburlays@pen.io',2018695545,'f','1980-04-12','��������',NULL,'b00c41bb74b9ae30d9513d48a1245e618fc5b210','2020-09-25 22:09:27.0')
,('�������','����������','filymanovt@nydailynews.com',3372167202,'f','1986-10-29','�����',NULL,'1b79c1723c0a8c65120d12a6be69a8fb9970a5b6','2020-09-25 22:09:27.0')
;
select * from users; -- �������� ��

select * from users limit 20; -- �������� ������ 20 �������

select * from users limit 10 offset 30;-- ���������� ������ 30 (offset), �������� 10 

select * from users limit 2,5; -- select * from users limit 5 offset 2;

select lastname, email, gender from users; -- �������� ������ �� 3� ��������

select lastname, firstname, gender from users order by firstname desc; -- ��������� �� ����� � ���. ������� asc - ����, desc - ����.

select hometown, lastname, firstname, phone from users order by hometown desc, lastname asc; -- ����������� �� ���������� �������� � ������ ������������ ����������

select 'hi!'; -- ���������� ��� ������ ������

select 10*8; -- �������� �������������� ���������

select concat(lastname, ' ', firstname) as persons from users;-- ������� ������ � ���. �-��� concat, �������� ����� ��� ������� � �������������� �������

select concat(firstname,' ', substring(lastname, 1,1), '.') persons from users; -- "��������" ������� �� ������� �������

select distinct lastname from users; -- �������� ������ ���������� ������

select * from users where hometown = '����';

select lastname, firstname, hometown from users 
	where hometown = '���������' or hometown ='���������' or hometown ='���������'; -- ����������� where � "���"

select lastname, firstname, hometown, gender from users 
	where hometown = '���������' or gender = 'm'; -- ����������� where � "���"
	
select lastname, firstname, hometown, gender from users 
	where hometown = '����' and gender = 'm';-- ����������� where � "�"
	
select lastname, firstname, hometown from users where hometown in ('���������', '���������', '������ ��������'); -- in ��������� �������� ��������� �������� � where 

select lastname, firstname, hometown from users where hometown != '���������'; -- ����� �� ���������
select lastname, firstname, hometown from users where hometown <> '���������'; -- ���������� �����������

select lastname, firstname, birthday from users where birthday >= '1980-07-25'; -- ������� ������ ��� �����

select lastname, firstname, birthday from users where birthday >= '1980-07-25' and birthday <= '1990-01-01';-- ������� ����� ���������� �������

select lastname, firstname, birthday from users where birthday between '1980-07-25' and '1985-01-01'; -- ���������� �����������

select lastname, firstname from users where lastname like '��%'; -- ����� ���������, ������������ �� "��" � ���������� ����� 0 ��� ����� �������� (%)
select lastname, firstname from users where lastname like '%��'; -- ����� ���������, ��������������� �� "��" � ���������� ����� ���� 0 ��� ����� �������� ��� ����� �������� (%)
select lastname, firstname from users where lastname like '��__�����';
select lastname, firstname from users where lastname like '_______'; 

select count(*) from users; -- 107

select count(hometown) from users; -- 107

select count(distinct hometown) from users; -- 19

select hometown, count(*) from users group by hometown; -- ���������� �� ������ � �������, ������� ������������� � ������ ������

select hometown, count(*) from users group by hometown having count(*) >= 7; -- �������� ������, ��� ������������� � ������ ������  >= 7


update users 
set 
	hometown = '����',
	gender = 'f'
where hometown = '������'; -- �������� ����� �� ����


-- DELETE
delete from users where phone = 123123123;


 

-- ���������� ��� �������� �������
show create table users;



--��� 1
 ALTER TABLE friend_request ALTER status SET DEFAULT 'requested'; -- � ������� alter ��������� � ����. friends_reqiests default status requested

 --��� 2
 ALTER TABLE users CHANGE create_at created_at datetime; -- � ������� alter ��������� � ����. ����������� create_at � created_at

 --��� 3
  
 set foreign_key_checks = 0; -- ��������� ������� �����
  insert into likes_posts (from_user_id, to_post_id, likes_posts)
  	select from_user_id, to_post_id, likes_posts from vk.likes_posts; -- ��������� ������ vk
  	
  	insert into likes_users (user_id, likes_users, from_user_id, to_user_id)
  	select user_id, likes_users, from_user_id, to_user_id from vk.likes_users; -- ��������� ������ �� k
  	
 set foreign_key_checks = 1; --�������� ������� �����