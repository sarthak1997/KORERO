/*
SQLyog - Free MySQL GUI v5.0
Host - 5.7.17-log : Database - minorproject
*********************************************************************
Server version : 5.7.17-log
*/


create database if not exists `minorproject`;

USE `minorproject`;

/*Table structure for table `allusers` */

DROP TABLE IF EXISTS `allusers`;

CREATE TABLE `allusers` (
  `uid` varchar(20) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `imgpath` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `allusers` */

insert into `allusers` values 
('S14cs068','Ravi Joshi','C:\\Users\\rohan\\Desktop\\KoreroImages\\WhatsApp Image 2017-05-15 at 7.44.27 PM.jpeg','4'),
('S14cs071','Riya Godwani','C:\\Users\\rohan\\Desktop\\KoreroImages\\riya.jpg','4'),
('S14cs072','Rohan Shrimal','C:\\Users\\rohan\\Desktop\\KoreroImages\\rohan.jpg','4'),
('S14cs090','Shreeya Nagar','C:\\Users\\rohan\\Desktop\\KoreroImages\\IMG-20150404-WA0008.jpg','4'),
('S14CS105','Sarthak Jain','C:\\Users\\rohan\\Desktop\\KoreroImages\\sarthak.jpg','4'),
('S14cs118','Rohit Jangid','C:\\Users\\rohan\\Desktop\\KoreroImages\\12917970_1722387708045935_1148477753_n.jpg.jpg','4'),
('SARpari28','Parinita Shrimal','C:\\Users\\rohan\\Desktop\\KoreroImages\\student.jpg','4');

/*Table structure for table `answer` */

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
  `qid` int(5) NOT NULL,
  `uid` varchar(25) NOT NULL,
  `timestamp` varchar(25) DEFAULT NULL,
  `upvotes` int(6) DEFAULT NULL,
  `reportabusecount` int(3) DEFAULT NULL,
  `text` mediumtext,
  `answer` mediumtext,
  PRIMARY KEY (`qid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `answer` */

insert into `answer` values 
(16,'s14cs072','16 May, 2017',1,0,'{\"ops\":[{\"insert\":\"Lectures by Ravindra Babu Sir is awesome\"},{\"attributes\":{\"header\":1},\"insert\":\"\\n\"},{\"insert\":\"\\n\\n\"},{\"insert\":{\"video\":\"https://www.youtube.com/embed/BchPukWb0CU?showinfo=0\"}},{\"insert\":\"\\n\"}]}','{\"ops\":[{\"insert\":\"Lectures by Ravindra Babu Sir is awesome\"},{\"attributes\":{\"header\":1},\"insert\":\"\\n\"},{\"insert\":\"\\n\\n\"},{\"insert\":{\"video\":\"https://www.youtube.com/embed/BchPukWb0CU?showinfo=0\"}},{\"insert\":\"\\n\"}]}');

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `blogid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(30) DEFAULT NULL,
  `blogcontent` mediumtext,
  `timestamp` varchar(30) DEFAULT NULL,
  `upvote` int(6) DEFAULT NULL,
  `did` int(6) DEFAULT NULL,
  `blogtitle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`blogid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `blogs` */

insert into `blogs` values 
(2,'s14cs072','{\"ops\":[{\"attributes\":{\"header\":2},\"insert\":\"\\n\"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\"My life is like a program & my parents are the main() function of this program & my dear friends you all are that function of this program which always returns me party, happiness, smile, laughter, memories, toofanis, tiklaris @ its height without taking any parameter and makes me feel special at every instant.\"},{\"attributes\":{\"header\":2},\"insert\":\"\\n\"},{\"insert\":\"\\n\"},{\"attributes\":{\"italic\":true},\"insert\":\"Please friends never left me alone,always be with me till this program of life terminates.As we all know that \"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\"\\\"only thing constant in this world is change\\\" \"},{\"attributes\":{\"italic\":true},\"insert\":\".Jo rohan ko change karne ki chingari rohit ne lgae thi vo sarthak- shreeya ki kripa se aag me tabdil ho chuki h. Kal tak jiski ganit hi G.F thi, use 5-5 ladkiyo ke nam se chidana. Kal tak jisse sirf integration karne me kick milti thi, ab usse at every moment koi n koi nae kick chahiye\"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\" #selfies #dubsmashes #techcomedies #class_k_bich_me_khana\"},{\"attributes\":{\"italic\":true},\"insert\":\"...kisi function ka rate of change itna nhi hota hai jitna aapke \"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\"friend function Rohan()\"},{\"attributes\":{\"italic\":true},\"insert\":\" ka hai #@its height..#Computer-Ganit tech joke combo. \"},{\"attributes\":{\"header\":2},\"insert\":\"\\n\\n\"},{\"attributes\":{\"italic\":true},\"insert\":\"I should really appreciate you all ki tum log 11-12 me kam pdhe jisse ki hum sabka bachpan se ek dusre ke sath padhne ka sapna pura ho sake. \"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\"Let us C,Let us C++,Let us Java,Let us HTML\"},{\"attributes\":{\"italic\":true},\"insert\":\" the effect of this, we have lived many immemorable moments, done astonishing things, lots of toofanis, fun & masti with each other. \"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\"This whole linked list of clg life is our wealth, we have inserted nodes of bonding, nodes of caring, nodes of moments, nodes of memories, nodes of happiness, nodes of tiklaries, nodes of apnepan, nodes of friendship to it.\"},{\"attributes\":{\"italic\":true},\"insert\":\"After clg jab-jab hum isse traverse krenge the smile it will return on our face can\'t be described. \"},{\"attributes\":{\"header\":2},\"insert\":\"\\n\\n\"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\"In this for loop of clg life, whose counter variable i starts from 1st sem & will run uptill i=8th sem we have done, we are doing and we will do many things enjoy many moments\"},{\"attributes\":{\"italic\":true},\"insert\":\" and will \"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\"push() \"},{\"attributes\":{\"italic\":true},\"insert\":\"many tiklaris into this stack. Kash yeh for loop infinite loop mai chala jae, stack overflow hoo jae, kbhi khatam hi naa ho & we continue to enjoy this all.\"},{\"attributes\":{\"header\":2},\"insert\":\"\\n\\n\"},{\"attributes\":{\"italic\":true},\"insert\":\"At last I want to say that\"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\" u all are that objects of my friends class which can never be destroyed by garbage collector\"},{\"attributes\":{\"italic\":true},\"insert\":\". Plz forgive me if I have ever hurted u all by my deeds or talks. I want to thank u guys for being my friend. \"},{\"attributes\":{\"header\":2},\"insert\":\"\\n\\n\"},{\"attributes\":{\"italic\":true},\"insert\":\"Always be with me bcoz....\"},{\"attributes\":{\"header\":2},\"insert\":\"\\n\"},{\"insert\":\"\\nU r d src of my HAPPINESS\"},{\"attributes\":{\"blockquote\":true},\"insert\":\"\\n\"},{\"insert\":\"U r d src of my CONFIDENCE\"},{\"attributes\":{\"blockquote\":true},\"insert\":\"\\n\"},{\"insert\":\"U r d src of my HOPES\"},{\"attributes\":{\"blockquote\":true},\"insert\":\"\\n\"},{\"insert\":\"U r d src of my MOTIVATION\"},{\"attributes\":{\"blockquote\":true},\"insert\":\"\\n\"},{\"insert\":\"U r d src of my MEMORIES\"},{\"attributes\":{\"blockquote\":true},\"insert\":\"\\n\"},{\"insert\":\"U only r d src of my respect towards friendship\"},{\"attributes\":{\"blockquote\":true},\"insert\":\"\\n\"},{\"insert\":\"\\n\\n\"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\"YOURS\' LOVING FRIEND\"},{\"attributes\":{\"header\":2},\"insert\":\"\\n\"},{\"attributes\":{\"italic\":true,\"bold\":true},\"insert\":\"-ROHAN\"},{\"attributes\":{\"header\":2},\"insert\":\"\\n\"},{\"insert\":\"\\n\\n\\n\"}]}','16 May, 2017',1,24,'Party Gang-\" THE SOURCE OF HAPPINESS\"');

/*Table structure for table `bookcomments` */

DROP TABLE IF EXISTS `bookcomments`;

CREATE TABLE `bookcomments` (
  `ccode` varchar(30) NOT NULL DEFAULT '',
  `bookid` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` varchar(30) NOT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `bookcomments` */

insert into `bookcomments` values 
('s14cs090',1,'I am in love with this book.',1,'on 16 May, 2017 at 12:22 AM'),
('s14cs090',2,'Nice Book Ever',2,'on 16 May, 2017 at 12:25 AM'),
('s14cs071',1,'Normalization is not given properly in this book ',3,'on 16 May, 2017 at 12:42 AM'),
('s14cs071',2,'Best book I have ever seen\r\nI have read it thrice',4,'on 16 May, 2017 at 12:43 AM'),
('s14cs105',1,'Agreed with Riya and Shreeya..\r\nFor Normalization refer Navathe',5,'on 16 May, 2017 at 12:59 AM');

/*Table structure for table `bookdetail` */

DROP TABLE IF EXISTS `bookdetail`;

CREATE TABLE `bookdetail` (
  `ccode` varchar(30) NOT NULL,
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `subcode` int(11) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `bookauthor` text NOT NULL,
  `bookprice` int(11) NOT NULL,
  `bookcover` varchar(100) NOT NULL,
  `bookrating` float NOT NULL,
  `bookdesc` varchar(1000) NOT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `bookdetail` */

insert into `bookdetail` values 
('s14cs090',1,3,'DBMS Basics','Korth',700,'C:\\Users\\rohan\\Desktop\\KoreroImages\\BookCover\\db.jpg',4.66667,'Nice Book For Understanding Basics'),
('s14cs090',2,2,'Basics of operating system','Galvin',500,'C:\\Users\\rohan\\Desktop\\KoreroImages\\BookCover\\download.jpg',4.33333,'Simple and Laconic Language of this book make us understand OS concepts better');

/*Table structure for table `bookfilters` */

DROP TABLE IF EXISTS `bookfilters`;

CREATE TABLE `bookfilters` (
  `branch` varchar(100) NOT NULL,
  `sem` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `subcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bookfilters` */

insert into `bookfilters` values 
('Computer Science',5,'Data Communication',1),
('Computer Science',5,'Operating System',2),
('Computer Science',5,'Database Management System',3),
('Computer Science',5,'Computer Graphics and Multimedia',4),
('Computer Science',5,'Theory Of Computation',5);

/*Table structure for table `bookratingcount` */

DROP TABLE IF EXISTS `bookratingcount`;

CREATE TABLE `bookratingcount` (
  `ccode` varchar(30) NOT NULL,
  `bookid` int(11) NOT NULL,
  `bookkratevalue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

/*Data for the table `bookratingcount` */

insert into `bookratingcount` values 
('s14cs090',1,5),
('s14cs090',2,4),
('s14cs071',1,4),
('s14cs071',2,4),
('s14cs105',2,5),
('s14cs105',1,5);

/*Table structure for table `domain` */

DROP TABLE IF EXISTS `domain`;

CREATE TABLE `domain` (
  `Did` int(3) NOT NULL AUTO_INCREMENT,
  `Dname` varchar(50) DEFAULT NULL,
  `imgpath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Did`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `domain` */

insert into `domain` values 
(1,'COMPUTER SCIENCE','ComputerScience(1).png'),
(2,'MECHANICAL','mechanical.png'),
(3,'INFORMATION TECHNOLOGY','it.png'),
(4,'ELECTRICAL','electical.png'),
(5,'ELECTRONICS','electriccc.png'),
(6,'FIRE TECH','fire-icon.jpg'),
(7,'CHEMICAL','chemical.png'),
(8,'CIVIL','civil.png'),
(9,'LIBRARY','library2.jpg'),
(10,'SPORTS','sports2.png'),
(11,'PLACEMENT CELL','placement.png'),
(12,'ACCOUNTS','accounts2.png'),
(13,'ADMISSION CELL','admission.png'),
(14,'SCHOLARSHIP','scholarship2.png'),
(15,'MOONSTONE','moonstone.png'),
(16,'HOSTEL','hostel-512.png'),
(17,'TRANSPORTATION','transportation2.jpg'),
(18,'MUSIC CLUB','music.jpg'),
(19,'DANCE CLUB','dance.png'),
(20,'LITERARY CLUB','tlc.jpg'),
(21,'STIC','stic.jpg'),
(22,'E-CELL','ecell.jpg'),
(23,'CANTEEN','canteen2.jpg'),
(24,'KORERO','logo.bmp'),
(25,'OTHER','others.png');

/*Table structure for table `faculty` */

DROP TABLE IF EXISTS `faculty`;

CREATE TABLE `faculty` (
  `Name` varchar(50) DEFAULT NULL,
  `FacultyId` varchar(15) NOT NULL,
  `Email` varchar(70) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `SecurityQuestion` varchar(100) DEFAULT NULL,
  `SecurityAnswer` varchar(100) DEFAULT NULL,
  `aboutme` varchar(600) DEFAULT '',
  PRIMARY KEY (`FacultyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `faculty` */

/*Table structure for table `keyword` */

DROP TABLE IF EXISTS `keyword`;

CREATE TABLE `keyword` (
  `kid` int(5) NOT NULL AUTO_INCREMENT,
  `kname` varchar(50) DEFAULT NULL,
  `did` int(5) DEFAULT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=747 DEFAULT CHARSET=utf8;

/*Data for the table `keyword` */

insert into `keyword` values 
(1,'c  ',1),
(2,'data',1),
(3,'st',1),
(4,'data',1),
(5,'ruby',1),
(6,'python',1),
(7,'c',1),
(8,'java',1),
(9,'node.js',1),
(10,'frontend',1),
(11,'backend',1),
(13,'Hadoop',1),
(14,'algorithms',1),
(15,'drupal',1),
(16,'IoT',1),
(17,'AI',1),
(18,'DBMS',1),
(19,'HOD',1),
(20,'SEPM',1),
(21,'stack',1),
(22,'queue',1),
(23,'linkedlist',1),
(24,'tree',1),
(25,'graph',1),
(26,'greedy',1),
(27,'backtracking',1),
(28,'sorting',1),
(29,'searching',1),
(30,'hardwareDesign',1),
(31,'bigData',1),
(32,'dynamicProgramming',1),
(33,'minorProject',1),
(34,'pythonLibraries',1),
(35,'dataStructures',1),
(36,'developers',24),
(37,'korero',24),
(38,'sarthak',24),
(39,'riya',24),
(40,'shreeya',24),
(41,'rohan',24),
(42,'frontend',24),
(43,'backend',24),
(44,'logo',24),
(45,'designer',24),
(46,'documentation',24),
(47,'questionanswer',24),
(48,'profile',24),
(49,'workspaces',24),
(50,'registration',24),
(51,'otp',24),
(52,'book_advisory',24),
(53,'polling',24),
(54,'rating',24),
(55,'voilas',24),
(56,'bleh',24),
(57,'reportabuse',24),
(58,'profile',24),
(59,'feed',24),
(60,'editprofile',24),
(61,'registration',24),
(62,'idea',24),
(63,'innovation',24),
(64,'gears',2),
(65,'engines',2),
(66,'suspension',2),
(67,'hydraulic',2),
(68,'thermal',2),
(69,'solarEnergy',2),
(70,'heatEnergy',2),
(71,'cylinders',2),
(72,'turbines',2),
(73,'petrolEngine',2),
(74,'dieselEngine',2),
(75,'ED',2),
(76,'boilers',2),
(77,'steamEngine',2),
(78,'SOM',2),
(79,'cars',2),
(80,'bikes',2),
(81,'designing',2),
(82,'aerodynamics',2),
(83,'friction',2),
(84,'tyres',2),
(85,'materials',2),
(86,'refrigeration',2),
(87,'compressors',2),
(88,'BAHA',2),
(89,'goKart',2),
(90,'silencer',2),
(91,'acceleration',2),
(92,'speed',2),
(93,'time',2),
(94,'distance',2),
(95,'thrust',2),
(96,'force',2),
(97,'pulleys',2),
(98,'elasticity',2),
(99,'truss',2),
(100,'ckd',23),
(101,'pohe',23),
(102,'jalebi',23),
(103,'bhap_wala_samosa',23),
(104,'kachori',23),
(105,'cake',23),
(106,'party',23),
(107,'tables',23),
(108,'aloo_k_parathee',23),
(109,'noodles',23),
(110,'gurukripa',23),
(111,'soda',23),
(112,'colddrinks',23),
(113,'lassi',23),
(114,'icecream',23),
(115,'mithaiyaan',23),
(116,'timings',23),
(117,'canteen',23),
(118,'watercooler',23),
(119,'hygiene',23),
(120,'gourmet',23),
(121,'tiffin',23),
(122,'breakfast',23),
(123,'sandwiches',23),
(124,'bakesamosa',23),
(125,'edibleoil',23),
(126,'dhaba',23),
(127,'C  ',3),
(128,'C',3),
(129,'data',3),
(130,'structures',3),
(131,'frontEnd',3),
(132,'backEnd',3),
(133,'java',3),
(134,'python',3),
(135,'ruby',3),
(136,'node.js',3),
(137,'javaScript',3),
(138,'webDevelopment',3),
(139,'dataScience',3),
(140,'Hadoop',3),
(141,'AI',3),
(142,'IoT',3),
(143,'Networking',3),
(144,'Hacking',3),
(145,'Testing',3),
(146,'Algorithms',3),
(147,'hackerrank',3),
(148,'codechef',3),
(149,'competitiveProgramming',3),
(150,'codejam',3),
(151,'dataCentre',3),
(152,'ITParks',3),
(153,'webDesigning',3),
(154,'head',22),
(155,'apply',22),
(156,'members',22),
(157,'enterpreneurship',22),
(158,'startup',22),
(159,'funding',22),
(160,'position',22),
(161,'workshop',22),
(162,'investor',22),
(163,'hub',22),
(164,'founder',22),
(165,'working',22),
(166,'membership',22),
(167,'ideas',22),
(168,'innovation',22),
(169,'activities',22),
(170,'certification',22),
(171,'digitalindia',22),
(172,'makeinindia',22),
(173,'technnology',22),
(174,'success_stories',22),
(175,'inspiration',22),
(176,'services',22),
(177,'employment',22),
(178,'siliconvalley',22),
(179,'bangalore',22),
(180,'itpark',22),
(181,'stic',21),
(182,'technical',21),
(183,'club',21),
(184,'innovation',21),
(185,'webdriod',21),
(186,'medicaps',21),
(187,'its4Stic',21),
(188,'aasha',21),
(189,'engineering',21),
(190,'membership',21),
(191,'umbrellaclub',21),
(192,'hobbyclubs',21),
(193,'activities',21),
(194,'workculture',21),
(195,'apply',21),
(196,'join',21),
(197,'founders',21),
(198,'leaders',21),
(199,'startupideas',21),
(200,'geek',21),
(201,'technofreak',21),
(202,'members',21),
(203,'events',21),
(204,'public_relations',21),
(205,'promotions',21),
(206,'hr',21),
(207,'marketing',21),
(208,'tlc',20),
(209,'activities',20),
(210,'recruitment',20),
(211,'softskills',20),
(212,'debate',20),
(213,'spellpro',20),
(214,'gd',20),
(215,'speech',20),
(216,'founders',20),
(217,'members',20),
(218,'englishtraining',20),
(219,'language',20),
(220,'presentation',20),
(221,'communication_skills',20),
(222,'vocab',20),
(223,'literature',20),
(224,'events',20),
(225,'publicrelations',20),
(226,'hr',20),
(227,'marketing',20),
(228,'club',20),
(229,'foundation_day',20),
(230,'culture',20),
(231,'profession',20),
(232,'yourliteraryclub',20),
(233,'orator',20),
(234,'contentwritor',20),
(235,'editor',20),
(236,'designer',20),
(237,'event_manager',20),
(238,'resistors',4),
(239,'computers',4),
(240,'circuitBoards',4),
(241,'capacitors',4),
(242,'inductors',4),
(243,'rheostat',4),
(244,'electricity',4),
(245,'transistors',4),
(246,'transformers',4),
(247,'greenBoard',4),
(248,'chips',4),
(249,'wires',4),
(250,'current',4),
(251,'voltage',4),
(252,'inductance',4),
(253,'conductance',4),
(254,'BEEE',4),
(255,'IEEE',4),
(256,'DCS',4),
(257,'frameRelay',4),
(258,'framer',4),
(259,'FoldbackCurrentLimit',4),
(260,'PowerCap',4),
(261,'FrequencyBin',4),
(262,'FrequencyDiversity',4),
(263,'ADC',4),
(264,'FTTH',4),
(265,'gammaCompensation',4),
(266,'GigaBit',4),
(267,'Glitch',4),
(268,'GHz',4),
(269,'natraj',19),
(270,'classical',19),
(271,'hiphop',19),
(272,'contemporary',19),
(273,'did',19),
(274,'flash_mob',19),
(275,'founders',19),
(276,'members',19),
(277,'recruitment',19),
(278,'kathak',19),
(279,'lyrical_hip_hop',19),
(280,'poping',19),
(281,'locking',19),
(282,'mj',19),
(283,'dance',19),
(284,'steps',19),
(285,'djNIGHT',19),
(286,'competitions',19),
(287,'terrence',19),
(288,'songs',19),
(289,'freerunning',19),
(290,'tapDance',19),
(291,'beeBoying',19),
(292,'garba',19),
(293,'tollywood',19),
(294,'bollywood',19),
(295,'western',19),
(296,'IEEE',5),
(297,'3G',5),
(298,'4G',5),
(299,'Aliasing',5),
(300,'DigitalCircuits',5),
(301,'NetworkAnalysis',5),
(302,'LinearControlSystem',5),
(303,'innovation',5),
(304,'invention',5),
(305,'principles',5),
(306,'concepts',5),
(307,'CommunityServices',5),
(308,'EDC',5),
(309,'Signals',5),
(310,'music',18),
(311,'indian_classical',18),
(312,'7notes',18),
(313,'ragas',18),
(314,'bhajans',18),
(315,'bollywood',18),
(316,'trance',18),
(317,'instrumental',18),
(318,'edm',18),
(319,'music_festival',18),
(320,'sunburn',18),
(321,'tommorrowland',18),
(322,'guitar',18),
(323,'piano',18),
(324,'synthesizer',18),
(325,'symphony',18),
(326,'indianidol',18),
(327,'guitar',18),
(328,'musical_eve',18),
(329,'singer',18),
(330,'tabla',18),
(331,'tuning',18),
(332,'kango',18),
(333,'dholak',18),
(334,'midi',18),
(335,'audios',18),
(336,'track',18),
(337,'iTunes',18),
(338,'genres',18),
(339,'rhythm',18),
(340,'Engineering Graphics',6),
(341,'BEEE',6),
(342,'Computer Programming',6),
(343,'Environment Studies',6),
(344,'Engineering Mechanics',6),
(345,'Chemical Engineering',6),
(346,'Fluid Mechanics',6),
(347,'Fluid Flow Machines',6),
(348,'Thermodynamics',6),
(349,'fluidMechanics',6),
(350,'SafetyEngg.',6),
(351,'MachineDrawing',6),
(352,'innovation',6),
(353,'invention',6),
(354,'principles',6),
(355,'Fire Engineering III',6),
(356,'SafetyInElectricalDesign',6),
(357,'TMP',6),
(358,'TQM',6),
(359,'Safety in Engineering Industry',6),
(360,'Insurance Claim Settlement',6),
(361,'Human Factors Engineering',6),
(362,'HAZOP',6),
(363,'Safety in Construction',6),
(364,'Material Testing',6),
(365,'Electrical Technology',6),
(366,'bus',17),
(367,'route',17),
(368,'driver',17),
(369,'conductor',17),
(370,'parking',17),
(371,'bus_fees',17),
(372,'busArea',17),
(373,'transport',17),
(374,'businstructor',17),
(375,'emergencyExit',17),
(376,'collegeBus',17),
(377,'busStation',17),
(378,'busarea',17),
(379,'14000',17),
(380,'16000',17),
(381,'buspass',17),
(382,'puncture',17),
(383,'mechanic',17),
(384,'bluebus',17),
(385,'ibus',17),
(386,'autorickshaw',17),
(387,'fuel',17),
(388,'timings',17),
(389,'3pm',17),
(390,'5pm',17),
(391,'10:30am',17),
(392,'8:30am',17),
(393,'moonstone',15),
(394,'ms',15),
(395,'treasurehack',15),
(396,'symphony',15),
(397,'dance',15),
(398,'djnight',15),
(399,'fashionShow',15),
(400,'CelebNight',15),
(401,'Spandan',15),
(402,'CulturalFest',15),
(403,'BattleCry',15),
(404,'LaserTag',15),
(405,'Splitsvilla',15),
(406,'Roadies',15),
(407,'codingcompetition',15),
(408,'sponsers',15),
(409,'coordinator',15),
(410,'otherevents',15),
(411,'mainevents',15),
(412,'sportsevents',15),
(413,'medisquare',15),
(414,'paint_A_Toon',15),
(415,'openMic',15),
(416,'nukkadNatak',15),
(417,'Anchoring',15),
(418,'Volunteers',15),
(419,'finance',15),
(420,'Biotechnology',7),
(421,'Bio-Systems Engineering',7),
(422,'Catalysis',7),
(423,'reactionEngg',7),
(424,'Energy',7),
(425,'Environment',7),
(426,'breakingbad',7),
(427,'meth',7),
(428,'MaterialEngg.',7),
(429,'ProcessSystemEngg.',7),
(430,'Transport',7),
(431,'Colloids',7),
(432,'InterfaceScience',7),
(433,'Organic',7),
(434,'Inorganic',7),
(435,'neon',7),
(436,'argon',7),
(437,'helium',7),
(438,'xenon',7),
(439,'aluminium',7),
(440,'chlorine',7),
(441,'sodium',7),
(442,'flourine',7),
(443,'phosphorus',7),
(444,'bromine',7),
(445,'yttrium',7),
(446,'boron',7),
(447,'carbon',7),
(448,'oxygen',7),
(449,'phenyl',7),
(450,'bakingSoda',7),
(451,'boys_hostel',16),
(452,'girl_hostel',16),
(453,'warden',16),
(454,'ckd',16),
(455,'mess',16),
(456,'hostel_fees',16),
(457,'hostelite',16),
(458,'raging',16),
(459,'party',16),
(460,'events',16),
(461,'ckd',16),
(462,'bus_facility',16),
(463,'indore',16),
(464,'cooler',16),
(465,'wifi',16),
(466,'netSpeed',16),
(467,'HostelCommunity',16),
(468,'rooms',16),
(469,'dinner',16),
(470,'lunch',16),
(471,'breakfast',16),
(472,'services',16),
(473,'malroad',16),
(474,'recreationhall',16),
(475,'sports',16),
(476,'hostel',16),
(477,'facilities',16),
(478,'truss',8),
(479,'plans',8),
(480,'architecture',8),
(481,'design',8),
(482,'strength',8),
(483,'elasticity',8),
(484,'Foundation',8),
(485,'PavementDesign',8),
(486,'BuildingConstruction',8),
(487,'DripIrrigation',8),
(488,'SoilDegradation',8),
(489,'SoilCement',8),
(490,'BiogasProduction',8),
(491,'PetroleumPower',8),
(492,'GreenBuilding',8),
(493,'NoiseControl',8),
(494,'NanoTech',8),
(495,'ArtificialIsland',8),
(496,'HighNetworkMgmt.',8),
(497,'Reinforcement',8),
(498,'doors',8),
(499,'GravityDams',8),
(500,'PrefabrictedStructure',8),
(501,'Skyscrapers',8),
(502,'Piles',8),
(503,'CanalIrrigation',8),
(504,'tunnels',8),
(505,'papercrete',8),
(506,'books',9),
(507,'novels',9),
(508,'fictions',9),
(509,'technical',9),
(510,'subjects',9),
(511,'Koha',9),
(512,'Rules',9),
(513,'fine',9),
(514,'token',9),
(515,'researchBooks',9),
(516,'CompetitiveExamBooks',9),
(517,'GreBooks',9),
(518,'GateBooks',9),
(519,'CATBooks',9),
(520,'timings',9),
(521,'librarian',9),
(522,'shelves',9),
(523,'easySearching',9),
(524,'BookCards',9),
(525,'LostandFound',9),
(526,'RFID',9),
(527,'Discipline',9),
(528,'WifiPassword',9),
(529,'biography',9),
(530,'religious',9),
(531,'SaraswatiMaa',9),
(532,'CentralLibrary',9),
(533,'minority',14),
(534,'sc/st',14),
(535,'cummins',14),
(536,'documents',14),
(537,'deadline',14),
(538,'scholarship',14),
(539,'minority_certificate',14),
(540,'obc',14),
(541,'bonafide',14),
(542,'marksheets',14),
(543,'banking_details',14),
(544,'registrar',14),
(545,'fee_structure',14),
(546,'scholarship_status',14),
(547,'income_certificate',14),
(548,'birth_certificate',14),
(549,'domicile_certificate',14),
(550,'id_proof',14),
(551,'mpScholarship',14),
(552,'IndianGovScholarship',14),
(553,'RgpvViceChancellorScholarship',14),
(554,'schemes',14),
(555,'ApplicationForm',14),
(556,'allotment',14),
(557,'photograph',14),
(558,'aadharCard',14),
(559,'merit_cum_means',14),
(560,'prime_minister_scholarship',14),
(561,'cricket',10),
(562,'basketball',10),
(563,'tabletennis',10),
(564,'ground',10),
(565,'court',10),
(566,'tennis',10),
(567,'football',10),
(568,'indoorgames',10),
(569,'outdoorgames',10),
(570,'championships',10),
(571,'volleyball',10),
(572,'team',10),
(573,'sportsspirit',10),
(574,'sportsmanship',10),
(575,'equipments',10),
(576,'kit',10),
(577,'jersey',10),
(578,'players',10),
(579,'sportsquota',10),
(580,'stamina',10),
(581,'boost',10),
(582,'sportospark',10),
(583,'gym',10),
(584,'trainer',10),
(585,'coach',10),
(586,'physiotherapist',10),
(587,'medal',10),
(588,'placements',11),
(589,'tcs',11),
(590,'zensar',11),
(591,'tpo',11),
(592,'gd',11),
(593,'seminar',11),
(594,'aptitude',11),
(595,'companies',11),
(596,'interview',11),
(597,'hr',11),
(598,'package',11),
(599,'open_campus',11),
(600,'closed_campus',11),
(601,'placement_coordinator',11),
(602,'recruitments',11),
(603,'training',11),
(604,'technical',11),
(605,'email',11),
(606,'pi',11),
(607,'google',11),
(608,'amazon',11),
(609,'impetus',11),
(610,'techmahindra',11),
(611,'mdox',11),
(612,'muSigma',11),
(613,'written',11),
(614,'softSkills',11),
(615,'Accounting',12),
(616,'FeeStructure',12),
(617,'Transactions',12),
(618,'CompanySecretary',12),
(619,'Capital',12),
(620,'Assets',12),
(621,'Balance',12),
(622,'CashFlow',12),
(623,'Certifications',12),
(624,'tuitionFeeWaiver',12),
(625,'Credit',12),
(626,'Debit',12),
(627,'Expenses',12),
(628,'q',12),
(629,'w',12),
(630,'e',12),
(631,'r',12),
(632,'t',12),
(633,'y',12),
(634,'u',12),
(635,'i',12),
(636,'o',12),
(637,'p',12),
(638,'a',12),
(639,'s',12),
(640,'d',12),
(641,'f',12),
(642,'g',12),
(643,'admissions',13),
(644,'criterion',13),
(645,'documents',13),
(646,'deadline',13),
(647,'transfercertificate',13),
(648,'domicile',13),
(649,'fees',13),
(650,'branch',13),
(651,'management_quota',13),
(652,'mp_online',13),
(653,'education_portal',13),
(654,'opening_rank',13),
(655,'closing_rank',13),
(656,'tuition_fee_waiver',13),
(657,'eligibility',13),
(658,'coordinator',13),
(659,'bus_facility',13),
(660,'medicaps_university',13),
(661,'courses',13),
(662,'batch',13),
(663,'caution_money',13),
(664,'character_certificate',13),
(665,'photographs',13),
(666,'rank',13),
(667,'generated_slip',13),
(668,'admission_coordinator',13),
(669,'incharge',13),
(670,'datastructures',1),
(671,'hashtable',1),
(672,'datastructure',1),
(673,'computerscience',1),
(674,'programming',1),
(675,'logics',1),
(676,'websites',1),
(677,'placement',11),
(678,'cultural_fest',15),
(679,'events',15),
(680,'ed',2),
(681,'curves',2),
(682,'drafting',2),
(683,'front_view',2),
(684,'top_view',2),
(685,'IT',3),
(686,'CS',3),
(687,'criterion',14),
(688,'AndroidApp',15),
(689,'library',9),
(690,'french',9),
(691,'accomodation',16),
(692,'medicaps',16),
(693,'musical_eve',15),
(694,'oc',15),
(695,'capacity',3),
(696,'teacher',9),
(697,'electric_circuit',5),
(698,'green_board',5),
(699,'c',5),
(700,'algorithms',3),
(701,'competitiveprogramming',3),
(702,'circuitboards',4),
(703,'adc',4),
(704,'Engineeringgraphics',6),
(705,'chemicalengineering',6),
(706,'themodynamics',6),
(707,'machinedrawing',6),
(708,'computerprogramming',6),
(709,'electricaltechnology',6),
(710,'networkanalysis',5),
(711,'4g',5),
(712,'signals',5),
(713,'biotechnology',7),
(714,'materialengg.',7),
(715,'inorganic',7),
(716,'organic',7),
(717,'transport',7),
(718,'environment',7),
(719,'colloids',7),
(720,'buildingconstruction',8),
(721,'nanotech',8),
(722,'meditation',25),
(723,'architecture',25),
(724,'attendence',25),
(725,'75',25),
(726,'medicaps',25),
(727,'transactions',12),
(728,'Expences',12),
(729,'electronics',5),
(730,'tv',5),
(731,'computer',5),
(732,'devices',5),
(733,'ex',5),
(734,'ac',5),
(735,'dc',5),
(736,'girls_hostel',16),
(737,'webdroid',21),
(738,'its4stic',21),
(739,'technology',22),
(740,'databases',24),
(741,'minorproject',24),
(742,'bookadvisory',24),
(743,'ngo',25),
(744,'other',25),
(745,'gramiksha',25),
(746,'socialwork',25);

/*Table structure for table `my_stopwords` */

DROP TABLE IF EXISTS `my_stopwords`;

CREATE TABLE `my_stopwords` (
  `value` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `my_stopwords` */

insert into `my_stopwords` values 
('');

/*Table structure for table `polloptiondetails` */

DROP TABLE IF EXISTS `polloptiondetails`;

CREATE TABLE `polloptiondetails` (
  `queid` int(11) NOT NULL,
  `options` varchar(200) NOT NULL,
  `opid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `polloptiondetails` */

insert into `polloptiondetails` values 
(1,'Outstanding',1),
(1,'Good',2),
(1,'Needs Improvement',3),
(1,'Bad',4),
(2,'Party Gang..',1),
(2,'Fantastics',2),
(2,'Rajjo Girls',3),
(2,'Sonkar Boys',4),
(2,'Vinitanians',5),
(3,'node JS',1),
(3,'Python',2),
(3,'Android',3),
(4,'Definately...yes',1),
(4,'A big no.....',2);

/*Table structure for table `pollpriviledges` */

DROP TABLE IF EXISTS `pollpriviledges`;

CREATE TABLE `pollpriviledges` (
  `queid` int(3) NOT NULL,
  `pollviewer` text NOT NULL,
  `branch` text NOT NULL,
  `sem` varchar(2) NOT NULL,
  `sec` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pollpriviledges` */

insert into `pollpriviledges` values 
(1,'all','all','0','0'),
(2,'student','Computer Science','6','0'),
(3,'all','Computer Science','0','0'),
(4,'all','all','0','0');

/*Table structure for table `pollquedetails` */

DROP TABLE IF EXISTS `pollquedetails`;

CREATE TABLE `pollquedetails` (
  `queid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) NOT NULL,
  `creator_id` varchar(30) NOT NULL,
  `pollviewstatus` int(11) NOT NULL,
  PRIMARY KEY (`queid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pollquedetails` */

insert into `pollquedetails` values 
(1,'What do you feel about Korero?','s14cs090',1),
(2,'Which group is better?','s14cs090',1),
(3,'What are the latest emerging technologies?','s14cs090',1),
(4,'Is Korero should be used in Medicaps?','s14cs105',1);

/*Table structure for table `pollvoteresult` */

DROP TABLE IF EXISTS `pollvoteresult`;

CREATE TABLE `pollvoteresult` (
  `queid` int(11) NOT NULL,
  `opid` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

/*Data for the table `pollvoteresult` */

insert into `pollvoteresult` values 
(1,1,5),
(1,2,0),
(1,3,0),
(1,4,0),
(2,1,4),
(2,2,1),
(2,3,0),
(2,4,0),
(2,5,0),
(3,1,2),
(3,2,2),
(3,3,1),
(4,1,4),
(4,2,0);

/*Table structure for table `pollvotestatus` */

DROP TABLE IF EXISTS `pollvotestatus`;

CREATE TABLE `pollvotestatus` (
  `ccode` varchar(30) NOT NULL,
  `queid` int(11) NOT NULL,
  `votestatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pollvotestatus` */

insert into `pollvotestatus` values 
('s14cs090',1,1),
('s14cs090',2,1),
('s14cs090',3,1),
('s14cs071',1,1),
('s14cs071',2,1),
('s14cs071',3,1),
('s14cs105',1,1),
('s14cs105',2,1),
('s14cs105',3,1),
('s14cs105',4,1),
('s14cs090',4,1),
('s14cs072',1,1),
('s14cs072',2,1),
('s14cs072',3,1),
('s14cs072',4,1),
('s14cs118',1,1),
('s14cs118',2,1),
('s14cs118',3,1),
('s14cs118',4,1);

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `qid` int(8) NOT NULL AUTO_INCREMENT,
  `que` varchar(500) DEFAULT NULL,
  `uid` varchar(25) DEFAULT NULL,
  `reportAbuseCount` int(2) DEFAULT NULL,
  `did` int(5) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`qid`),
  FULLTEXT KEY `idx` (`que`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `question` */

insert into `question` values 
(1,'What is data structures?','s14cs090',0,1,'15 May, 2017'),
(2,'How is the front end of korero?','s14cs090',0,24,'16 May, 2017'),
(3,'How can I study data structure?','s14cs090',0,1,'16 May, 2017'),
(4,'What are some good websites for competitive programming?','s14cs090',0,1,'16 May, 2017'),
(5,'How can I get placement in Google?','s14cs090',0,11,'16 May, 2017'),
(6,'What are the events in moonstone?','s14cs090',0,15,'16 May, 2017'),
(7,'How to get proficiency in Engineering Drawing?','s14cs090',0,2,'16 May, 2017'),
(8,'What is the difference between IT and CS?','s14cs090',0,3,'16 May, 2017'),
(9,'How to apply for minority scholarship?','s14cs090',0,14,'16 May, 2017'),
(10,'How was Treasure hack?','s14cs090',0,15,'16 May, 2017'),
(11,'What are the books for learning french?','s14cs090',0,9,'16 May, 2017'),
(12,'What are the facilities provided to hostlites in medicaps?','s14cs090',0,16,'16 May, 2017'),
(13,'How to become a oc member of symphony in moonstone?','s14cs071',0,15,'16 May, 2017'),
(14,'How many sections are there in IT branch?','s14cs071',0,3,'16 May, 2017'),
(15,'What are the best books referred by teachers?','s14cs071',0,9,'16 May, 2017'),
(16,'How students should prepare for placements?','s14cs071',0,11,'16 May, 2017'),
(17,'How to integrate electric circuits using programming language?','s14cs105',0,5,'16 May, 2017'),
(18,'what are the most trending topics in mechanical?','s14cs105',0,2,'16 May, 2017'),
(19,'What are the advantages of competitive programming?','s14cs105',0,3,'16 May, 2017'),
(20,'How to study online important topics of electrical?','s14cs105',0,4,'16 May, 2017'),
(21,'Is fire technocrat should have knowledge of many domains?','s14cs105',0,6,'16 May, 2017'),
(22,'What are good resources for studying?','s14cs105',0,5,'16 May, 2017'),
(23,'What are the latest technical developments in chemical engineering?','s14cs105',0,7,'16 May, 2017'),
(24,'what should be the areas of interest of civil engg. student on korero?','s14cs090',0,8,'16 May, 2017'),
(25,'What is the criterion for issuing books in library?','s14cs090',0,9,'16 May, 2017'),
(26,'Which sports team of medicaps is best?','s14cs090',0,10,'16 May, 2017'),
(27,'How to do meditation?','s14cs072',0,25,'16 May, 2017'),
(28,'When medicaps will start Architecture course?','s14cs072',0,25,'16 May, 2017'),
(29,'Is it necessary to maintain attendence atleast 75% in medicaps ?','s14cs072',0,25,'16 May, 2017'),
(30,'Why certificates are necessary for scholarship?','s14cs072',0,14,'16 May, 2017'),
(32,'What should I do if my fee cheque is bounced?','s14cs072',0,12,'16 May, 2017'),
(33,'what should we do to change our bus stop?','s14cs072',0,17,'16 May, 2017'),
(34,'Who is intrested in unplugged singing?','s14cs072',0,18,'16 May, 2017'),
(35,'what is electronics?','s14cs090',0,5,'16 May, 2017'),
(36,'what is the admission process in medicaps university?','s14cs118',0,13,'16 May, 2017'),
(37,'What is the general atmosphere of hostel in medicaps?','s14cs118',0,16,'16 May, 2017'),
(38,'Which dance form is most popular in Mdeicaps?','s14cs118',0,19,'16 May, 2017'),
(39,'What are qualities which literary club members learn?','s14cs118',0,20,'16 May, 2017'),
(40,'What are amazing facts about stic?','s14cs118',0,21,'16 May, 2017'),
(41,'What are the new plans of E-cell for this new session?','s14cs118',0,22,'16 May, 2017'),
(42,'Is there any need of improvement in canteen?','s14cs118',0,23,'16 May, 2017'),
(43,'In which language backend of frontend is made?','s14cs118',0,24,'16 May, 2017'),
(44,'In how many days korero is developed?','s14cs118',0,24,'16 May, 2017'),
(45,'Is there any NGO like gramiksha in medicaps?','s14cs118',0,25,'16 May, 2017');

/*Table structure for table `questionkeyword` */

DROP TABLE IF EXISTS `questionkeyword`;

CREATE TABLE `questionkeyword` (
  `qid` int(5) NOT NULL,
  `kid` int(5) NOT NULL,
  PRIMARY KEY (`qid`,`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `questionkeyword` */

insert into `questionkeyword` values 
(1,21),
(1,22),
(1,23),
(1,24),
(1,25),
(1,35),
(1,670),
(1,671),
(2,40),
(2,42),
(2,45),
(3,2),
(3,4),
(3,672),
(3,673),
(4,673),
(4,674),
(4,675),
(4,676),
(5,607),
(5,677),
(6,393),
(6,678),
(6,679),
(7,75),
(7,680),
(7,681),
(7,682),
(7,683),
(7,684),
(8,685),
(8,686),
(9,533),
(9,538),
(9,687),
(10,393),
(10,395),
(10,688),
(11,506),
(11,689),
(11,690),
(12,476),
(12,691),
(12,692),
(13,393),
(13,394),
(13,396),
(13,693),
(13,694),
(14,685),
(14,695),
(15,506),
(15,689),
(15,696),
(16,588),
(16,592),
(16,594),
(16,597),
(16,604),
(16,606),
(17,697),
(17,698),
(17,699),
(18,64),
(18,65),
(18,76),
(18,87),
(18,90),
(18,97),
(19,146),
(19,147),
(19,148),
(19,149),
(19,150),
(19,700),
(19,701),
(20,238),
(20,240),
(20,242),
(20,246),
(20,249),
(20,263),
(20,702),
(20,703),
(21,351),
(21,704),
(21,705),
(21,706),
(21,707),
(21,708),
(21,709),
(22,298),
(22,301),
(22,309),
(22,697),
(22,698),
(22,699),
(22,710),
(22,711),
(22,712),
(23,420),
(23,425),
(23,428),
(23,430),
(23,431),
(23,433),
(23,434),
(23,713),
(23,714),
(23,715),
(23,716),
(23,717),
(23,718),
(23,719),
(24,478),
(24,483),
(24,486),
(24,494),
(24,498),
(24,504),
(24,720),
(24,721),
(25,506),
(25,521),
(25,532),
(25,689),
(26,561),
(26,563),
(26,566),
(26,568),
(26,569),
(26,571),
(27,722),
(28,723),
(29,724),
(29,725),
(29,726),
(30,541),
(30,543),
(30,545),
(30,548),
(30,549),
(30,550),
(32,616),
(32,617),
(32,621),
(32,625),
(32,626),
(32,727),
(32,728),
(33,366),
(33,367),
(33,368),
(33,373),
(33,381),
(33,388),
(34,315),
(34,317),
(34,319),
(34,322),
(34,327),
(34,328),
(34,329),
(34,335),
(34,336),
(34,339),
(35,729),
(35,730),
(35,731),
(35,732),
(35,733),
(35,734),
(35,735),
(36,653),
(36,657),
(36,660),
(36,661),
(36,662),
(36,666),
(37,451),
(37,453),
(37,455),
(37,458),
(37,466),
(37,736),
(38,270),
(38,271),
(38,272),
(38,278),
(38,280),
(38,281),
(38,290),
(39,208),
(39,211),
(39,214),
(39,219),
(39,221),
(39,222),
(39,223),
(39,233),
(39,234),
(40,181),
(40,182),
(40,184),
(40,187),
(40,188),
(40,737),
(40,738),
(41,161),
(41,163),
(41,168),
(41,171),
(41,172),
(41,739),
(42,100),
(42,101),
(42,107),
(42,117),
(42,118),
(42,125),
(43,36),
(43,37),
(43,43),
(43,740),
(44,36),
(44,37),
(44,46),
(44,47),
(44,53),
(44,741),
(44,742),
(45,743),
(45,744),
(45,745),
(45,746);

/*Table structure for table `reportanswer` */

DROP TABLE IF EXISTS `reportanswer`;

CREATE TABLE `reportanswer` (
  `reporterid` varchar(25) NOT NULL,
  `qid` int(5) NOT NULL,
  `uid` varchar(25) NOT NULL,
  PRIMARY KEY (`reporterid`,`qid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reportanswer` */

/*Table structure for table `reportquestion` */

DROP TABLE IF EXISTS `reportquestion`;

CREATE TABLE `reportquestion` (
  `reporterid` varchar(25) NOT NULL,
  `qid` int(5) NOT NULL,
  PRIMARY KEY (`reporterid`,`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reportquestion` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `Name` varchar(50) DEFAULT NULL,
  `EnrollmentNo` varchar(15) NOT NULL,
  `Email` varchar(70) DEFAULT NULL,
  `Branch` varchar(70) DEFAULT NULL,
  `Sem` int(2) DEFAULT NULL,
  `Section` char(1) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `SecurityQuestion` varchar(100) DEFAULT NULL,
  `SecurityAnswer` varchar(100) DEFAULT NULL,
  `aboutme` varchar(600) DEFAULT '',
  PRIMARY KEY (`EnrollmentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `student` */

insert into `student` values 
('Ravi Joshi','S14cs068','ravijoshirocks@gmail.com','Computer Science',6,'B','123456789','WHAT\'S YOUR NICKNAME?','joravar',' '),
('Riya Godwani','S14cs071','riyagodwani@gmail.com','Computer Science',6,'B','123456789','WHICH BOOK DO YOU READ?','ready study go',' Designer @ KORERO'),
('Rohan Shrimal','S14cs072','rohanshrimal007@gmail.com','Computer Science',6,'B','123456789','WHAT\'S YOUR NICKNAME?','rohini',' '),
('Shreeya Nagar','S14cs090','nagar.shreeya@gmail.com','Computer Science',6,'B','123456789','WHAT\'S YOUR NICKNAME?','devi',' FRONT END DEVELOPER OF KORERO'),
('Sarthak Jain','S14CS105','sjain271997@gmail.com','Computer Science',6,'B','123456789','WHAT\'S YOUR NICKNAME?','Benda',' Back End Developer Of kORERO..!!'),
('Rohit Jangid','S14cs118','rjrohitjangid0401@gmail.com','Computer Science',6,'B','123456789','WHAT\'S YOUR NICKNAME?','jada',' '),
('Parinita Shrimal','SARpari28','parinitashrimal@gmail.com','Computer Science',2,'B','123456789','WHAT\'S YOUR NICKNAME?','pari',' ');

/*Table structure for table `tempuser` */

DROP TABLE IF EXISTS `tempuser`;

CREATE TABLE `tempuser` (
  `utype` varchar(10) DEFAULT NULL,
  `uid` varchar(25) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `department` varchar(25) DEFAULT NULL,
  `sem` int(1) DEFAULT NULL,
  `sec` varchar(1) DEFAULT NULL,
  `sque` varchar(100) DEFAULT NULL,
  `sans` varchar(100) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tempuser` */

/*Table structure for table `userdomain` */

DROP TABLE IF EXISTS `userdomain`;

CREATE TABLE `userdomain` (
  `uid` varchar(20) NOT NULL,
  `did` int(2) NOT NULL,
  PRIMARY KEY (`uid`,`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdomain` */

insert into `userdomain` values 
('s14cs068',1),
('s14cs068',2),
('s14cs068',9),
('s14cs068',10),
('s14cs068',14),
('s14cs068',15),
('s14cs068',18),
('s14cs068',20),
('s14cs068',21),
('s14cs068',23),
('s14cs068',24),
('s14cs068',25),
('s14cs071',1),
('s14cs071',3),
('s14cs071',9),
('s14cs071',10),
('s14cs071',11),
('s14cs071',13),
('s14cs071',15),
('s14cs071',19),
('s14cs071',20),
('s14cs071',22),
('s14cs071',24),
('s14cs072',1),
('s14cs072',3),
('s14cs072',9),
('s14cs072',10),
('s14cs072',11),
('s14cs072',14),
('s14cs072',15),
('s14cs072',17),
('s14cs072',18),
('s14cs072',19),
('s14cs072',20),
('s14cs072',24),
('s14cs090',1),
('s14cs090',9),
('s14cs090',10),
('s14cs090',11),
('s14cs090',15),
('s14cs090',18),
('s14cs090',19),
('s14cs090',20),
('s14cs090',22),
('s14cs090',24),
('S14CS105',1),
('S14CS105',2),
('S14CS105',3),
('S14CS105',5),
('S14CS105',9),
('S14CS105',10),
('S14CS105',11),
('S14CS105',13),
('S14CS105',14),
('S14CS105',15),
('S14CS105',17),
('S14CS105',18),
('S14CS105',19),
('S14CS105',20),
('S14CS105',21),
('S14CS105',22),
('S14CS105',23),
('S14CS105',24),
('S14CS105',25),
('s14cs118',1),
('s14cs118',2),
('s14cs118',3),
('s14cs118',4),
('s14cs118',5),
('s14cs118',6),
('s14cs118',7),
('s14cs118',8),
('s14cs118',9),
('s14cs118',10),
('s14cs118',11),
('s14cs118',12),
('s14cs118',13),
('s14cs118',14),
('s14cs118',15),
('s14cs118',16),
('s14cs118',17),
('s14cs118',18),
('s14cs118',19),
('s14cs118',20),
('s14cs118',21),
('s14cs118',22),
('s14cs118',23),
('s14cs118',24),
('s14cs118',25),
('SARpari28',8),
('SARpari28',9),
('SARpari28',13),
('SARpari28',14),
('SARpari28',15),
('SARpari28',17),
('SARpari28',18),
('SARpari28',19),
('SARpari28',20),
('SARpari28',23),
('SARpari28',24),
('SARpari28',25);

/*Table structure for table `userkeyword` */

DROP TABLE IF EXISTS `userkeyword`;

CREATE TABLE `userkeyword` (
  `kid` int(5) NOT NULL,
  `uid` varchar(25) NOT NULL,
  PRIMARY KEY (`kid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `userkeyword` */

insert into `userkeyword` values 
(1,'s14cs0000'),
(1,'s14cs068'),
(1,'s14cs072'),
(1,'s14cs090'),
(2,'s14cs0000'),
(2,'s14cs068'),
(2,'s14cs072'),
(2,'s14cs090'),
(2,'S14CS105'),
(2,'s14cs118'),
(3,'s14cs0000'),
(3,'s14cs068'),
(4,'s14cs0000'),
(4,'s14cs068'),
(4,'s14cs072'),
(4,'s14cs090'),
(5,'s14cs0000'),
(5,'s14cs068'),
(5,'s14cs072'),
(5,'s14cs090'),
(5,'S14CS105'),
(5,'s14cs118'),
(6,'s14cs0000'),
(7,'s14cs0000'),
(7,'s14cs068'),
(7,'s14cs072'),
(7,'s14cs090'),
(8,'s14cs0000'),
(9,'s14cs0000'),
(10,'s14cs0000'),
(10,'s14cs068'),
(10,'s14cs072'),
(10,'s14cs090'),
(11,'s14cs0000'),
(12,'s14cs0000'),
(13,'s14cs0000'),
(14,'s14cs0000'),
(14,'s14cs068'),
(14,'s14cs071'),
(14,'s14cs072'),
(14,'s14cs090'),
(15,'s14cs0000'),
(16,'s14cs0000'),
(17,'s14cs0000'),
(17,'s14cs068'),
(17,'s14cs071'),
(17,'s14cs072'),
(17,'S14CS105'),
(18,'s14cs0000'),
(19,'s14cs0000'),
(20,'s14cs0000'),
(20,'s14cs068'),
(20,'s14cs071'),
(20,'s14cs072'),
(20,'s14cs090'),
(20,'S14CS105'),
(20,'s14cs118'),
(21,'s14cs0000'),
(21,'s14cs068'),
(21,'s14cs071'),
(21,'s14cs072'),
(21,'s14cs090'),
(21,'s14cs118'),
(22,'s14cs0000'),
(22,'s14cs068'),
(22,'s14cs071'),
(22,'s14cs072'),
(22,'s14cs090'),
(23,'s14cs0000'),
(23,'s14cs068'),
(23,'s14cs071'),
(23,'s14cs072'),
(23,'s14cs090'),
(23,'S14CS105'),
(23,'s14cs118'),
(24,'s14cs0000'),
(24,'s14cs068'),
(24,'s14cs071'),
(24,'s14cs072'),
(24,'s14cs090'),
(24,'s14cs118'),
(25,'s14cs0000'),
(25,'s14cs068'),
(25,'s14cs071'),
(25,'s14cs072'),
(25,'s14cs090'),
(26,'s14cs0000'),
(26,'s14cs068'),
(26,'s14cs072'),
(26,'s14cs090'),
(26,'S14CS105'),
(26,'s14cs118'),
(27,'s14cs0000'),
(27,'s14cs068'),
(28,'s14cs0000'),
(28,'s14cs068'),
(28,'s14cs090'),
(29,'s14cs0000'),
(29,'s14cs068'),
(29,'s14cs071'),
(29,'s14cs072'),
(29,'s14cs090'),
(29,'S14CS105'),
(29,'s14cs118'),
(30,'s14cs0000'),
(30,'s14cs068'),
(31,'s14cs0000'),
(31,'s14cs068'),
(31,'s14cs090'),
(32,'s14cs0000'),
(32,'s14cs068'),
(32,'s14cs072'),
(32,'s14cs090'),
(32,'S14CS105'),
(32,'s14cs118'),
(33,'s14cs0000'),
(33,'s14cs068'),
(34,'s14cs0000'),
(34,'s14cs068'),
(34,'s14cs090'),
(35,'s14cs0000'),
(35,'s14cs072'),
(35,'s14cs090'),
(35,'S14CS105'),
(36,'s14cs0000'),
(36,'s14cs118'),
(37,'s14cs0000'),
(37,'s14cs118'),
(38,'s14cs0000'),
(38,'s14cs118'),
(39,'s14cs0000'),
(40,'s14cs0000'),
(40,'s14cs090'),
(40,'s14cs118'),
(41,'s14cs0000'),
(42,'s14cs0000'),
(42,'s14cs090'),
(42,'s14cs118'),
(43,'s14cs0000'),
(43,'s14cs118'),
(44,'s14cs0000'),
(45,'s14cs0000'),
(45,'s14cs090'),
(45,'s14cs118'),
(46,'s14cs0000'),
(46,'s14cs118'),
(47,'s14cs0000'),
(47,'s14cs118'),
(48,'s14cs0000'),
(49,'s14cs0000'),
(49,'s14cs118'),
(50,'s14cs0000'),
(51,'s14cs0000'),
(52,'s14cs0000'),
(52,'s14cs118'),
(53,'s14cs0000'),
(53,'s14cs118'),
(54,'s14cs0000'),
(55,'s14cs0000'),
(55,'s14cs118'),
(56,'s14cs0000'),
(57,'s14cs0000'),
(58,'s14cs0000'),
(58,'s14cs118'),
(59,'s14cs0000'),
(60,'s14cs0000'),
(61,'s14cs0000'),
(61,'s14cs118'),
(62,'s14cs0000'),
(63,'s14cs0000'),
(64,'s14cs0000'),
(64,'S14CS105'),
(65,'s14cs0000'),
(65,'s14cs072'),
(65,'S14CS105'),
(65,'s14cs118'),
(66,'s14cs0000'),
(67,'s14cs0000'),
(67,'S14CS105'),
(68,'s14cs0000'),
(68,'S14CS105'),
(68,'s14cs118'),
(69,'s14cs0000'),
(70,'s14cs0000'),
(70,'S14CS105'),
(70,'s14cs118'),
(71,'s14cs0000'),
(72,'s14cs0000'),
(73,'s14cs0000'),
(73,'S14CS105'),
(73,'s14cs118'),
(74,'s14cs0000'),
(75,'s14cs0000'),
(75,'s14cs090'),
(76,'s14cs0000'),
(76,'S14CS105'),
(76,'s14cs118'),
(77,'s14cs0000'),
(78,'s14cs0000'),
(79,'s14cs0000'),
(80,'s14cs0000'),
(81,'s14cs0000'),
(82,'s14cs0000'),
(83,'s14cs0000'),
(84,'s14cs0000'),
(85,'s14cs0000'),
(86,'s14cs0000'),
(87,'s14cs0000'),
(87,'s14cs105'),
(88,'s14cs0000'),
(88,'S14CS105'),
(88,'s14cs118'),
(89,'s14cs0000'),
(90,'s14cs0000'),
(90,'S14CS105'),
(91,'s14cs0000'),
(91,'S14CS105'),
(91,'s14cs118'),
(92,'s14cs0000'),
(93,'s14cs0000'),
(93,'S14CS105'),
(94,'s14cs0000'),
(94,'S14CS105'),
(94,'s14cs118'),
(95,'s14cs0000'),
(96,'s14cs0000'),
(96,'S14CS105'),
(97,'s14cs0000'),
(97,'S14CS105'),
(97,'s14cs118'),
(98,'s14cs0000'),
(99,'s14cs0000'),
(99,'S14CS105'),
(100,'s14cs0000'),
(100,'s14cs118'),
(101,'s14cs0000'),
(101,'s14cs118'),
(102,'s14cs0000'),
(103,'s14cs0000'),
(104,'s14cs0000'),
(105,'s14cs0000'),
(106,'s14cs0000'),
(107,'s14cs0000'),
(107,'s14cs118'),
(108,'s14cs0000'),
(109,'s14cs0000'),
(110,'s14cs0000'),
(111,'s14cs0000'),
(112,'s14cs0000'),
(113,'s14cs0000'),
(114,'s14cs0000'),
(115,'s14cs0000'),
(116,'s14cs0000'),
(117,'s14cs0000'),
(117,'s14cs118'),
(118,'s14cs0000'),
(118,'s14cs118'),
(119,'s14cs0000'),
(120,'s14cs0000'),
(121,'s14cs0000'),
(122,'s14cs0000'),
(123,'s14cs0000'),
(124,'s14cs0000'),
(125,'s14cs0000'),
(125,'s14cs118'),
(126,'s14cs0000'),
(127,'s14cs0000'),
(127,'S14CS105'),
(128,'s14cs0000'),
(128,'s14cs090'),
(129,'s14cs0000'),
(129,'s14cs068'),
(129,'S14CS105'),
(129,'s14cs118'),
(130,'s14cs0000'),
(130,'S14CS105'),
(131,'s14cs0000'),
(131,'s14cs068'),
(131,'s14cs072'),
(131,'s14cs090'),
(131,'S14CS105'),
(131,'s14cs118'),
(132,'s14cs0000'),
(132,'S14CS105'),
(133,'s14cs0000'),
(133,'S14CS105'),
(134,'s14cs0000'),
(134,'S14CS105'),
(135,'s14cs0000'),
(135,'S14CS105'),
(136,'s14cs0000'),
(136,'S14CS105'),
(137,'s14cs0000'),
(137,'S14CS105'),
(138,'s14cs0000'),
(138,'S14CS105'),
(139,'s14cs0000'),
(139,'S14CS105'),
(140,'s14cs0000'),
(140,'S14CS105'),
(141,'s14cs0000'),
(141,'S14CS105'),
(142,'s14cs0000'),
(142,'s14cs068'),
(142,'s14cs090'),
(142,'S14CS105'),
(142,'s14cs118'),
(143,'s14cs0000'),
(143,'S14CS105'),
(144,'s14cs0000'),
(144,'S14CS105'),
(145,'s14cs0000'),
(145,'s14cs068'),
(145,'s14cs090'),
(145,'S14CS105'),
(145,'s14cs118'),
(146,'s14cs0000'),
(146,'s14cs068'),
(146,'S14CS105'),
(147,'s14cs0000'),
(147,'S14CS105'),
(148,'s14cs0000'),
(148,'s14cs072'),
(148,'s14cs090'),
(148,'S14CS105'),
(148,'s14cs118'),
(149,'s14cs0000'),
(149,'S14CS105'),
(150,'s14cs0000'),
(150,'S14CS105'),
(151,'s14cs0000'),
(151,'s14cs072'),
(151,'s14cs090'),
(151,'S14CS105'),
(151,'s14cs118'),
(152,'s14cs0000'),
(152,'s14cs068'),
(152,'S14CS105'),
(153,'s14cs0000'),
(153,'S14CS105'),
(154,'s14cs0000'),
(155,'s14cs0000'),
(156,'s14cs0000'),
(157,'s14cs0000'),
(158,'s14cs0000'),
(159,'s14cs0000'),
(160,'s14cs0000'),
(161,'s14cs0000'),
(161,'s14cs118'),
(162,'s14cs0000'),
(163,'s14cs0000'),
(163,'s14cs118'),
(164,'s14cs0000'),
(165,'s14cs0000'),
(166,'s14cs0000'),
(167,'s14cs0000'),
(168,'s14cs0000'),
(168,'s14cs118'),
(169,'s14cs0000'),
(170,'s14cs0000'),
(171,'s14cs0000'),
(171,'s14cs118'),
(172,'s14cs0000'),
(172,'s14cs118'),
(173,'s14cs0000'),
(174,'s14cs0000'),
(175,'s14cs0000'),
(176,'s14cs0000'),
(177,'s14cs0000'),
(178,'s14cs0000'),
(179,'s14cs0000'),
(180,'s14cs0000'),
(181,'s14cs0000'),
(181,'s14cs118'),
(182,'s14cs0000'),
(182,'s14cs118'),
(183,'s14cs0000'),
(184,'s14cs0000'),
(184,'s14cs118'),
(185,'s14cs0000'),
(186,'s14cs0000'),
(187,'s14cs0000'),
(187,'s14cs118'),
(188,'s14cs0000'),
(188,'s14cs118'),
(189,'s14cs0000'),
(190,'s14cs0000'),
(191,'s14cs0000'),
(192,'s14cs0000'),
(193,'s14cs0000'),
(194,'s14cs0000'),
(195,'s14cs0000'),
(196,'s14cs0000'),
(197,'s14cs0000'),
(198,'s14cs0000'),
(199,'s14cs0000'),
(200,'s14cs0000'),
(201,'s14cs0000'),
(202,'s14cs0000'),
(203,'s14cs0000'),
(204,'s14cs0000'),
(205,'s14cs0000'),
(206,'s14cs0000'),
(207,'s14cs0000'),
(208,'s14cs0000'),
(208,'s14cs118'),
(209,'s14cs0000'),
(210,'s14cs0000'),
(211,'s14cs0000'),
(211,'s14cs118'),
(212,'s14cs0000'),
(213,'s14cs0000'),
(214,'s14cs0000'),
(214,'s14cs118'),
(215,'s14cs0000'),
(216,'s14cs0000'),
(217,'s14cs0000'),
(218,'s14cs0000'),
(219,'s14cs0000'),
(219,'s14cs118'),
(220,'s14cs0000'),
(221,'s14cs0000'),
(221,'s14cs118'),
(222,'s14cs0000'),
(222,'s14cs118'),
(223,'s14cs0000'),
(223,'s14cs118'),
(224,'s14cs0000'),
(225,'s14cs0000'),
(226,'s14cs0000'),
(227,'s14cs0000'),
(228,'s14cs0000'),
(229,'s14cs0000'),
(230,'s14cs0000'),
(231,'s14cs0000'),
(232,'s14cs0000'),
(233,'s14cs0000'),
(233,'s14cs118'),
(234,'s14cs0000'),
(234,'s14cs118'),
(235,'s14cs0000'),
(236,'s14cs0000'),
(237,'s14cs0000'),
(238,'s14cs0000'),
(238,'s14cs105'),
(239,'s14cs0000'),
(240,'s14cs0000'),
(240,'s14cs068'),
(240,'s14cs105'),
(241,'s14cs0000'),
(242,'s14cs0000'),
(242,'S14CS105'),
(243,'s14cs0000'),
(244,'s14cs0000'),
(245,'s14cs0000'),
(246,'s14cs0000'),
(246,'s14cs068'),
(246,'s14cs105'),
(247,'s14cs0000'),
(248,'s14cs0000'),
(249,'s14cs0000'),
(249,'s14cs068'),
(249,'s14cs105'),
(250,'s14cs0000'),
(251,'s14cs0000'),
(252,'s14cs0000'),
(253,'s14cs0000'),
(254,'s14cs0000'),
(255,'s14cs0000'),
(256,'s14cs0000'),
(257,'s14cs0000'),
(258,'s14cs0000'),
(259,'s14cs0000'),
(260,'s14cs0000'),
(260,'s14cs068'),
(261,'s14cs0000'),
(262,'s14cs0000'),
(263,'s14cs0000'),
(263,'s14cs105'),
(264,'s14cs0000'),
(265,'s14cs0000'),
(266,'s14cs0000'),
(266,'s14cs068'),
(267,'s14cs0000'),
(268,'s14cs0000'),
(269,'s14cs0000'),
(270,'s14cs0000'),
(270,'s14cs118'),
(271,'s14cs0000'),
(271,'s14cs118'),
(272,'s14cs0000'),
(272,'s14cs118'),
(273,'s14cs0000'),
(274,'s14cs0000'),
(275,'s14cs0000'),
(276,'s14cs0000'),
(277,'s14cs0000'),
(278,'s14cs0000'),
(278,'s14cs118'),
(279,'s14cs0000'),
(280,'s14cs0000'),
(280,'s14cs118'),
(281,'s14cs0000'),
(281,'s14cs118'),
(282,'s14cs0000'),
(283,'s14cs0000'),
(284,'s14cs0000'),
(285,'s14cs0000'),
(286,'s14cs0000'),
(287,'s14cs0000'),
(288,'s14cs0000'),
(289,'s14cs0000'),
(290,'s14cs0000'),
(290,'s14cs118'),
(291,'s14cs0000'),
(292,'s14cs0000'),
(293,'s14cs0000'),
(294,'s14cs0000'),
(295,'s14cs0000'),
(296,'s14cs0000'),
(297,'s14cs0000'),
(297,'s14cs068'),
(298,'s14cs0000'),
(298,'s14cs105'),
(299,'s14cs0000'),
(300,'s14cs0000'),
(301,'s14cs0000'),
(301,'s14cs068'),
(301,'s14cs105'),
(302,'s14cs0000'),
(303,'s14cs0000'),
(303,'s14cs068'),
(304,'s14cs0000'),
(305,'s14cs0000'),
(306,'s14cs0000'),
(306,'s14cs068'),
(307,'s14cs0000'),
(308,'s14cs0000'),
(309,'s14cs0000'),
(309,'s14cs068'),
(309,'s14cs105'),
(310,'s14cs0000'),
(311,'s14cs0000'),
(312,'s14cs0000'),
(313,'s14cs0000'),
(314,'s14cs0000'),
(315,'s14cs0000'),
(315,'s14cs072'),
(316,'s14cs0000'),
(317,'s14cs0000'),
(317,'s14cs072'),
(318,'s14cs0000'),
(319,'s14cs0000'),
(319,'s14cs072'),
(320,'s14cs0000'),
(321,'s14cs0000'),
(322,'s14cs0000'),
(322,'s14cs072'),
(323,'s14cs0000'),
(324,'s14cs0000'),
(325,'s14cs0000'),
(326,'s14cs0000'),
(327,'s14cs0000'),
(327,'s14cs072'),
(328,'s14cs0000'),
(328,'s14cs072'),
(329,'s14cs0000'),
(329,'s14cs072'),
(330,'s14cs0000'),
(331,'s14cs0000'),
(332,'s14cs0000'),
(333,'s14cs0000'),
(334,'s14cs0000'),
(335,'s14cs0000'),
(335,'s14cs072'),
(336,'s14cs0000'),
(336,'s14cs072'),
(337,'s14cs0000'),
(338,'s14cs0000'),
(339,'s14cs0000'),
(339,'s14cs072'),
(340,'s14cs0000'),
(341,'s14cs0000'),
(342,'s14cs0000'),
(343,'s14cs0000'),
(344,'s14cs0000'),
(345,'s14cs0000'),
(346,'s14cs0000'),
(347,'s14cs0000'),
(348,'s14cs0000'),
(349,'s14cs0000'),
(350,'s14cs0000'),
(351,'s14cs0000'),
(351,'s14cs105'),
(352,'s14cs0000'),
(353,'s14cs0000'),
(354,'s14cs0000'),
(355,'s14cs0000'),
(356,'s14cs0000'),
(357,'s14cs0000'),
(358,'s14cs0000'),
(359,'s14cs0000'),
(360,'s14cs0000'),
(361,'s14cs0000'),
(362,'s14cs0000'),
(363,'s14cs0000'),
(364,'s14cs0000'),
(365,'s14cs0000'),
(366,'s14cs0000'),
(366,'s14cs072'),
(367,'s14cs0000'),
(367,'s14cs072'),
(368,'s14cs0000'),
(368,'s14cs072'),
(369,'s14cs0000'),
(370,'s14cs0000'),
(371,'s14cs0000'),
(372,'s14cs0000'),
(373,'s14cs0000'),
(373,'s14cs072'),
(374,'s14cs0000'),
(375,'s14cs0000'),
(376,'s14cs0000'),
(377,'s14cs0000'),
(378,'s14cs0000'),
(379,'s14cs0000'),
(380,'s14cs0000'),
(381,'s14cs0000'),
(381,'s14cs072'),
(382,'s14cs0000'),
(383,'s14cs0000'),
(384,'s14cs0000'),
(385,'s14cs0000'),
(386,'s14cs0000'),
(387,'s14cs0000'),
(388,'s14cs0000'),
(388,'s14cs072'),
(389,'s14cs0000'),
(390,'s14cs0000'),
(391,'s14cs0000'),
(392,'s14cs0000'),
(393,'s14cs0000'),
(393,'s14cs071'),
(393,'s14cs090'),
(394,'s14cs0000'),
(394,'s14cs071'),
(395,'s14cs0000'),
(395,'s14cs090'),
(396,'s14cs0000'),
(396,'s14cs071'),
(397,'s14cs0000'),
(398,'s14cs0000'),
(399,'s14cs0000'),
(400,'s14cs0000'),
(401,'s14cs0000'),
(402,'s14cs0000'),
(403,'s14cs0000'),
(404,'s14cs0000'),
(405,'s14cs0000'),
(406,'s14cs0000'),
(407,'s14cs0000'),
(408,'s14cs0000'),
(409,'s14cs0000'),
(410,'s14cs0000'),
(411,'s14cs0000'),
(412,'s14cs0000'),
(413,'s14cs0000'),
(414,'s14cs0000'),
(415,'s14cs0000'),
(416,'s14cs0000'),
(417,'s14cs0000'),
(418,'s14cs0000'),
(419,'s14cs0000'),
(420,'s14cs0000'),
(420,'s14cs105'),
(421,'s14cs0000'),
(422,'s14cs0000'),
(423,'s14cs0000'),
(424,'s14cs0000'),
(425,'s14cs0000'),
(425,'s14cs105'),
(426,'s14cs0000'),
(427,'s14cs0000'),
(428,'s14cs0000'),
(428,'s14cs105'),
(429,'s14cs0000'),
(430,'s14cs0000'),
(430,'s14cs105'),
(431,'s14cs0000'),
(431,'s14cs105'),
(432,'s14cs0000'),
(433,'s14cs0000'),
(433,'s14cs105'),
(434,'s14cs0000'),
(434,'s14cs105'),
(435,'s14cs0000'),
(436,'s14cs0000'),
(437,'s14cs0000'),
(438,'s14cs0000'),
(439,'s14cs0000'),
(440,'s14cs0000'),
(441,'s14cs0000'),
(442,'s14cs0000'),
(443,'s14cs0000'),
(444,'s14cs0000'),
(445,'s14cs0000'),
(446,'s14cs0000'),
(447,'s14cs0000'),
(448,'s14cs0000'),
(449,'s14cs0000'),
(450,'s14cs0000'),
(451,'s14cs0000'),
(451,'s14cs118'),
(452,'s14cs0000'),
(453,'s14cs0000'),
(453,'s14cs118'),
(454,'s14cs0000'),
(455,'s14cs0000'),
(455,'s14cs118'),
(456,'s14cs0000'),
(457,'s14cs0000'),
(458,'s14cs0000'),
(458,'s14cs118'),
(459,'s14cs0000'),
(460,'s14cs0000'),
(461,'s14cs0000'),
(462,'s14cs0000'),
(463,'s14cs0000'),
(464,'s14cs0000'),
(465,'s14cs0000'),
(466,'s14cs0000'),
(466,'s14cs118'),
(467,'s14cs0000'),
(468,'s14cs0000'),
(469,'s14cs0000'),
(470,'s14cs0000'),
(471,'s14cs0000'),
(472,'s14cs0000'),
(473,'s14cs0000'),
(474,'s14cs0000'),
(475,'s14cs0000'),
(476,'s14cs0000'),
(476,'s14cs090'),
(477,'s14cs0000'),
(478,'s14cs0000'),
(478,'s14cs090'),
(479,'s14cs0000'),
(480,'s14cs0000'),
(481,'s14cs0000'),
(482,'s14cs0000'),
(483,'s14cs0000'),
(483,'s14cs090'),
(484,'s14cs0000'),
(485,'s14cs0000'),
(486,'s14cs0000'),
(486,'s14cs090'),
(487,'s14cs0000'),
(488,'s14cs0000'),
(489,'s14cs0000'),
(490,'s14cs0000'),
(491,'s14cs0000'),
(492,'s14cs0000'),
(493,'s14cs0000'),
(494,'s14cs0000'),
(494,'s14cs090'),
(495,'s14cs0000'),
(496,'s14cs0000'),
(497,'s14cs0000'),
(498,'s14cs0000'),
(498,'s14cs090'),
(499,'s14cs0000'),
(500,'s14cs0000'),
(501,'s14cs0000'),
(502,'s14cs0000'),
(503,'s14cs0000'),
(504,'s14cs0000'),
(504,'s14cs090'),
(505,'s14cs0000'),
(506,'s14cs0000'),
(506,'s14cs071'),
(506,'s14cs090'),
(507,'s14cs0000'),
(508,'s14cs0000'),
(509,'s14cs0000'),
(510,'s14cs0000'),
(511,'s14cs0000'),
(512,'s14cs0000'),
(513,'s14cs0000'),
(514,'s14cs0000'),
(515,'s14cs0000'),
(516,'s14cs0000'),
(517,'s14cs0000'),
(518,'s14cs0000'),
(519,'s14cs0000'),
(520,'s14cs0000'),
(521,'s14cs0000'),
(521,'s14cs090'),
(522,'s14cs0000'),
(523,'s14cs0000'),
(524,'s14cs0000'),
(525,'s14cs0000'),
(526,'s14cs0000'),
(527,'s14cs0000'),
(528,'s14cs0000'),
(529,'s14cs0000'),
(530,'s14cs0000'),
(531,'s14cs0000'),
(532,'s14cs0000'),
(532,'s14cs090'),
(533,'s14cs0000'),
(533,'s14cs090'),
(534,'s14cs0000'),
(535,'s14cs0000'),
(536,'s14cs0000'),
(537,'s14cs0000'),
(538,'s14cs0000'),
(538,'s14cs090'),
(539,'s14cs0000'),
(540,'s14cs0000'),
(541,'s14cs0000'),
(541,'s14cs072'),
(542,'s14cs0000'),
(543,'s14cs0000'),
(543,'s14cs072'),
(544,'s14cs0000'),
(545,'s14cs0000'),
(545,'s14cs072'),
(546,'s14cs0000'),
(547,'s14cs0000'),
(548,'s14cs0000'),
(548,'s14cs072'),
(549,'s14cs0000'),
(549,'s14cs072'),
(550,'s14cs0000'),
(550,'s14cs072'),
(551,'s14cs0000'),
(552,'s14cs0000'),
(553,'s14cs0000'),
(554,'s14cs0000'),
(555,'s14cs0000'),
(556,'s14cs0000'),
(557,'s14cs0000'),
(558,'s14cs0000'),
(559,'s14cs0000'),
(560,'s14cs0000'),
(561,'s14cs0000'),
(561,'s14cs090'),
(562,'s14cs0000'),
(563,'s14cs0000'),
(563,'s14cs090'),
(564,'s14cs0000'),
(565,'s14cs0000'),
(566,'s14cs0000'),
(566,'s14cs090'),
(567,'s14cs0000'),
(568,'s14cs0000'),
(568,'s14cs090'),
(569,'s14cs0000'),
(569,'s14cs090'),
(570,'s14cs0000'),
(571,'s14cs0000'),
(571,'s14cs090'),
(572,'s14cs0000'),
(573,'s14cs0000'),
(574,'s14cs0000'),
(575,'s14cs0000'),
(576,'s14cs0000'),
(577,'s14cs0000'),
(578,'s14cs0000'),
(579,'s14cs0000'),
(580,'s14cs0000'),
(581,'s14cs0000'),
(582,'s14cs0000'),
(583,'s14cs0000'),
(584,'s14cs0000'),
(585,'s14cs0000'),
(586,'s14cs0000'),
(587,'s14cs0000'),
(588,'s14cs0000'),
(588,'s14cs071'),
(589,'s14cs0000'),
(590,'s14cs0000'),
(591,'s14cs0000'),
(592,'s14cs0000'),
(592,'s14cs071'),
(593,'s14cs0000'),
(594,'s14cs0000'),
(594,'s14cs071'),
(595,'s14cs0000'),
(596,'s14cs0000'),
(597,'s14cs0000'),
(597,'s14cs071'),
(598,'s14cs0000'),
(599,'s14cs0000'),
(600,'s14cs0000'),
(601,'s14cs0000'),
(602,'s14cs0000'),
(603,'s14cs0000'),
(604,'s14cs0000'),
(604,'s14cs071'),
(605,'s14cs0000'),
(606,'s14cs0000'),
(606,'s14cs071'),
(607,'s14cs0000'),
(607,'s14cs090'),
(608,'s14cs0000'),
(609,'s14cs0000'),
(610,'s14cs0000'),
(611,'s14cs0000'),
(612,'s14cs0000'),
(613,'s14cs0000'),
(614,'s14cs0000'),
(615,'s14cs0000'),
(616,'s14cs0000'),
(616,'s14cs072'),
(617,'s14cs0000'),
(617,'s14cs072'),
(618,'s14cs0000'),
(619,'s14cs0000'),
(620,'s14cs0000'),
(621,'s14cs0000'),
(621,'s14cs072'),
(622,'s14cs0000'),
(623,'s14cs0000'),
(624,'s14cs0000'),
(625,'s14cs0000'),
(625,'s14cs072'),
(626,'s14cs0000'),
(626,'s14cs072'),
(627,'s14cs0000'),
(628,'s14cs0000'),
(629,'s14cs0000'),
(630,'s14cs0000'),
(631,'s14cs0000'),
(632,'s14cs0000'),
(633,'s14cs0000'),
(634,'s14cs0000'),
(635,'s14cs0000'),
(636,'s14cs0000'),
(637,'s14cs0000'),
(638,'s14cs0000'),
(639,'s14cs0000'),
(640,'s14cs0000'),
(641,'s14cs0000'),
(642,'s14cs0000'),
(643,'s14cs0000'),
(644,'s14cs0000'),
(645,'s14cs0000'),
(646,'s14cs0000'),
(647,'s14cs0000'),
(648,'s14cs0000'),
(649,'s14cs0000'),
(650,'s14cs0000'),
(651,'s14cs0000'),
(652,'s14cs0000'),
(653,'s14cs0000'),
(653,'s14cs118'),
(654,'s14cs0000'),
(655,'s14cs0000'),
(656,'s14cs0000'),
(657,'s14cs0000'),
(657,'s14cs118'),
(658,'s14cs0000'),
(659,'s14cs0000'),
(660,'s14cs0000'),
(660,'s14cs118'),
(661,'s14cs0000'),
(661,'s14cs118'),
(662,'s14cs0000'),
(662,'s14cs118'),
(663,'s14cs0000'),
(664,'s14cs0000'),
(665,'s14cs0000'),
(666,'s14cs0000'),
(666,'s14cs118'),
(667,'s14cs0000'),
(668,'s14cs0000'),
(669,'s14cs0000'),
(670,'s14cs068'),
(670,'s14cs090'),
(671,'s14cs090'),
(672,'s14cs090'),
(673,'s14cs090'),
(674,'s14cs090'),
(675,'s14cs090'),
(676,'s14cs090'),
(677,'s14cs090'),
(678,'s14cs090'),
(679,'s14cs090'),
(680,'s14cs090'),
(681,'s14cs090'),
(682,'s14cs090'),
(683,'s14cs090'),
(684,'s14cs090'),
(685,'s14cs071'),
(685,'s14cs090'),
(686,'s14cs090'),
(687,'s14cs090'),
(688,'s14cs090'),
(689,'s14cs071'),
(689,'s14cs090'),
(690,'s14cs090'),
(691,'s14cs090'),
(692,'s14cs090'),
(693,'s14cs071'),
(694,'s14cs071'),
(695,'s14cs071'),
(696,'s14cs071'),
(697,'s14cs105'),
(698,'s14cs105'),
(699,'s14cs105'),
(700,'s14cs105'),
(701,'s14cs105'),
(702,'s14cs068'),
(702,'s14cs105'),
(703,'s14cs105'),
(704,'s14cs105'),
(705,'s14cs105'),
(706,'s14cs105'),
(707,'s14cs105'),
(708,'s14cs105'),
(709,'s14cs105'),
(710,'s14cs105'),
(711,'s14cs105'),
(712,'s14cs068'),
(712,'s14cs105'),
(713,'s14cs105'),
(714,'s14cs105'),
(715,'s14cs105'),
(716,'s14cs105'),
(717,'s14cs105'),
(718,'s14cs105'),
(719,'s14cs105'),
(720,'s14cs090'),
(721,'s14cs090'),
(722,'s14cs072'),
(722,'s14cs118'),
(723,'s14cs072'),
(723,'s14cs118'),
(724,'s14cs072'),
(724,'s14cs118'),
(725,'s14cs072'),
(725,'s14cs118'),
(726,'s14cs072'),
(726,'s14cs118'),
(727,'s14cs072'),
(728,'s14cs072'),
(729,'s14cs090'),
(730,'s14cs090'),
(731,'s14cs090'),
(732,'s14cs090'),
(733,'s14cs090'),
(734,'s14cs090'),
(735,'s14cs090'),
(736,'s14cs118'),
(737,'s14cs118'),
(738,'s14cs118'),
(739,'s14cs118'),
(740,'s14cs118'),
(741,'s14cs118'),
(742,'s14cs118'),
(743,'s14cs118'),
(744,'s14cs118'),
(745,'s14cs118'),
(746,'s14cs118');

/*Table structure for table `voterblogdetail` */

DROP TABLE IF EXISTS `voterblogdetail`;

CREATE TABLE `voterblogdetail` (
  `bid` int(6) NOT NULL,
  `voterid` varchar(25) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`bid`,`voterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `voterblogdetail` */

insert into `voterblogdetail` values 
(2,'s14cs072','up');

/*Table structure for table `voterdetail` */

DROP TABLE IF EXISTS `voterdetail`;

CREATE TABLE `voterdetail` (
  `voterid` varchar(25) NOT NULL,
  `uid` varchar(25) NOT NULL,
  `qid` int(6) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`voterid`,`uid`,`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `voterdetail` */

insert into `voterdetail` values 
('s14cs072','s14cs072',16,'up');
