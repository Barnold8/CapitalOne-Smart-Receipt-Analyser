use USER_DB;

INSERT INTO USERS(UserName)VALUES("1");

INSERT INTO USERS(UserName)VALUES("2");

INSERT INTO USERS(UserName)VALUES("3");

INSERT INTO USERS(UserName)VALUES("4");

INSERT INTO USERS(UserName)VALUES("5");

INSERT INTO HASHPASS(HPass,UserID)VALUES("a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3",1);

INSERT INTO HASHPASS(HPass,UserID)VALUES("a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3",2);

INSERT INTO HASHPASS(HPass,UserID)VALUES("a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3",3);

INSERT INTO HASHPASS(HPass,UserID)VALUES("a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3",4);

INSERT INTO HASHPASS(HPass,UserID)VALUES("a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3",5);

SET FOREIGN_KEY_CHECKS=0;



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(1,1,'2023-03-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(1,'foo','Baby',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(2,1,'2023-03-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(2,'foo','Technolgies',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(3,1,'2023-03-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(3,'foo','Confectionaries / Cakes / Biscuits',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(4,1,'2023-03-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(4,'foo','Entertainment',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(5,1,'2023-03-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(5,'foo','Entertainment',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(6,1,'2023-03-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(6,'foo','Technolgies',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(7,1,'2023-03-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(7,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(8,1,'2023-03-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(8,'foo','Cleaning',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(9,1,'2023-03-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(9,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(10,1,'2023-03-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(10,'foo','Cleaning',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(11,1,'2023-03-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(11,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(12,1,'2023-03-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(12,'foo','Food&Drink',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(13,1,'2023-03-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(13,'foo','Clothing',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(14,1,'2023-03-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(14,'foo','Entertainment',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(15,1,'2023-03-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(15,'foo','Cleaning',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(16,1,'2023-03-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(16,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(17,1,'2023-03-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(17,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(18,1,'2023-03-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(18,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(19,1,'2023-03-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(19,'foo','Cleaning',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(20,1,'2023-03-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(20,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(21,1,'2023-03-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(21,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(22,1,'2023-03-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(22,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(23,1,'2023-03-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(23,'foo','Alcohol & Smoking',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(24,1,'2023-03-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(24,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(25,1,'2023-03-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(25,'foo','Confectionaries / Cakes / Biscuits',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(26,1,'2023-03-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(26,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(27,1,'2023-03-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(27,'foo','Technolgies',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(28,1,'2023-03-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(28,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(29,1,'2023-03-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(29,'foo','Alcohol & Smoking',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(30,1,'2023-03-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(30,'foo','Technolgies',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(31,1,'2023-03-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(31,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(32,1,'2023-03-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(32,'foo','Baby',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(33,1,'2023-03-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(33,'foo','Household',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(34,1,'2023-03-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(34,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(35,1,'2023-03-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(35,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(36,1,'2023-03-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(36,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(37,1,'2023-03-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(37,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(38,1,'2023-03-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(38,'foo','Alcohol & Smoking',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(39,1,'2023-03-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(39,'foo','Cleaning',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(40,1,'2023-03-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(40,'foo','Cleaning',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(41,1,'2023-03-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(41,'foo','Clothing',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(42,1,'2023-03-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(42,'foo','Food&Drink',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(43,1,'2023-03-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(43,'foo','Food&Drink',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(44,1,'2023-03-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(44,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(45,1,'2023-03-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(45,'foo','Food&Drink',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(46,1,'2023-03-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(46,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(47,1,'2023-03-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(47,'foo','Alcohol & Smoking',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(48,1,'2023-03-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(48,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(49,1,'2023-03-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(49,'foo','Clothing',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(50,1,'2023-03-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(50,'foo','Household',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(51,1,'2023-03-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(51,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(52,1,'2023-03-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(52,'foo','Household',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(53,1,'2023-03-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(53,'foo','Cleaning',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(54,1,'2023-03-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(54,'foo','Food&Drink',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(55,1,'2023-03-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(55,'foo','Technolgies',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(56,1,'2023-03-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(56,'foo','Food&Drink',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(57,1,'2023-03-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(57,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(58,1,'2023-03-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(58,'foo','Baby',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(59,1,'2023-03-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(59,'foo','Confectionaries / Cakes / Biscuits',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(60,1,'2023-03-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(60,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(61,1,'2023-03-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(61,'foo','Technolgies',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(62,1,'2023-03-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(62,'foo','Food&Drink',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(63,1,'2023-03-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(63,'foo','Alcohol & Smoking',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(64,1,'2023-03-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(64,'foo','Technolgies',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(65,1,'2023-03-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(65,'foo','Clothing',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(66,1,'2023-03-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(66,'foo','Clothing',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(67,1,'2023-03-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(67,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(68,1,'2023-03-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(68,'foo','Clothing',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(69,1,'2023-03-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(69,'foo','Clothing',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(70,1,'2023-03-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(70,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(71,1,'2023-03-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(71,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(72,1,'2023-03-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(72,'foo','Cleaning',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(73,1,'2023-03-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(73,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(74,1,'2023-03-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(74,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(75,1,'2023-03-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(75,'foo','Technolgies',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(76,1,'2023-03-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(76,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(77,1,'2023-03-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(77,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(78,1,'2023-03-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(78,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(79,1,'2023-03-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(79,'foo','Alcohol & Smoking',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(80,1,'2023-03-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(80,'foo','Alcohol & Smoking',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(81,1,'2023-03-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(81,'foo','Alcohol & Smoking',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(82,1,'2023-03-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(82,'foo','Entertainment',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(83,1,'2023-03-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(83,'foo','Clothing',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(84,1,'2023-03-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(84,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(85,1,'2023-03-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(85,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(86,1,'2023-03-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(86,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(87,1,'2023-03-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(87,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(88,1,'2023-03-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(88,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(89,1,'2023-03-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(89,'foo','Baby',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(90,1,'2023-03-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(90,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(91,1,'2023-03-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(91,'foo','Clothing',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(92,1,'2023-03-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(92,'foo','Baby',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(93,1,'2023-03-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(93,'foo','Food&Drink',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(94,1,'2023-03-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(94,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(95,1,'2023-03-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(95,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(96,1,'2023-03-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(96,'foo','Alcohol & Smoking',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(97,1,'2023-03-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(97,'foo','Technolgies',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(98,1,'2023-03-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(98,'foo','Entertainment',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(99,1,'2023-03-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(99,'foo','Alcohol & Smoking',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(100,1,'2023-03-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(100,'foo','Alcohol & Smoking',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(101,1,'2023-03-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(101,'foo','Clothing',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(102,1,'2023-03-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(102,'foo','Baby',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(103,1,'2023-03-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(103,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(104,1,'2023-03-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(104,'foo','Technolgies',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(105,1,'2023-03-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(105,'foo','Clothing',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(106,1,'2023-03-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(106,'foo','Alcohol & Smoking',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(107,1,'2023-03-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(107,'foo','Baby',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(108,1,'2023-03-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(108,'foo','Confectionaries / Cakes / Biscuits',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(109,1,'2023-03-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(109,'foo','Clothing',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(110,1,'2023-03-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(110,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(111,1,'2023-03-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(111,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(112,1,'2023-03-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(112,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(113,1,'2023-03-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(113,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(114,1,'2023-03-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(114,'foo','Entertainment',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(115,1,'2023-03-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(115,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(116,1,'2023-03-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(116,'foo','Baby',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(117,1,'2023-03-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(117,'foo','Clothing',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(118,1,'2023-03-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(118,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(119,1,'2023-03-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(119,'foo','Household',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(120,1,'2023-03-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(120,'foo','Clothing',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(121,1,'2023-03-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(121,'foo','Technolgies',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(122,1,'2023-03-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(122,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(123,1,'2023-03-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(123,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(124,1,'2023-03-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(124,'foo','Clothing',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(125,1,'2023-03-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(125,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(126,1,'2023-03-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(126,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(127,1,'2023-03-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(127,'foo','Confectionaries / Cakes / Biscuits',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(128,1,'2023-03-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(128,'foo','Technolgies',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(129,1,'2023-03-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(129,'foo','Technolgies',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(130,1,'2023-03-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(130,'foo','Entertainment',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(131,1,'2023-03-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(131,'foo','Alcohol & Smoking',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(132,1,'2023-03-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(132,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(133,1,'2023-03-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(133,'foo','Technolgies',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(134,1,'2023-03-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(134,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(135,1,'2023-03-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(135,'foo','Entertainment',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(136,1,'2023-03-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(136,'foo','Alcohol & Smoking',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(137,1,'2023-03-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(137,'foo','Clothing',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(138,1,'2023-03-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(138,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(139,1,'2023-03-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(139,'foo','Food&Drink',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(140,1,'2023-03-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(140,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(141,1,'2023-03-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(141,'foo','Entertainment',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(142,1,'2023-03-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(142,'foo','Clothing',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(143,1,'2023-03-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(143,'foo','Household',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(144,1,'2023-03-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(144,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(145,1,'2023-03-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(145,'foo','Clothing',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(146,1,'2023-03-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(146,'foo','Entertainment',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(147,1,'2023-03-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(147,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(148,1,'2023-03-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(148,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(149,1,'2023-03-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(149,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(150,1,'2023-03-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(150,'foo','Cleaning',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(151,1,'2023-03-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(151,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(152,1,'2023-03-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(152,'foo','Clothing',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(153,1,'2023-03-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(153,'foo','Confectionaries / Cakes / Biscuits',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(154,1,'2023-03-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(154,'foo','Technolgies',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(155,1,'2023-03-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(155,'foo','Alcohol & Smoking',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(156,1,'2023-03-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(156,'foo','Baby',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(157,1,'2023-03-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(157,'foo','Baby',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(158,1,'2023-03-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(158,'foo','Household',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(159,1,'2023-03-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(159,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(160,1,'2023-03-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(160,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(161,1,'2023-03-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(161,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(162,1,'2023-03-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(162,'foo','Cleaning',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(163,1,'2023-03-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(163,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(164,1,'2023-03-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(164,'foo','Alcohol & Smoking',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(165,1,'2023-03-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(165,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(166,1,'2023-03-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(166,'foo','Cleaning',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(167,1,'2023-03-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(167,'foo','Baby',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(168,1,'2023-03-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(168,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(169,1,'2023-03-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(169,'foo','Confectionaries / Cakes / Biscuits',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(170,1,'2023-03-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(170,'foo','Alcohol & Smoking',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(171,1,'2023-03-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(171,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(172,1,'2023-03-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(172,'foo','Clothing',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(173,1,'2023-03-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(173,'foo','Clothing',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(174,1,'2023-03-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(174,'foo','Baby',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(175,1,'2023-03-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(175,'foo','Clothing',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(176,1,'2023-03-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(176,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(177,1,'2023-03-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(177,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(178,1,'2023-03-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(178,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(179,1,'2023-03-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(179,'foo','Cleaning',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(180,1,'2023-03-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(180,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(181,1,'2023-03-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(181,'foo','Baby',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(182,1,'2023-03-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(182,'foo','Technolgies',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(183,1,'2023-03-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(183,'foo','Entertainment',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(184,1,'2023-03-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(184,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(185,1,'2023-03-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(185,'foo','Baby',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(186,1,'2023-03-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(186,'foo','Household',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(187,1,'2023-03-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(187,'foo','Confectionaries / Cakes / Biscuits',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(188,1,'2023-03-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(188,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(189,1,'2023-03-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(189,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(190,1,'2023-03-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(190,'foo','Household',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(191,1,'2023-03-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(191,'foo','Cleaning',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(192,1,'2023-03-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(192,'foo','Food&Drink',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(193,1,'2023-03-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(193,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(194,1,'2023-03-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(194,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(195,1,'2023-03-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(195,'foo','Cleaning',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(196,1,'2023-03-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(196,'foo','Household',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(197,1,'2023-03-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(197,'foo','Clothing',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(198,1,'2023-03-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(198,'foo','Household',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(199,1,'2023-03-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(199,'foo','Confectionaries / Cakes / Biscuits',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(200,1,'2023-03-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(200,'foo','Entertainment',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(201,1,'2023-03-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(201,'foo','Confectionaries / Cakes / Biscuits',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(202,1,'2023-03-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(202,'foo','Entertainment',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(203,1,'2023-03-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(203,'foo','Alcohol & Smoking',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(204,1,'2023-03-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(204,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(205,1,'2023-03-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(205,'foo','Confectionaries / Cakes / Biscuits',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(206,1,'2023-03-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(206,'foo','Cleaning',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(207,1,'2023-03-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(207,'foo','Clothing',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(208,1,'2023-03-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(208,'foo','Alcohol & Smoking',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(209,1,'2023-03-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(209,'foo','Alcohol & Smoking',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(210,1,'2023-03-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(210,'foo','Entertainment',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(211,1,'2023-03-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(211,'foo','Cleaning',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(212,1,'2023-03-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(212,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(213,1,'2023-03-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(213,'foo','Cleaning',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(214,1,'2023-03-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(214,'foo','Clothing',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(215,1,'2023-03-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(215,'foo','Household',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(216,1,'2023-03-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(216,'foo','Entertainment',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(217,1,'2023-03-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(217,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(218,1,'2023-03-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(218,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(219,1,'2023-03-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(219,'foo','Clothing',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(220,1,'2023-03-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(220,'foo','Baby',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(221,1,'2023-03-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(221,'foo','Clothing',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(222,1,'2023-03-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(222,'foo','Clothing',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(223,1,'2023-03-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(223,'foo','Alcohol & Smoking',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(224,1,'2023-03-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(224,'foo','Cleaning',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(225,1,'2023-03-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(225,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(226,1,'2023-03-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(226,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(227,1,'2023-03-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(227,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(228,1,'2023-03-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(228,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(229,1,'2023-03-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(229,'foo','Technolgies',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(230,1,'2023-03-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(230,'foo','Confectionaries / Cakes / Biscuits',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(231,1,'2023-03-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(231,'foo','Cleaning',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(232,1,'2023-03-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(232,'foo','Cleaning',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(233,1,'2023-02-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(233,'foo','Clothing',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(234,1,'2023-02-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(234,'foo','Clothing',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(235,1,'2023-02-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(235,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(236,1,'2023-02-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(236,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(237,1,'2023-02-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(237,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(238,1,'2023-02-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(238,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(239,1,'2023-02-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(239,'foo','Cleaning',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(240,1,'2023-02-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(240,'foo','Technolgies',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(241,1,'2023-02-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(241,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(242,1,'2023-02-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(242,'foo','Entertainment',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(243,1,'2023-02-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(243,'foo','Household',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(244,1,'2023-02-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(244,'foo','Clothing',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(245,1,'2023-02-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(245,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(246,1,'2023-02-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(246,'foo','Food&Drink',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(247,1,'2023-02-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(247,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(248,1,'2023-02-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(248,'foo','Household',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(249,1,'2023-02-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(249,'foo','Alcohol & Smoking',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(250,1,'2023-02-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(250,'foo','Cleaning',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(251,1,'2023-02-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(251,'foo','Food&Drink',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(252,1,'2023-02-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(252,'foo','Cleaning',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(253,1,'2023-02-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(253,'foo','Food&Drink',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(254,1,'2023-02-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(254,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(255,1,'2023-02-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(255,'foo','Baby',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(256,1,'2023-02-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(256,'foo','Cleaning',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(257,1,'2023-02-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(257,'foo','Baby',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(258,1,'2023-02-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(258,'foo','Clothing',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(259,1,'2023-02-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(259,'foo','Alcohol & Smoking',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(260,1,'2023-02-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(260,'foo','Household',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(261,1,'2023-02-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(261,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(262,1,'2023-02-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(262,'foo','Entertainment',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(263,1,'2023-02-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(263,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(264,1,'2023-02-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(264,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(265,1,'2023-02-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(265,'foo','Household',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(266,1,'2023-02-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(266,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(267,1,'2023-02-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(267,'foo','Entertainment',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(268,1,'2023-02-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(268,'foo','Cleaning',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(269,1,'2023-02-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(269,'foo','Cleaning',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(270,1,'2023-02-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(270,'foo','Technolgies',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(271,1,'2023-02-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(271,'foo','Entertainment',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(272,1,'2023-02-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(272,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(273,1,'2023-02-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(273,'foo','Cleaning',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(274,1,'2023-02-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(274,'foo','Household',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(275,1,'2023-02-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(275,'foo','Food&Drink',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(276,1,'2023-02-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(276,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(277,1,'2023-02-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(277,'foo','Food&Drink',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(278,1,'2023-02-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(278,'foo','Household',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(279,1,'2023-02-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(279,'foo','Technolgies',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(280,1,'2023-02-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(280,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(281,1,'2023-02-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(281,'foo','Cleaning',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(282,1,'2023-02-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(282,'foo','Clothing',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(283,1,'2023-02-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(283,'foo','Entertainment',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(284,1,'2023-02-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(284,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(285,1,'2023-02-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(285,'foo','Entertainment',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(286,1,'2023-02-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(286,'foo','Food&Drink',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(287,1,'2023-02-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(287,'foo','Alcohol & Smoking',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(288,1,'2023-02-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(288,'foo','Alcohol & Smoking',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(289,1,'2023-02-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(289,'foo','Cleaning',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(290,1,'2023-02-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(290,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(291,1,'2023-02-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(291,'foo','Household',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(292,1,'2023-02-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(292,'foo','Household',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(293,1,'2023-02-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(293,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(294,1,'2023-02-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(294,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(295,1,'2023-02-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(295,'foo','Baby',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(296,1,'2023-02-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(296,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(297,1,'2023-02-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(297,'foo','Cleaning',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(298,1,'2023-02-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(298,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(299,1,'2023-02-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(299,'foo','Technolgies',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(300,1,'2023-02-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(300,'foo','Entertainment',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(301,1,'2023-02-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(301,'foo','Cleaning',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(302,1,'2023-02-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(302,'foo','Baby',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(303,1,'2023-02-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(303,'foo','Clothing',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(304,1,'2023-02-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(304,'foo','Technolgies',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(305,1,'2023-02-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(305,'foo','Entertainment',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(306,1,'2023-02-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(306,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(307,1,'2023-02-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(307,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(308,1,'2023-02-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(308,'foo','Cleaning',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(309,1,'2023-02-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(309,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(310,1,'2023-02-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(310,'foo','Cleaning',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(311,1,'2023-02-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(311,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(312,1,'2023-02-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(312,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(313,1,'2023-02-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(313,'foo','Clothing',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(314,1,'2023-02-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(314,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(315,1,'2023-02-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(315,'foo','Confectionaries / Cakes / Biscuits',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(316,1,'2023-02-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(316,'foo','Technolgies',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(317,1,'2023-02-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(317,'foo','Baby',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(318,1,'2023-02-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(318,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(319,1,'2023-02-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(319,'foo','Household',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(320,1,'2023-02-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(320,'foo','Confectionaries / Cakes / Biscuits',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(321,1,'2023-02-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(321,'foo','Clothing',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(322,1,'2023-02-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(322,'foo','Technolgies',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(323,1,'2023-02-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(323,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(324,1,'2023-02-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(324,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(325,1,'2023-02-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(325,'foo','Cleaning',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(326,1,'2023-02-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(326,'foo','Confectionaries / Cakes / Biscuits',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(327,1,'2023-02-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(327,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(328,1,'2023-02-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(328,'foo','Alcohol & Smoking',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(329,1,'2023-02-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(329,'foo','Confectionaries / Cakes / Biscuits',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(330,1,'2023-02-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(330,'foo','Cleaning',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(331,1,'2023-02-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(331,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(332,1,'2023-02-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(332,'foo','Household',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(333,1,'2023-02-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(333,'foo','Clothing',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(334,1,'2023-02-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(334,'foo','Baby',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(335,1,'2023-02-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(335,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(336,1,'2023-02-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(336,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(337,1,'2023-02-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(337,'foo','Clothing',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(338,1,'2023-02-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(338,'foo','Cleaning',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(339,1,'2023-02-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(339,'foo','Alcohol & Smoking',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(340,1,'2023-02-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(340,'foo','Baby',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(341,1,'2023-02-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(341,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(342,1,'2023-02-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(342,'foo','Clothing',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(343,1,'2023-02-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(343,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(344,1,'2023-02-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(344,'foo','Food&Drink',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(345,1,'2023-02-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(345,'foo','Cleaning',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(346,1,'2023-02-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(346,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(347,1,'2023-02-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(347,'foo','Alcohol & Smoking',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(348,1,'2023-02-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(348,'foo','Household',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(349,1,'2023-02-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(349,'foo','Entertainment',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(350,1,'2023-02-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(350,'foo','Technolgies',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(351,1,'2023-02-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(351,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(352,1,'2023-02-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(352,'foo','Alcohol & Smoking',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(353,1,'2023-02-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(353,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(354,1,'2023-02-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(354,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(355,1,'2023-02-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(355,'foo','Clothing',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(356,1,'2023-02-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(356,'foo','Cleaning',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(357,1,'2023-02-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(357,'foo','Household',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(358,1,'2023-02-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(358,'foo','Technolgies',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(359,1,'2023-02-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(359,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(360,1,'2023-02-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(360,'foo','Alcohol & Smoking',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(361,1,'2023-02-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(361,'foo','Entertainment',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(362,1,'2023-02-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(362,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(363,1,'2023-02-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(363,'foo','Clothing',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(364,1,'2023-02-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(364,'foo','Household',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(365,1,'2023-02-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(365,'foo','Food&Drink',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(366,1,'2023-02-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(366,'foo','Baby',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(367,1,'2023-02-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(367,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(368,1,'2023-02-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(368,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(369,1,'2023-02-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(369,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(370,1,'2023-02-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(370,'foo','Entertainment',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(371,1,'2023-02-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(371,'foo','Alcohol & Smoking',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(372,1,'2023-02-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(372,'foo','Household',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(373,1,'2023-02-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(373,'foo','Clothing',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(374,1,'2023-02-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(374,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(375,1,'2023-02-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(375,'foo','Baby',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(376,1,'2023-02-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(376,'foo','Technolgies',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(377,1,'2023-02-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(377,'foo','Cleaning',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(378,1,'2023-02-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(378,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(379,1,'2023-02-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(379,'foo','Baby',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(380,1,'2023-02-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(380,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(381,1,'2023-02-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(381,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(382,1,'2023-02-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(382,'foo','Cleaning',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(383,1,'2023-02-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(383,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(384,1,'2023-02-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(384,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(385,1,'2023-02-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(385,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(386,1,'2023-02-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(386,'foo','Clothing',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(387,1,'2023-02-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(387,'foo','Baby',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(388,1,'2023-02-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(388,'foo','Food&Drink',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(389,1,'2023-02-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(389,'foo','Baby',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(390,1,'2023-02-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(390,'foo','Baby',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(391,1,'2023-02-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(391,'foo','Household',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(392,1,'2023-02-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(392,'foo','Household',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(393,1,'2023-02-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(393,'foo','Household',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(394,1,'2023-02-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(394,'foo','Cleaning',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(395,1,'2023-02-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(395,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(396,1,'2023-02-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(396,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(397,1,'2023-02-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(397,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(398,1,'2023-02-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(398,'foo','Alcohol & Smoking',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(399,1,'2023-02-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(399,'foo','Clothing',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(400,1,'2023-02-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(400,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(401,1,'2023-02-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(401,'foo','Household',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(402,1,'2023-02-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(402,'foo','Food&Drink',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(403,1,'2023-02-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(403,'foo','Household',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(404,1,'2023-02-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(404,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(405,1,'2023-02-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(405,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(406,1,'2023-02-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(406,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(407,1,'2023-02-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(407,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(408,1,'2023-02-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(408,'foo','Baby',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(409,1,'2023-02-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(409,'foo','Household',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(410,1,'2023-02-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(410,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(411,1,'2023-02-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(411,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(412,1,'2023-02-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(412,'foo','Alcohol & Smoking',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(413,1,'2023-02-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(413,'foo','Entertainment',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(414,1,'2023-02-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(414,'foo','Baby',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(415,1,'2023-02-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(415,'foo','Entertainment',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(416,1,'2023-02-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(416,'foo','Technolgies',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(417,1,'2023-02-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(417,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(418,1,'2023-02-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(418,'foo','Cleaning',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(419,1,'2023-02-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(419,'foo','Cleaning',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(420,1,'2023-02-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(420,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(421,1,'2023-02-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(421,'foo','Technolgies',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(422,1,'2023-02-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(422,'foo','Alcohol & Smoking',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(423,1,'2023-02-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(423,'foo','Alcohol & Smoking',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(424,1,'2023-02-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(424,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(425,1,'2023-02-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(425,'foo','Household',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(426,1,'2023-02-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(426,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(427,1,'2023-02-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(427,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(428,1,'2023-02-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(428,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(429,1,'2023-02-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(429,'foo','Baby',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(430,1,'2023-02-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(430,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(431,1,'2023-02-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(431,'foo','Food&Drink',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(432,1,'2023-02-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(432,'foo','Clothing',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(433,1,'2023-02-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(433,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(434,1,'2023-02-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(434,'foo','Technolgies',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(435,1,'2023-02-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(435,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(436,1,'2023-02-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(436,'foo','Entertainment',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(437,1,'2023-02-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(437,'foo','Baby',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(438,1,'2023-02-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(438,'foo','Food&Drink',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(439,1,'2023-02-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(439,'foo','Alcohol & Smoking',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(440,1,'2023-02-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(440,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(441,1,'2023-02-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(441,'foo','Alcohol & Smoking',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(442,1,'2023-02-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(442,'foo','Cleaning',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(443,1,'2023-02-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(443,'foo','Entertainment',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(444,1,'2023-02-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(444,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(445,1,'2023-02-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(445,'foo','Household',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(446,1,'2023-02-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(446,'foo','Baby',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(447,1,'2023-02-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(447,'foo','Food&Drink',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(448,1,'2023-02-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(448,'foo','Cleaning',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(449,1,'2023-02-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(449,'foo','Food&Drink',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(450,1,'2023-02-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(450,'foo','Cleaning',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(451,1,'2023-02-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(451,'foo','Clothing',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(452,1,'2023-02-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(452,'foo','Entertainment',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(453,1,'2023-02-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(453,'foo','Technolgies',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(454,1,'2023-02-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(454,'foo','Technolgies',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(455,1,'2023-02-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(455,'foo','Entertainment',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(456,1,'2023-02-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(456,'foo','Household',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(457,1,'2023-01-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(457,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(458,1,'2023-01-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(458,'foo','Cleaning',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(459,1,'2023-01-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(459,'foo','Entertainment',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(460,1,'2023-01-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(460,'foo','Clothing',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(461,1,'2023-01-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(461,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(462,1,'2023-01-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(462,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(463,1,'2023-01-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(463,'foo','Cleaning',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(464,1,'2023-01-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(464,'foo','Baby',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(465,1,'2023-01-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(465,'foo','Household',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(466,1,'2023-01-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(466,'foo','Food&Drink',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(467,1,'2023-01-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(467,'foo','Clothing',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(468,1,'2023-01-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(468,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(469,1,'2023-01-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(469,'foo','Baby',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(470,1,'2023-01-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(470,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(471,1,'2023-01-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(471,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(472,1,'2023-01-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(472,'foo','Household',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(473,1,'2023-01-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(473,'foo','Household',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(474,1,'2023-01-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(474,'foo','Clothing',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(475,1,'2023-01-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(475,'foo','Cleaning',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(476,1,'2023-01-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(476,'foo','Food&Drink',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(477,1,'2023-01-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(477,'foo','Clothing',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(478,1,'2023-01-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(478,'foo','Technolgies',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(479,1,'2023-01-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(479,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(480,1,'2023-01-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(480,'foo','Clothing',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(481,1,'2023-01-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(481,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(482,1,'2023-01-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(482,'foo','Entertainment',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(483,1,'2023-01-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(483,'foo','Confectionaries / Cakes / Biscuits',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(484,1,'2023-01-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(484,'foo','Cleaning',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(485,1,'2023-01-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(485,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(486,1,'2023-01-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(486,'foo','Cleaning',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(487,1,'2023-01-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(487,'foo','Household',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(488,1,'2023-01-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(488,'foo','Technolgies',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(489,1,'2023-01-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(489,'foo','Entertainment',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(490,1,'2023-01-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(490,'foo','Entertainment',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(491,1,'2023-01-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(491,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(492,1,'2023-01-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(492,'foo','Entertainment',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(493,1,'2023-01-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(493,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(494,1,'2023-01-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(494,'foo','Clothing',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(495,1,'2023-01-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(495,'foo','Confectionaries / Cakes / Biscuits',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(496,1,'2023-01-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(496,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(497,1,'2023-01-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(497,'foo','Alcohol & Smoking',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(498,1,'2023-01-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(498,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(499,1,'2023-01-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(499,'foo','Clothing',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(500,1,'2023-01-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(500,'foo','Confectionaries / Cakes / Biscuits',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(501,1,'2023-01-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(501,'foo','Clothing',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(502,1,'2023-01-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(502,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(503,1,'2023-01-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(503,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(504,1,'2023-01-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(504,'foo','Clothing',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(505,1,'2023-01-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(505,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(506,1,'2023-01-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(506,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(507,1,'2023-01-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(507,'foo','Confectionaries / Cakes / Biscuits',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(508,1,'2023-01-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(508,'foo','Cleaning',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(509,1,'2023-01-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(509,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(510,1,'2023-01-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(510,'foo','Household',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(511,1,'2023-01-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(511,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(512,1,'2023-01-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(512,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(513,1,'2023-01-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(513,'foo','Alcohol & Smoking',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(514,1,'2023-01-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(514,'foo','Confectionaries / Cakes / Biscuits',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(515,1,'2023-01-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(515,'foo','Technolgies',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(516,1,'2023-01-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(516,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(517,1,'2023-01-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(517,'foo','Clothing',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(518,1,'2023-01-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(518,'foo','Baby',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(519,1,'2023-01-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(519,'foo','Cleaning',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(520,1,'2023-01-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(520,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(521,1,'2023-01-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(521,'foo','Baby',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(522,1,'2023-01-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(522,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(523,1,'2023-01-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(523,'foo','Technolgies',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(524,1,'2023-01-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(524,'foo','Alcohol & Smoking',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(525,1,'2023-01-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(525,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(526,1,'2023-01-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(526,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(527,1,'2023-01-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(527,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(528,1,'2023-01-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(528,'foo','Entertainment',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(529,1,'2023-01-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(529,'foo','Confectionaries / Cakes / Biscuits',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(530,1,'2023-01-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(530,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(531,1,'2023-01-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(531,'foo','Baby',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(532,1,'2023-01-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(532,'foo','Baby',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(533,1,'2023-01-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(533,'foo','Confectionaries / Cakes / Biscuits',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(534,1,'2023-01-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(534,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(535,1,'2023-01-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(535,'foo','Alcohol & Smoking',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(536,1,'2023-01-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(536,'foo','Baby',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(537,1,'2023-01-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(537,'foo','Household',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(538,1,'2023-01-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(538,'foo','Clothing',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(539,1,'2023-01-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(539,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(540,1,'2023-01-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(540,'foo','Household',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(541,1,'2023-01-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(541,'foo','Technolgies',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(542,1,'2023-01-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(542,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(543,1,'2023-01-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(543,'foo','Cleaning',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(544,1,'2023-01-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(544,'foo','Cleaning',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(545,1,'2023-01-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(545,'foo','Technolgies',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(546,1,'2023-01-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(546,'foo','Entertainment',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(547,1,'2023-01-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(547,'foo','Baby',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(548,1,'2023-01-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(548,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(549,1,'2023-01-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(549,'foo','Alcohol & Smoking',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(550,1,'2023-01-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(550,'foo','Confectionaries / Cakes / Biscuits',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(551,1,'2023-01-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(551,'foo','Baby',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(552,1,'2023-01-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(552,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(553,1,'2023-01-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(553,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(554,1,'2023-01-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(554,'foo','Food&Drink',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(555,1,'2023-01-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(555,'foo','Cleaning',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(556,1,'2023-01-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(556,'foo','Food&Drink',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(557,1,'2023-01-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(557,'foo','Clothing',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(558,1,'2023-01-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(558,'foo','Entertainment',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(559,1,'2023-01-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(559,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(560,1,'2023-01-19');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(560,'foo','Technolgies',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(561,1,'2023-01-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(561,'foo','Baby',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(562,1,'2023-01-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(562,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(563,1,'2023-01-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(563,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(564,1,'2023-01-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(564,'foo','Alcohol & Smoking',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(565,1,'2023-01-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(565,'foo','Confectionaries / Cakes / Biscuits',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(566,1,'2023-01-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(566,'foo','Food&Drink',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(567,1,'2023-01-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(567,'foo','Entertainment',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(568,1,'2023-01-18');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(568,'foo','Technolgies',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(569,1,'2023-01-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(569,'foo','Clothing',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(570,1,'2023-01-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(570,'foo','Household',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(571,1,'2023-01-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(571,'foo','Household',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(572,1,'2023-01-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(572,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(573,1,'2023-01-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(573,'foo','Clothing',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(574,1,'2023-01-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(574,'foo','Household',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(575,1,'2023-01-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(575,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(576,1,'2023-01-17');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(576,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(577,1,'2023-01-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(577,'foo','Alcohol & Smoking',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(578,1,'2023-01-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(578,'foo','Alcohol & Smoking',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(579,1,'2023-01-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(579,'foo','Household',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(580,1,'2023-01-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(580,'foo','Entertainment',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(581,1,'2023-01-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(581,'foo','Household',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(582,1,'2023-01-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(582,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(583,1,'2023-01-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(583,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(584,1,'2023-01-16');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(584,'foo','Food&Drink',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(585,1,'2023-01-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(585,'foo','Clothing',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(586,1,'2023-01-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(586,'foo','Entertainment',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(587,1,'2023-01-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(587,'foo','Technolgies',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(588,1,'2023-01-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(588,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(589,1,'2023-01-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(589,'foo','Clothing',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(590,1,'2023-01-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(590,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(591,1,'2023-01-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(591,'foo','Technolgies',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(592,1,'2023-01-15');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(592,'foo','Baby',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(593,1,'2023-01-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(593,'foo','Cleaning',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(594,1,'2023-01-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(594,'foo','Technolgies',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(595,1,'2023-01-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(595,'foo','Entertainment',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(596,1,'2023-01-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(596,'foo','Food&Drink',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(597,1,'2023-01-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(597,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(598,1,'2023-01-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(598,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(599,1,'2023-01-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(599,'foo','Confectionaries / Cakes / Biscuits',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(600,1,'2023-01-14');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(600,'foo','Alcohol & Smoking',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(601,1,'2023-01-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(601,'foo','Baby',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(602,1,'2023-01-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(602,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(603,1,'2023-01-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(603,'foo','Food&Drink',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(604,1,'2023-01-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(604,'foo','Clothing',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(605,1,'2023-01-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(605,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(606,1,'2023-01-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(606,'foo','Technolgies',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(607,1,'2023-01-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(607,'foo','Technolgies',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(608,1,'2023-01-13');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(608,'foo','Clothing',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(609,1,'2023-01-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(609,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(610,1,'2023-01-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(610,'foo','Alcohol & Smoking',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(611,1,'2023-01-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(611,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(612,1,'2023-01-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(612,'foo','Cleaning',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(613,1,'2023-01-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(613,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(614,1,'2023-01-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(614,'foo','Household',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(615,1,'2023-01-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(615,'foo','Cleaning',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(616,1,'2023-01-12');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(616,'foo','Confectionaries / Cakes / Biscuits',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(617,1,'2023-01-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(617,'foo','Baby',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(618,1,'2023-01-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(618,'foo','Clothing',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(619,1,'2023-01-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(619,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(620,1,'2023-01-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(620,'foo','Cleaning',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(621,1,'2023-01-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(621,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(622,1,'2023-01-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(622,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(623,1,'2023-01-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(623,'foo','Food&Drink',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(624,1,'2023-01-11');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(624,'foo','Entertainment',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(625,1,'2023-01-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(625,'foo','Household',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(626,1,'2023-01-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(626,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(627,1,'2023-01-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(627,'foo','Technolgies',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(628,1,'2023-01-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(628,'foo','Alcohol & Smoking',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(629,1,'2023-01-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(629,'foo','Food&Drink',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(630,1,'2023-01-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(630,'foo','Household',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(631,1,'2023-01-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(631,'foo','Food&Drink',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(632,1,'2023-01-10');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(632,'foo','Cleaning',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(633,1,'2023-01-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(633,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(634,1,'2023-01-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(634,'foo','Baby',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(635,1,'2023-01-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(635,'foo','Cleaning',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(636,1,'2023-01-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(636,'foo','Alcohol & Smoking',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(637,1,'2023-01-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(637,'foo','Food&Drink',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(638,1,'2023-01-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(638,'foo','Household',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(639,1,'2023-01-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(639,'foo','Confectionaries / Cakes / Biscuits',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(640,1,'2023-01-09');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(640,'foo','Clothing',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(641,1,'2023-01-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(641,'foo','Household',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(642,1,'2023-01-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(642,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(643,1,'2023-01-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(643,'foo','Alcohol & Smoking',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(644,1,'2023-01-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(644,'foo','Food&Drink',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(645,1,'2023-01-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(645,'foo','Alcohol & Smoking',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(646,1,'2023-01-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(646,'foo','Baby',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(647,1,'2023-01-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(647,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(648,1,'2023-01-08');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(648,'foo','Baby',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(649,1,'2023-01-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(649,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(650,1,'2023-01-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(650,'foo','Food&Drink',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(651,1,'2023-01-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(651,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(652,1,'2023-01-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(652,'foo','Food&Drink',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(653,1,'2023-01-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(653,'foo','Baby',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(654,1,'2023-01-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(654,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(655,1,'2023-01-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(655,'foo','Baby',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(656,1,'2023-01-07');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(656,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(657,1,'2023-01-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(657,'foo','Baby',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(658,1,'2023-01-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(658,'foo','Food&Drink',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(659,1,'2023-01-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(659,'foo','Alcohol & Smoking',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(660,1,'2023-01-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(660,'foo','Entertainment',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(661,1,'2023-01-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(661,'foo','Household',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(662,1,'2023-01-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(662,'foo','Entertainment',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(663,1,'2023-01-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(663,'foo','Food&Drink',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(664,1,'2023-01-06');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(664,'foo','Alcohol & Smoking',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(665,1,'2023-01-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(665,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(666,1,'2023-01-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(666,'foo','Food&Drink',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(667,1,'2023-01-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(667,'foo','Technolgies',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(668,1,'2023-01-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(668,'foo','Baby',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(669,1,'2023-01-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(669,'foo','Cleaning',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(670,1,'2023-01-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(670,'foo','Entertainment',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(671,1,'2023-01-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(671,'foo','Baby',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(672,1,'2023-01-05');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(672,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(673,1,'2023-01-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(673,'foo','Food&Drink',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(674,1,'2023-01-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(674,'foo','Confectionaries / Cakes / Biscuits',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(675,1,'2023-01-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(675,'foo','Food&Drink',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(676,1,'2023-01-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(676,'foo','Clothing',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(677,1,'2023-01-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(677,'foo','Entertainment',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(678,1,'2023-01-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(678,'foo','Confectionaries / Cakes / Biscuits',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(679,1,'2023-01-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(679,'foo','Clothing',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(680,1,'2023-01-04');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(680,'foo','Technolgies',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(681,1,'2023-01-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(681,'foo','Cleaning',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(682,1,'2023-01-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(682,'foo','Confectionaries / Cakes / Biscuits',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(683,1,'2023-01-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(683,'foo','Entertainment',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(684,1,'2023-01-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(684,'foo','Alcohol & Smoking',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(685,1,'2023-01-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(685,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(686,1,'2023-01-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(686,'foo','Cleaning',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(687,1,'2023-01-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(687,'foo','Cleaning',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(688,1,'2023-01-03');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(688,'foo','Alcohol & Smoking',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(689,1,'2023-01-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(689,'foo','Household',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(690,1,'2023-01-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(690,'foo','Clothing',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(691,1,'2023-01-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(691,'foo','Alcohol & Smoking',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(692,1,'2023-01-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(692,'foo','Confectionaries / Cakes / Biscuits',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(693,1,'2023-01-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(693,'foo','Baby',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(694,1,'2023-01-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(694,'foo','Alcohol & Smoking',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(695,1,'2023-01-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(695,'foo','Baby',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(696,1,'2023-01-02');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(696,'foo','Household',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(697,1,'2023-01-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(697,'foo','Alcohol & Smoking',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(698,1,'2023-01-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(698,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(699,1,'2023-01-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(699,'foo','Household',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(700,1,'2023-01-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(700,'foo','Entertainment',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(701,1,'2023-01-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(701,'foo','Household',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(702,1,'2023-01-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(702,'foo','Clothing',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(703,1,'2023-01-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(703,'foo','Food&Drink',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(704,1,'2023-01-01');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(704,'foo','Confectionaries / Cakes / Biscuits',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(705,1,'2022-12-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(705,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(706,1,'2022-12-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(706,'foo','Cleaning',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(707,1,'2022-12-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(707,'foo','Clothing',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(708,1,'2022-12-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(708,'foo','Cleaning',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(709,1,'2022-12-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(709,'foo','Baby',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(710,1,'2022-12-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(710,'foo','Technolgies',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(711,1,'2022-12-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(711,'foo','Cleaning',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(712,1,'2022-12-31');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(712,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(713,1,'2022-12-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(713,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(714,1,'2022-12-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(714,'foo','Food&Drink',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(715,1,'2022-12-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(715,'foo','Confectionaries / Cakes / Biscuits',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(716,1,'2022-12-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(716,'foo','Baby',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(717,1,'2022-12-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(717,'foo','Cleaning',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(718,1,'2022-12-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(718,'foo','Baby',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(719,1,'2022-12-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(719,'foo','Food&Drink',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(720,1,'2022-12-30');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(720,'foo','Technolgies',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(721,1,'2022-12-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(721,'foo','Food&Drink',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(722,1,'2022-12-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(722,'foo','Clothing',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(723,1,'2022-12-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(723,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(724,1,'2022-12-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(724,'foo','Technolgies',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(725,1,'2022-12-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(725,'foo','Cleaning',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(726,1,'2022-12-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(726,'foo','Technolgies',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(727,1,'2022-12-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(727,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(728,1,'2022-12-29');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(728,'foo','Household',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(729,1,'2022-12-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(729,'foo','Cleaning',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(730,1,'2022-12-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(730,'foo','Baby',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(731,1,'2022-12-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(731,'foo','Food&Drink',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(732,1,'2022-12-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(732,'foo','Alcohol & Smoking',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(733,1,'2022-12-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(733,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(734,1,'2022-12-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(734,'foo','Baby',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(735,1,'2022-12-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(735,'foo','Technolgies',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(736,1,'2022-12-28');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(736,'foo','Technolgies',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(737,1,'2022-12-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(737,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(738,1,'2022-12-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(738,'foo','Confectionaries / Cakes / Biscuits',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(739,1,'2022-12-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(739,'foo','Household',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(740,1,'2022-12-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(740,'foo','Food&Drink',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(741,1,'2022-12-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(741,'foo','Baby',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(742,1,'2022-12-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(742,'foo','Entertainment',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(743,1,'2022-12-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(743,'foo','Cleaning',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(744,1,'2022-12-27');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(744,'foo','Entertainment',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(745,1,'2022-12-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(745,'foo','Clothing',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(746,1,'2022-12-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(746,'foo','Technolgies',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(747,1,'2022-12-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(747,'foo','Baby',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(748,1,'2022-12-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(748,'foo','Household',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(749,1,'2022-12-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(749,'foo','Cleaning',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(750,1,'2022-12-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(750,'foo','Alcohol & Smoking',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(751,1,'2022-12-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(751,'foo','Confectionaries / Cakes / Biscuits',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(752,1,'2022-12-26');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(752,'foo','Clothing',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(753,1,'2022-12-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(753,'foo','Technolgies',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(754,1,'2022-12-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(754,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(755,1,'2022-12-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(755,'foo','Clothing',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(756,1,'2022-12-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(756,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(757,1,'2022-12-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(757,'foo','Clothing',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(758,1,'2022-12-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(758,'foo','Cleaning',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(759,1,'2022-12-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(759,'foo','Food&Drink',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(760,1,'2022-12-25');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(760,'foo','Alcohol & Smoking',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(761,1,'2022-12-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(761,'foo','Household',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(762,1,'2022-12-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(762,'foo','Food&Drink',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(763,1,'2022-12-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(763,'foo','Clothing',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(764,1,'2022-12-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(764,'foo','Household',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(765,1,'2022-12-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(765,'foo','Baby',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(766,1,'2022-12-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(766,'foo','Household',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(767,1,'2022-12-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(767,'foo','Baby',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(768,1,'2022-12-24');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(768,'foo','Clothing',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(769,1,'2022-12-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(769,'foo','Cleaning',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(770,1,'2022-12-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(770,'foo','Household',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(771,1,'2022-12-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(771,'foo','Entertainment',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(772,1,'2022-12-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(772,'foo','Entertainment',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(773,1,'2022-12-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(773,'foo','Entertainment',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(774,1,'2022-12-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(774,'foo','Alcohol & Smoking',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(775,1,'2022-12-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(775,'foo','Clothing',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(776,1,'2022-12-23');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(776,'foo','Clothing',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(777,1,'2022-12-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(777,'foo','Clothing',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(778,1,'2022-12-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(778,'foo','Baby',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(779,1,'2022-12-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(779,'foo','Entertainment',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(780,1,'2022-12-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(780,'foo','Entertainment',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(781,1,'2022-12-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(781,'foo','Baby',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(782,1,'2022-12-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(782,'foo','Household',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(783,1,'2022-12-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(783,'foo','Technolgies',0.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(784,1,'2022-12-22');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(784,'foo','Alcohol & Smoking',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(785,1,'2022-12-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(785,'foo','Cleaning',3.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(786,1,'2022-12-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(786,'foo','Clothing',5.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(787,1,'2022-12-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(787,'foo','Technolgies',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(788,1,'2022-12-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(788,'foo','Food&Drink',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(789,1,'2022-12-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(789,'foo','Technolgies',9.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(790,1,'2022-12-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(790,'foo','Cleaning',7.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(791,1,'2022-12-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(791,'foo','Household',8.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(792,1,'2022-12-21');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(792,'foo','Food&Drink',6.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(793,1,'2022-12-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(793,'foo','Clothing',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(794,1,'2022-12-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(794,'foo','Technolgies',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(795,1,'2022-12-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(795,'foo','Entertainment',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(796,1,'2022-12-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(796,'foo','Confectionaries / Cakes / Biscuits',2.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(797,1,'2022-12-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(797,'foo','Household',10.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(798,1,'2022-12-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(798,'foo','Food&Drink',4.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(799,1,'2022-12-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(799,'foo','Cleaning',1.0);



INSERT INTO RECEIPTS (ReceiptID,UserID,BuyDate)VALUES(800,1,'2022-12-20');
INSERT INTO ITEMS(ReceiptID,ItemName,ItemCategory,ItemPrice)VALUES(800,'foo','Baby',10.0);
