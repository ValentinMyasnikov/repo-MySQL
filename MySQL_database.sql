/*Задача - создание базы данных книжного онлайн магазина, где будут данные о книгах, заказах, покупателях, а также ряд прочих данных, дополняющих основные*/


drop database if exists final_project;
create database final_project;
use final_project;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Bartholome','Dibbert','zkuhlman@example.net',96489161,'1988-05-01'),(2,'Royal','Koch','pablo.zboncak@example.com',96785642,'2020-02-22'),(3,'Fleta','Yundt','josianne28@example.org',93499592,'2018-05-20'),(4,'Alexie','Heaney','udouglas@example.com',95621986,'1982-08-13'),(5,'Ava','Hudson','jones.johnathan@example.com',90896892,'1970-09-13'),(6,'Rahul','Walter','dewitt49@example.org',96921625,'1995-11-29'),(7,'Rod','Schamberger','langworth.jordy@example.com',97163456,'1988-03-12'),(8,'Heaven','Conroy','camden.bauch@example.org',97333281,'2008-11-12'),(9,'Aurelia','Wehner','hartmann.keeley@example.com',97116163,'1977-04-25'),(10,'Alvera','Ankunding','maynard.abshire@example.net',96653730,'1972-03-20'),(11,'Nicole','Blick','holly70@example.com',92127733,'1998-10-16'),(12,'Lauren','Boyer','demario.hoeger@example.net',96603203,'1997-11-17'),(13,'Kaylah','Tillman','brianne89@example.org',92065583,'1986-10-07'),(14,'Ross','Bogisich','houston.raynor@example.net',96182599,'1982-08-30'),(15,'Alta','Lind','kassulke.maria@example.com',94565454,'1984-12-05'),(16,'Bo','Streich','pebert@example.net',97837160,'1989-01-18'),(17,'Nella','Schneider','destinee.cassin@example.net',92333607,'1980-12-23'),(18,'Kristina','Gutkowski','mreynolds@example.net',94605821,'1991-02-14'),(19,'Sadie','Connelly','lionel63@example.com',92602174,'2007-11-03'),(20,'Paolo','Keebler','reyes.stracke@example.com',96847178,'2009-03-07');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `genre_id` bigint(20) unsigned NOT NULL,
  `storage_id` bigint(20) unsigned NOT NULL,
  `published_year` year(4) DEFAULT NULL,
  `annotation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `genre_id` (`genre_id`),
  KEY `storage_id` (`storage_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `books_ibfk_3` FOREIGN KEY (`storage_id`) REFERENCES `storage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'libero',19,2,1,1982,'Queen of Hearts were seated on their backs was the only difficulty was, that she knew she had got its head to hide a smile: some of the doors of the earth. Let me see--how IS it to make ONE.','1972-12-27 07:20:20','1993-09-25 06:27:02'),(2,'reiciendis',5,2,5,2022,'As they walked off together. Alice was too much frightened that she wanted much to know, but the Dodo had paused as if it had finished this short speech, they all cheered. Alice thought the whole.','1970-11-27 08:52:41','1989-10-26 14:32:38'),(3,'ea',12,1,5,1994,'Alice hastily replied; \'at least--at least I mean what I eat\" is the same solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can have no sort of meaning in it,\' said the Dormouse;.','1979-02-28 11:30:18','2012-08-07 15:47:00'),(4,'non',14,6,3,2006,'I am in the long hall, and wander about among those beds of bright flowers and those cool fountains, but she did it so VERY nearly at the mouth with strings: into this they slipped the guinea-pig,.','2016-05-10 01:08:03','1993-11-10 21:28:00'),(5,'est',5,4,5,1987,'Hatter said, turning to Alice to herself. At this moment Alice felt a little wider. \'Come, it\'s pleased so far,\' said the Eaglet. \'I don\'t quite understand you,\' she said, by way of escape, and.','1998-03-12 18:12:03','1972-11-15 20:02:44'),(6,'ut',5,6,4,1975,'Alice coming. \'There\'s PLENTY of room!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of the sort,\' said the cook. \'Treacle,\' said a whiting to a lobster--\' (Alice began to tremble. Alice.','2019-08-25 23:19:36','2012-11-07 20:25:18'),(7,'eaque',13,4,5,2020,'March Hare went \'Sh! sh!\' and the pair of white kid gloves in one hand, and made believe to worry it; then Alice dodged behind a great crowd assembled about them--all sorts of things, and she, oh!.','2006-08-31 06:05:40','1980-01-01 15:55:48'),(8,'est',12,4,4,2003,'YOUR table,\' said Alice; \'I must be kind to them,\' thought Alice, and her face brightened up at the window.\' \'THAT you won\'t\' thought Alice, \'to speak to this last remark, \'it\'s a vegetable. It.','2005-02-21 00:23:42','1976-08-31 07:57:40'),(9,'quia',12,5,4,2012,'I give you fair warning,\' shouted the Queen. \'I never thought about it,\' said Five, \'and I\'ll tell him--it was for bringing the cook took the regular course.\' \'What was that?\' inquired Alice..','2009-04-18 15:37:58','1998-07-24 03:33:13'),(10,'inventore',12,5,5,2021,'Alice again, for this time with one finger; and the procession came opposite to Alice, she went nearer to watch them, and the Hatter went on, without attending to her, And mentioned me to him: She.','1995-09-01 11:24:32','1983-01-11 07:25:14'),(11,'ipsum',7,4,1,1988,'After a time she found herself at last she stretched her arms round it as to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the snail.','2009-07-09 23:35:04','1974-02-02 14:27:45'),(12,'dolor',9,6,3,2017,'I\'m going to leave off this minute!\' She generally gave herself very good advice, (though she very seldom followed it), and sometimes she scolded herself so severely as to the conclusion that it.','1988-04-17 09:09:14','2018-02-23 23:45:27'),(13,'consequuntur',6,3,3,2017,'I hadn\'t quite finished my tea when I got up and said, \'It was much pleasanter at home,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the.','2016-02-23 22:44:03','1984-09-21 16:51:25'),(14,'nisi',4,1,2,2013,'Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the wind, and the moon, and memory, and muchness--you know you say things are worse than ever,\' thought the.','2004-08-15 12:15:06','2013-10-16 08:26:19'),(15,'molestiae',12,3,5,1997,'King. \'I can\'t help that,\' said the King, the Queen, who had not noticed before, and he called the Queen, turning purple. \'I won\'t!\' said Alice. \'Come, let\'s try Geography. London is the driest.','1970-08-28 21:16:53','2005-05-26 23:20:07'),(16,'ipsum',10,4,4,2020,'VERY much out of sight: \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the right word) \'--but I shall ever see.','1990-05-15 09:53:20','2009-11-29 12:18:41'),(17,'libero',4,2,2,1978,'Hatter, \'I cut some more tea,\' the Hatter were having tea at it: a Dormouse was sitting on a bough of a tree. By the use of a bottle. They all returned from him to you, Though they were lying round.','1970-06-03 16:09:40','1995-12-11 19:31:48'),(18,'doloremque',20,5,5,2014,'Alice thought she had been jumping about like mad things all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was a very little way forwards each time and a large canvas bag, which.','1988-11-12 10:28:45','2004-02-16 08:44:22'),(19,'eveniet',16,3,4,1970,'NO mistake about it: it was as long as it went, \'One side will make you a present of everything I\'ve said as yet.\' \'A cheap sort of life! I do so like that curious song about the crumbs,\' said the.','2015-12-13 04:28:12','1995-06-25 16:28:18'),(20,'nostrum',10,6,3,2007,'I only wish they WOULD not remember ever having heard of uglifying!\' it exclaimed. \'You know what you would seem to see what was on the slate. \'Herald, read the accusation!\' said the Mouse,.','2003-01-01 03:44:37','2005-03-11 19:07:06'),(21,'in',7,2,1,1991,'The first question of course you know what a delightful thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Why, SHE,\' said the White Rabbit: it was too small, but at the bottom of a dance is.','2013-01-12 04:52:33','2018-09-28 20:20:06'),(22,'qui',10,5,5,2020,'King hastily said, and went to school every day--\' \'I\'VE been to her, though, as they would call after her: the last few minutes that she did not like to have the experiment tried. \'Very true,\' said.','2001-09-09 19:49:52','1992-09-30 17:11:39'),(23,'est',19,6,3,2018,'Magpie began wrapping itself up and said, without even waiting to put it in a great hurry. \'You did!\' said the Caterpillar. Alice said very humbly; \'I won\'t have any pepper in that case I can do no.','1996-07-12 17:13:20','1971-02-18 08:39:05'),(24,'ut',9,1,3,1982,'And in she went. Once more she found it so VERY remarkable in that; nor did Alice think it was,\' the March Hare meekly replied. \'Yes, but some crumbs must have got into the wood for fear of killing.','2000-02-05 21:41:40','1980-01-22 14:43:07'),(25,'eos',16,5,5,1995,'THAT\'S all wrong, I\'m certain! I must go by the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Hatter: \'but you could keep it to be Number One,\' said Alice. \'Who\'s making.','1977-10-28 08:32:59','1996-04-05 16:02:55'),(26,'fuga',14,2,3,1995,'Queen, tossing her head pressing against the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go through.','1990-03-31 06:02:36','1991-05-30 12:18:47'),(27,'ipsum',9,3,4,2022,'Footman continued in the distance would take the hint; but the Hatter grumbled: \'you shouldn\'t have put it in with the next witness!\' said the Duchess: \'flamingoes and mustard both bite. And the.','1978-01-12 01:27:46','1998-03-10 20:01:35'),(28,'iste',16,3,3,2008,'How queer everything is queer to-day.\' Just then she walked up towards it rather timidly, saying to herself, \'if one only knew the right size to do it.\' (And, as you are; secondly, because she was.','2007-02-19 05:43:08','1977-07-11 03:38:59'),(29,'est',15,2,5,2010,'Alice like the right words,\' said poor Alice, that she began thinking over other children she knew, who might do very well to introduce some other subject of conversation. While she was peering.','2018-09-04 06:54:53','1982-12-31 22:22:38'),(30,'aut',9,4,5,1974,'I\'ll try and repeat something now. Tell her to carry it further. So she set to work at once crowded round it, panting, and asking, \'But who is Dinah, if I know is, something comes at me like that!\'.','1982-05-04 23:58:35','2010-07-27 21:20:56'),(31,'rem',18,6,1,2006,'The players all played at once took up the fan and the White Rabbit, who was trembling down to her to speak with. Alice waited till she fancied she heard one of the Lobster; I heard him declare,.','1970-11-05 11:08:39','1974-12-26 16:52:18'),(32,'occaecati',20,3,4,2004,'I think you\'d take a fancy to herself \'It\'s the oldest rule in the air. Even the Duchess replied, in a very humble tone, going down on their hands and feet, to make herself useful, and looking at.','1989-02-08 09:59:13','2007-09-03 23:48:01'),(33,'voluptatem',19,3,4,1985,'Queen had never left off writing on his knee, and looking at it again: but he would deny it too: but the cook tulip-roots instead of the room. The cook threw a frying-pan after her as she did not.','1982-01-06 02:37:45','2008-02-08 01:54:05'),(34,'eligendi',8,5,5,2019,'Alice. \'What sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon finished it off. * * * * * * * * * * \'Come, my head\'s free at.','2019-11-22 22:41:25','1993-07-26 12:07:02'),(35,'aut',19,4,4,2015,'Alice was only the pepper that makes them sour--and camomile that makes them so often, of course you don\'t!\' the Hatter with a shiver. \'I beg your acceptance of this remark, and thought it would be.','2005-06-17 09:37:36','2010-10-06 18:59:43'),(36,'pariatur',17,2,5,2008,'Prizes!\' Alice had never had fits, my dear, YOU must cross-examine the next question is, what?\' The great question certainly was, what? Alice looked at Alice, as she went to school in the pool as it.','2009-01-07 13:47:11','2005-08-15 20:56:41'),(37,'sequi',7,5,2,1971,'Duchess, digging her sharp little chin. \'I\'ve a right to think,\' said Alice indignantly, and she tried another question. \'What sort of meaning in it,\' but none of my own. I\'m a deal faster than it.','2009-11-19 01:57:28','2018-09-28 09:11:47'),(38,'vero',2,3,4,1997,'Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never was so ordered about in the window, and some \'unimportant.\' Alice could hear him.','2012-06-20 00:55:57','1992-05-06 23:38:22'),(39,'aut',12,2,5,1973,'YET,\' she said to the Dormouse, who seemed to think that will be When they take us up and rubbed its eyes: then it chuckled. \'What fun!\' said the Mock Turtle; \'but it doesn\'t matter much,\' thought.','1999-03-13 12:52:02','2011-02-18 20:07:49'),(40,'repellendus',10,4,3,1999,'Pigeon. \'I\'m NOT a serpent, I tell you!\' But she did not like the three gardeners at it, busily painting them red. Alice thought this a very decided tone: \'tell her something worth hearing. For some.','2014-10-05 01:48:04','1981-09-06 05:55:15'),(41,'nihil',6,4,3,2004,'Soup! Soup of the accident, all except the Lizard, who seemed ready to ask help of any that do,\' Alice hastily replied; \'at least--at least I know is, it would be QUITE as much right,\' said the.','1971-04-18 18:10:55','1996-05-06 18:31:31'),(42,'occaecati',8,4,5,2003,'CHAPTER IX. The Mock Turtle at last, with a round face, and was going to say,\' said the Caterpillar. \'I\'m afraid I am, sir,\' said Alice; \'I daresay it\'s a very grave voice, \'until all the way the.','1997-09-29 20:22:31','2017-10-15 17:34:50'),(43,'nihil',4,3,1,1996,'Gryphon, the squeaking of the sense, and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that anything that looked like the look of the house before she found herself at last came a.','1994-02-09 09:28:46','1994-04-15 07:36:15'),(44,'ut',19,5,5,1977,'Let me think: was I the same year for such a puzzled expression that she had a vague sort of knot, and then treading on her spectacles, and began by producing from under his arm a great deal too.','1997-10-27 23:21:50','1997-05-17 13:47:45'),(45,'delectus',17,5,3,2010,'Pray how did you begin?\' The Hatter shook his head sadly. \'Do I look like one, but the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a very deep well. Either the well was very provoking to.','1998-01-28 19:35:27','2005-01-13 00:53:43'),(46,'et',9,4,4,1995,'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go and live in that case I can guess that,\' she added in an undertone, \'important--unimportant--unimportant--important--\' as if nothing had.','2021-01-10 04:34:08','1980-01-24 19:28:28'),(47,'repudiandae',7,6,3,1997,'Alice, very much at first, but, after watching it a violent blow underneath her chin: it had a little scream of laughter. \'Oh, hush!\' the Rabbit in a coaxing tone, and she said this she looked down.','1998-11-02 09:29:30','1975-03-19 21:55:26'),(48,'praesentium',12,6,5,2010,'Alice. \'What IS the fun?\' said Alice. \'It goes on, you know,\' said Alice, feeling very glad to find any. And yet I don\'t think,\' Alice went on, without attending to her; \'but those serpents! There\'s.','1972-02-04 06:51:25','1971-07-26 03:16:13'),(49,'autem',5,4,1,2017,'Alice; \'all I know I do!\' said Alice indignantly, and she jumped up on tiptoe, and peeped over the verses the White Rabbit, \'and that\'s a fact.\' Alice did not like the tone of this remark, and.','2006-03-07 12:54:54','2005-09-30 23:56:09'),(50,'magnam',1,6,4,2003,'Mouse in the distance would take the place of the words have got altered.\' \'It is a long and a crash of broken glass, from which she had never before seen a rabbit with either a waistcoat-pocket, or.','1997-12-05 15:29:39','2007-12-31 04:10:43'),(51,'temporibus',10,2,2,1994,'I COULD NOT SWIM--\" you can\'t be Mabel, for I know I have dropped them, I wonder?\' As she said to Alice, and she hastily dried her eyes filled with cupboards and book-shelves; here and there they.','1972-07-18 23:19:58','1996-08-23 18:22:27'),(52,'et',19,4,4,2002,'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole pack of cards!\' At this the whole pack rose up into a.','2022-04-09 08:59:15','1988-09-26 18:04:24'),(53,'et',16,5,2,2011,'Rabbit noticed Alice, as she was surprised to see it written down: but I grow up, I\'ll write one--but I\'m grown up now,\' she said, as politely as she was talking. \'How CAN I have to beat time when I.','1973-05-25 00:21:15','1999-10-05 23:48:34'),(54,'quidem',20,5,1,2015,'Alice to herself. Imagine her surprise, when the Rabbit coming to look at all what had become of it; so, after hunting all about as curious as it left no mark on the ground near the door, she walked.','2008-02-03 07:08:29','1973-11-23 01:11:56'),(55,'et',19,4,4,1995,'Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never was so long that they would call after her: the last few minutes, and she jumped up in a thick wood. \'The first thing I\'ve.','1975-07-16 02:00:54','2018-03-21 21:53:03'),(56,'non',9,6,2,2004,'Lizard\'s slate-pencil, and the Panther were sharing a pie--\' [later editions continued as follows When the procession moved on, three of the court. \'What do you want to go and live in that.','1977-08-18 23:01:41','1974-06-03 08:57:35'),(57,'dolor',3,2,1,2013,'In another moment it was quite out of their hearing her; and the March Hare. Alice sighed wearily. \'I think you might catch a bat, and that\'s all you know about this business?\' the King exclaimed,.','2013-02-16 08:25:36','1980-01-25 16:16:47'),(58,'odio',12,6,1,2009,'The Cat seemed to rise like a mouse, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, and, after folding his arms and frowning at the cook, and a Dodo, a Lory and an old.','1971-10-06 01:25:57','1993-09-19 22:21:17'),(59,'voluptas',9,1,4,2002,'So she began: \'O Mouse, do you know what you were me?\' \'Well, perhaps not,\' said the Pigeon the opportunity of taking it away. She did it so quickly that the poor child, \'for I never knew so much.','1986-07-31 18:17:25','2009-02-28 06:04:59'),(60,'sed',11,1,4,2010,'May it won\'t be raving mad after all! I almost think I could, if I must, I must,\' the King said to Alice. \'What sort of a well?\' The Dormouse shook itself, and was a dead silence instantly, and.','2021-08-21 16:35:03','2012-08-24 11:07:21'),(61,'eligendi',5,4,5,2014,'Oh, I shouldn\'t like THAT!\' \'Oh, you can\'t think! And oh, I wish you were all turning into little cakes as they came nearer, Alice could see it trying in a hurry: a large dish of tarts upon it: they.','1992-08-30 00:45:58','1995-01-03 00:02:11'),(62,'vero',10,3,3,1982,'I\'ll try and repeat something now. Tell her to wink with one elbow against the door, she walked on in a whisper, half afraid that she had peeped into the air off all its feet at once, in a great.','1978-02-03 03:32:23','2019-10-26 21:33:14'),(63,'doloremque',6,2,2,2018,'Shark, But, when the White Rabbit, trotting slowly back again, and made another rush at the mushroom for a minute, trying to touch her. \'Poor little thing!\' said the King sharply. \'Do you mean that.','1982-06-07 03:20:11','2003-01-03 18:37:59'),(64,'exercitationem',10,1,1,2016,'Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the roof. There were doors all round the court with a.','1973-06-13 15:18:01','2006-11-12 09:26:08'),(65,'possimus',10,1,4,1992,'If they had been anxiously looking across the garden, called out as loud as she did not dare to disobey, though she looked down at her feet, for it to make out exactly what they said. The.','1976-03-22 12:27:57','1999-05-26 08:58:41'),(66,'exercitationem',5,3,4,2020,'Mock Turtle went on, turning to the fifth bend, I think?\' he said to herself, \'to be going messages for a minute or two, she made it out to her very much of it at all. However, \'jury-men\' would have.','2019-09-18 04:11:50','2004-10-31 05:09:59'),(67,'natus',11,4,5,1978,'Alice thought she might as well say,\' added the Dormouse. \'Don\'t talk nonsense,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow up any more if you\'d rather not.\' \'We indeed!\' cried.','2011-04-15 03:47:43','1977-08-26 09:24:56'),(68,'in',15,1,4,2002,'Dodo, pointing to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be the use of a globe of goldfish she had hoped) a fan and two or three pairs of tiny white kid gloves in.','1995-11-06 00:01:06','2001-08-19 04:10:19'),(69,'molestiae',18,4,5,2002,'Gryphon. \'I\'ve forgotten the words.\' So they had at the cook tulip-roots instead of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, and the game began. Alice gave.','1986-04-16 22:16:33','2003-09-08 11:09:46'),(70,'provident',11,1,5,2003,'And when I sleep\" is the same as they were filled with cupboards and book-shelves; here and there was hardly room for this, and Alice heard the Queen to-day?\' \'I should like to show you! A little.','2007-03-04 07:24:31','1990-04-30 16:39:05'),(71,'ut',4,3,3,1994,'As soon as she could, for the accident of the house, and found herself falling down a jar from one of the jury wrote it down \'important,\' and some of them say, \'Look out now, Five! Don\'t go.','2010-08-16 03:21:57','1973-02-26 18:30:03'),(72,'harum',3,6,5,2002,'Caterpillar. \'Well, perhaps you were or might have been changed for any of them. However, on the twelfth?\' Alice went on to her very much confused, \'I don\'t quite understand you,\' she said, \'for her.','2013-01-22 13:07:58','1980-03-29 07:13:50'),(73,'illo',14,1,1,2006,'I can reach the key; and if the Mock Turtle angrily: \'really you are very dull!\' \'You ought to be beheaded!\' said Alice, feeling very glad she had accidentally upset the week before. \'Oh, I BEG your.','2018-10-25 12:37:37','2006-10-28 02:22:13'),(74,'inventore',2,4,2,1982,'Elsie, Lacie, and Tillie; and they sat down at her feet, for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well as I tell you!\' But she went in search of her head through.','2006-03-18 05:47:12','2000-03-22 04:17:20'),(75,'dolor',4,1,2,2016,'These were the two sides of it; and as it was all very well as the White Rabbit read out, at the other players, and shouting \'Off with his tea spoon at the March Hare will be much the same age as.','1987-02-25 19:53:27','1997-05-05 14:58:28'),(76,'eius',17,2,5,2001,'Alice again, in a tone of great surprise. \'Of course you don\'t!\' the Hatter asked triumphantly. Alice did not sneeze, were the cook, to see you any more!\' And here poor Alice began telling them her.','1980-04-27 15:33:16','1971-04-04 22:59:52'),(77,'quis',10,5,3,2009,'Rabbit in a large piece out of sight, he said to itself in a whisper, half afraid that she was always ready to sink into the air off all its feet at the top of it. Presently the Rabbit coming to.','2020-01-19 16:30:15','2007-07-24 11:41:36'),(78,'eligendi',8,3,4,2010,'I only wish they COULD! I\'m sure she\'s the best cat in the other. \'I beg your pardon!\' cried Alice hastily, afraid that she hardly knew what she was saying, and the happy summer days. THE.','1997-07-11 04:19:01','1975-03-27 19:01:28'),(79,'autem',4,3,2,1997,'Caterpillar took the place of the sea.\' \'I couldn\'t afford to learn it.\' said the Mock Turtle yet?\' \'No,\' said the Pigeon had finished. \'As if it makes rather a handsome pig, I think.\' And she.','2008-06-12 16:09:48','2018-11-07 02:57:29'),(80,'accusamus',20,6,2,2021,'Alice could not remember ever having seen such a rule at processions; \'and besides, what would be quite as much right,\' said the Cat; and this Alice would not give all else for two Pennyworth only.','1995-11-13 19:56:23','2006-03-14 23:00:08'),(81,'enim',19,1,4,1979,'Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Mock Turtle. \'Very much indeed,\' said Alice. \'Why, SHE,\' said the Cat, as soon as look at me like that!\' But she went on,.','2004-09-14 07:29:22','2020-08-09 12:20:22'),(82,'eaque',8,2,3,1990,'CHORUS. \'Wow! wow! wow!\' While the Duchess and the Queen\'s hedgehog just now, only it ran away when it grunted again, so violently, that she never knew whether it was impossible to say it over).','2011-01-02 11:32:02','2015-10-16 00:38:24'),(83,'vero',6,6,4,2006,'Do you think I must be off, and Alice guessed who it was, even before she came in with a growl, And concluded the banquet--] \'What IS the same thing with you,\' said Alice, surprised at this, she.','1977-11-06 15:04:45','1980-09-23 23:22:56'),(84,'sunt',8,6,1,1987,'Ann! Mary Ann!\' said the March Hare. \'It was much pleasanter at home,\' thought poor Alice, and she had never been in a natural way. \'I thought it had finished this short speech, they all looked.','1973-07-23 23:07:13','1978-03-31 12:18:12'),(85,'non',14,1,1,1988,'Duchess; \'and most of \'em do.\' \'I don\'t know much,\' said Alice, who always took a great deal to ME,\' said the King eagerly, and he checked himself suddenly: the others took the watch and looked at.','2016-11-05 22:28:54','1985-05-26 09:26:46'),(86,'deleniti',1,6,3,2017,'While she was going to turn into a graceful zigzag, and was just possible it had finished this short speech, they all moved off, and she was coming back to the door, and the moment he was gone, and.','2013-10-12 04:09:28','1999-08-02 16:57:54'),(87,'accusantium',17,3,1,2008,'White Rabbit, with a kind of sob, \'I\'ve tried every way, and nothing seems to suit them!\' \'I haven\'t opened it yet,\' said the Queen, who was talking. Alice could see this, as she came upon a neat.','2012-03-07 08:58:15','2007-07-19 21:22:14'),(88,'aut',6,5,4,2012,'Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have done just as the March Hare said to herself, \'Which way? Which way?\', holding.','2003-02-22 10:51:47','2007-01-21 18:04:01'),(89,'sit',18,6,1,2022,'English. \'I don\'t think they play at all comfortable, and it set to work very diligently to write with one eye; but to get very tired of swimming about here, O Mouse!\' (Alice thought this a very.','2005-02-13 17:43:19','2004-02-14 19:35:51'),(90,'quo',2,6,5,1989,'I was a sound of many footsteps, and Alice guessed in a large cat which was full of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even introduced to.','2017-07-23 02:38:25','1983-10-05 21:10:36'),(91,'eaque',8,5,5,1995,'That he met in the sea, some children digging in the distance, sitting sad and lonely on a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at the.','2022-02-03 08:11:44','2014-10-03 14:37:08'),(92,'dolores',2,2,1,1990,'I\'ve tried hedges,\' the Pigeon in a deep voice, \'are done with a lobster as a partner!\' cried the Gryphon, and, taking Alice by the way wherever she wanted to send the hedgehog had unrolled itself,.','1974-06-23 17:37:28','2006-05-18 10:21:17'),(93,'neque',12,3,5,2021,'Alice as he spoke, and added \'It isn\'t mine,\' said the Cat, and vanished. Alice was only the pepper that makes people hot-tempered,\' she went on, half to itself, \'Oh dear! Oh dear! I\'d nearly.','1983-08-13 12:46:55','1996-04-01 11:47:54'),(94,'dolorem',5,6,5,1998,'King very decidedly, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her hand, watching the setting sun, and thinking of little Alice herself, and.','2015-05-14 01:07:21','2012-02-26 20:03:12'),(95,'accusamus',8,4,5,1986,'I\'m not Ada,\' she said, as politely as she could, \'If you didn\'t like cats.\' \'Not like cats!\' cried the Mouse, frowning, but very glad that it was the Duchess\'s cook. She carried the pepper-box in.','1972-05-28 16:35:44','2007-12-14 04:07:19'),(96,'quo',12,4,5,1980,'Alice had not gone far before they saw her, they hurried back to the Mock Turtle said: \'advance twice, set to partners--\' \'--change lobsters, and retire in same order,\' continued the Hatter, \'when.','1973-12-18 17:57:31','2006-09-18 10:01:01'),(97,'alias',20,3,2,1996,'Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a paper label, with the Queen,\' and she thought there was nothing so VERY much out of sight, they were gardeners, or soldiers, or courtiers,.','1983-06-16 02:21:06','1982-04-29 05:10:29'),(98,'alias',4,4,1,2020,'Dormouse, not choosing to notice this last remark. \'Of course not,\' Alice cautiously replied, not feeling at all fairly,\' Alice began, in a great hurry. \'You did!\' said the Gryphon, \'she wants for.','1995-04-28 19:17:25','2010-04-13 03:54:42'),(99,'at',17,4,1,1975,'Shakespeare, in the pool a little way out of sight: then it watched the Queen ordering off her unfortunate guests to execution--once more the shriek of the Mock Turtle. \'Seals, turtles, salmon, and.','2010-02-01 18:20:37','1978-11-24 15:54:04'),(100,'qui',17,4,5,1988,'As for pulling me out of a muchness\"--did you ever see you any more!\' And here Alice began to feel a little way off, panting, with its wings. \'Serpent!\' screamed the Pigeon. \'I can hardly breathe.\'.','1997-03-23 17:47:48','1999-07-14 20:18:20');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (1,'Trent','Mayert','gordon96@example.com',99545993,'1972-01-20'),(2,'Alexandra','Spinka','hdeckow@example.org',93836223,'1986-07-07'),(3,'Reyes','Koch','koelpin.fabiola@example.com',97802701,'1979-12-20'),(4,'Mariane','Stanton','junius.spinka@example.net',97736271,'1979-01-20'),(5,'Jamar','Rau','cruz.haley@example.net',99101942,'2007-12-05'),(6,'Nichole','Miller','haufderhar@example.com',91988390,'1988-08-25'),(7,'Willie','Bergnaum','bernhard.april@example.com',97535717,'1999-11-06'),(8,'Jocelyn','Stiedemann','lang.velda@example.net',98437528,'1994-03-01'),(9,'Mariah','Beatty','cleora87@example.com',95546650,'2022-03-13'),(10,'Chandler','Spinka','sstehr@example.com',91940327,'2008-10-24'),(11,'Belle','Jaskolski','o\'reilly.gardner@example.net',97386443,'2022-02-09'),(12,'Demetris','Jones','rubie41@example.net',94733634,'2021-07-28'),(13,'Jarrell','Muller','graham.adonis@example.org',92603932,'2000-04-17'),(14,'Winnifred','Vandervort','angelina.kreiger@example.org',90748464,'1991-10-20'),(15,'Elsie','Mann','juana.beier@example.net',93250306,'2008-10-10'),(16,'Everardo','Mayert','madisyn.balistreri@example.org',93107977,'2021-06-21'),(17,'Aracely','Rath','rodger28@example.net',95945058,'1977-04-04'),(18,'Jovani','Greenholt','kovacek.rosa@example.org',91033282,'1973-10-15'),(19,'Fabian','Lynch','gusikowski.marcelle@example.org',96573152,'1999-04-29'),(20,'Yazmin','Greenholt','shanie.schoen@example.net',91335827,'1973-03-16'),(21,'Jena','Wilderman','jtillman@example.net',91400986,'2017-05-23'),(22,'Tad','Leffler','nick92@example.net',93378922,'1997-10-23'),(23,'Titus','Keeling','wolff.kendra@example.org',93401157,'2002-10-01'),(24,'Ayla','Bartoletti','spencer.michael@example.net',99181499,'2014-12-11'),(25,'Alicia','Terry','roselyn07@example.org',96670031,'2007-07-29'),(26,'Wilmer','Gerhold','sanford.imelda@example.org',94303775,'1977-10-29'),(27,'Maximillia','Towne','lind.alva@example.com',99855354,'1975-05-06'),(28,'Aaliyah','Weissnat','liana75@example.org',91816956,'1976-10-05'),(29,'Ernestine','Abernathy','tfahey@example.net',97332025,'1989-02-03'),(30,'Erica','Greenholt','nitzsche.mia@example.org',92560344,'1993-08-31'),(31,'Norberto','Feest','rstoltenberg@example.com',90188661,'1997-01-20'),(32,'Arvilla','Von','ihahn@example.com',93926866,'2010-10-23'),(33,'Velda','Steuber','kris59@example.com',99832549,'1996-08-27'),(34,'Dannie','Little','funk.idell@example.net',90453929,'2014-08-25'),(35,'Viviane','Marvin','fhand@example.net',94076029,'2020-08-28'),(36,'Alysson','Dare','leland15@example.com',92339999,'1974-11-23'),(37,'Neha','Torp','gshanahan@example.org',93712841,'1993-01-16'),(38,'Alanis','Breitenberg','casper.leffler@example.org',99386244,'1979-10-19'),(39,'Roman','Marvin','sibyl70@example.org',90194007,'2001-02-08'),(40,'Kirsten','Sipes','maude91@example.org',96604867,'2007-10-31'),(41,'Arlene','Orn','rowe.jakob@example.net',99796973,'1973-05-18'),(42,'Emely','Schaefer','bwaters@example.org',92133736,'1980-04-18'),(43,'Doris','Kessler','hulda.homenick@example.org',93920647,'1972-05-28'),(44,'Jamie','Ullrich','friedrich.bins@example.com',99977231,'2013-10-30'),(45,'Bert','Zemlak','hjacobi@example.net',99559921,'2007-10-20'),(46,'Ardella','Haley','block.dax@example.org',92371233,'2000-10-31'),(47,'Wendell','Hartmann','destinee98@example.net',90146651,'1976-12-23'),(48,'Lenny','Tillman','loy94@example.com',92990214,'1994-01-09'),(49,'Delaney','Reynolds','reichert.dawn@example.org',99297247,'1973-03-01'),(50,'Furman','Conroy','oswald.boyle@example.net',98363597,'1993-07-23'),(51,'Dan','Kerluke','louisa19@example.com',96282798,'1989-08-26'),(52,'Clay','Marquardt','jadyn03@example.net',99269962,'1987-09-16'),(53,'Tyree','Eichmann','rosendo52@example.net',95365455,'1978-01-15'),(54,'Chloe','Kihn','albert53@example.org',99315974,'1990-07-18'),(55,'Abbie','Christiansen','cesar64@example.com',95094786,'1975-06-28'),(56,'Carolyn','Harber','armando.leuschke@example.net',94810729,'1973-01-05'),(57,'Heber','Swaniawski','micah.trantow@example.org',96939307,'1989-06-05'),(58,'Stan','Reichel','miller03@example.net',91155317,'2020-05-18'),(59,'Bill','Berge','monahan.sadye@example.com',95408088,'1972-05-07'),(60,'Greta','Klein','ebert.seamus@example.net',94043155,'1993-11-30'),(61,'Maryam','Fay','rbins@example.net',92301765,'2009-04-15'),(62,'Kaitlyn','Hudson','ed.cole@example.com',98241549,'2017-04-27'),(63,'Aiyana','Corkery','trinity.herman@example.com',96732219,'1987-04-19'),(64,'Keely','Romaguera','hansen.shakira@example.org',90755274,'1977-07-10'),(65,'Brady','Kshlerin','kerluke.ayana@example.com',99605846,'1990-10-02'),(66,'Etha','Grady','io\'hara@example.net',93604210,'1976-05-07'),(67,'Myrtice','Barton','gaylord.thiel@example.com',96209709,'1970-03-03'),(68,'Freda','Larkin','mueller.lessie@example.net',90713751,'2013-01-18'),(69,'Ella','Feil','fay.kris@example.org',95213134,'1971-07-18'),(70,'Dylan','Spinka','lmcclure@example.net',98999964,'1986-02-06'),(71,'Dino','Ziemann','lschulist@example.net',95507320,'2017-03-19'),(72,'Magali','Emmerich','hweber@example.org',94138718,'1994-08-12'),(73,'Gloria','Lakin','garfield84@example.com',94788355,'2012-05-03'),(74,'Rosetta','Swift','lorenzo53@example.net',91843912,'2001-11-21'),(75,'Robyn','Gutkowski','runolfsson.stefanie@example.org',90395128,'2005-12-03'),(76,'Valerie','Cole','mjast@example.org',99536070,'1998-03-02'),(77,'Celestine','Johnson','lind.brielle@example.org',95705582,'1985-05-16'),(78,'Mortimer','Waelchi','erica02@example.org',99473446,'2008-03-30'),(79,'Polly','Collins','bert08@example.net',97544921,'1999-03-17'),(80,'Daron','Stiedemann','makenzie04@example.net',95194556,'1980-08-27'),(81,'Viviane','Mosciski','obechtelar@example.net',99437747,'2022-07-25'),(82,'Joanny','Monahan','bradtke.tessie@example.org',97555413,'1980-10-12'),(83,'Mohammed','Hudson','kgrant@example.net',98553491,'2000-02-19'),(84,'Nora','Carter','grant.wilderman@example.org',96502096,'2002-09-21'),(85,'Orion','King','urogahn@example.com',93326912,'1992-09-12'),(86,'Leon','Hane','cooper66@example.net',99134177,'2013-07-19'),(87,'Leanne','Reinger','alberto82@example.net',98178101,'1973-10-17'),(88,'Frederique','Casper','kautzer.elwin@example.com',90704770,'1990-12-11'),(89,'Samanta','Tremblay','leannon.sylvan@example.com',95228105,'1979-12-23'),(90,'Nyasia','Waters','lmedhurst@example.net',90222236,'2002-04-07'),(91,'Esther','Gleichner','labadie.ashtyn@example.net',92914778,'2009-03-26'),(92,'Nasir','Grimes','gail77@example.net',98250156,'2015-06-11'),(93,'Jamal','Torphy','kuhic.torrance@example.net',99891126,'1990-10-03'),(94,'Niko','Kirlin','jmoore@example.com',93978150,'2009-01-12'),(95,'Nichole','Marvin','ohudson@example.org',97188372,'1974-09-28'),(96,'Claudia','Powlowski','delilah17@example.net',94695459,'2000-06-28'),(97,'Sanford','Boyer','grady.raoul@example.org',98901613,'1993-07-05'),(98,'Marie','Mraz','gulgowski.jessyca@example.org',99301372,'2019-01-11'),(99,'Maude','Beatty','hilpert.karina@example.net',96446057,'2007-01-07'),(100,'Caesar','Wehner','kaleigh53@example.net',96223203,'1971-10-13');
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmed`
--

DROP TABLE IF EXISTS `filmed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filmed` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) unsigned NOT NULL,
  `filmed` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `filmed_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmed`
--

LOCK TABLES `filmed` WRITE;
/*!40000 ALTER TABLE `filmed` DISABLE KEYS */;
INSERT INTO `filmed` VALUES (1,63,''),(2,62,''),(3,3,''),(4,47,''),(5,17,''),(6,11,''),(7,53,''),(8,45,''),(9,91,''),(10,88,''),(11,100,''),(12,90,''),(13,67,''),(14,31,''),(15,67,'');
/*!40000 ALTER TABLE `filmed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'vitae'),(2,'ab'),(3,'laborum'),(4,'iusto'),(5,'alias'),(6,'necessitatibus');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `buyer_id` bigint(20) unsigned NOT NULL,
  `book_id` bigint(20) unsigned NOT NULL,
  `ammount` bigint(20) DEFAULT NULL COMMENT 'Количество проданных книг',
  `town` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город доставки',
  PRIMARY KEY (`id`),
  KEY `buyer_id` (`buyer_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,74,1,2,'Hermanmouth'),(2,78,71,5,'Jeremyport'),(3,9,97,4,'East Frankieton'),(4,85,67,3,'Lake Virgil'),(5,43,84,4,'Boscostad'),(6,87,27,3,'Mistyside'),(7,74,24,5,'Cruickshanktown'),(8,79,74,3,'Hintzshire'),(9,79,32,4,'North Mathiasborough'),(10,66,76,3,'Eichmannland'),(11,69,97,3,'Theresaland'),(12,92,34,4,'Gloverborough'),(13,5,74,4,'Lake Yadira'),(14,87,6,2,'Gilesview'),(15,58,48,5,'North Gretchenmouth'),(16,100,31,2,'O\'Konmouth'),(17,49,77,1,'North Mathew'),(18,2,57,5,'Hellertown'),(19,73,86,5,'Weissnatshire'),(20,24,15,1,'Lake Kendallville'),(21,69,11,5,'Konopelskifort'),(22,42,43,4,'Lake Vivienne'),(23,34,20,5,'Garnettshire'),(24,17,13,2,'West Federicochester'),(25,52,83,4,'Lake Omari'),(26,89,21,2,'West Loyal'),(27,79,80,2,'East Dejon'),(28,55,83,5,'Quinnland'),(29,53,42,4,'New Palma'),(30,88,10,4,'Rachaeltown'),(31,90,87,1,'Kossbury'),(32,41,39,5,'New Shanonside'),(33,64,42,2,'Kautzerburgh'),(34,96,36,5,'Lavonfurt'),(35,28,19,3,'Dionborough'),(36,51,97,5,'North Hollyville'),(37,30,93,1,'South Jordan'),(38,39,64,4,'Evalynfort'),(39,12,55,4,'Ellsworthbury'),(40,77,64,3,'Port Newton'),(41,38,65,3,'Kesslerport'),(42,84,16,3,'Prohaskastad'),(43,44,39,3,'Port Aldenmouth'),(44,99,97,3,'Lake Katlynview'),(45,80,87,2,'Melvinborough'),(46,7,69,2,'Hahnburgh'),(47,74,47,4,'Nienowstad'),(48,7,37,2,'Lake Dovie'),(49,89,2,4,'South Mosesview'),(50,72,17,5,'Haagland'),(51,21,23,3,'North Damienhaven'),(52,13,51,5,'Lake Leonard'),(53,15,52,4,'New Mollyville'),(54,14,27,4,'Avistown'),(55,6,90,1,'South Chanel'),(56,90,43,5,'Boscomouth'),(57,55,74,3,'East Waino'),(58,59,99,5,'Lueilwitzfort'),(59,12,58,4,'Goyettechester'),(60,95,91,3,'Verlieton'),(61,44,2,3,'Kiehnbury'),(62,60,17,4,'Feestburgh'),(63,49,67,4,'Cormierton'),(64,53,37,5,'East Jamesonfort'),(65,69,25,3,'Port Janet'),(66,54,89,3,'East Martine'),(67,47,66,4,'Lake Annalisestad'),(68,40,62,5,'Port Christophe'),(69,17,53,3,'West Jayce'),(70,88,23,2,'Port Emilie'),(71,43,77,5,'North Sandrine'),(72,66,97,1,'Port Albinabury'),(73,51,24,2,'New Dillontown'),(74,95,62,5,'West Mandymouth'),(75,82,90,4,'New Jarret'),(76,53,25,2,'Lauriannehaven'),(77,91,12,1,'West Adityaville'),(78,41,39,5,'Port Garrick'),(79,78,94,4,'West Jaclynmouth'),(80,76,46,5,'Port Henriettemouth'),(81,19,29,1,'North Brooke'),(82,35,66,2,'Anabelshire'),(83,95,74,1,'North Eltafort'),(84,27,11,5,'Port Una'),(85,27,14,4,'Fredaside'),(86,34,70,3,'Lake Bradford'),(87,91,99,1,'Dachmouth'),(88,67,41,1,'Verlaview'),(89,23,61,5,'Haleyfurt'),(90,2,4,5,'South Arthaven'),(91,51,55,3,'North Francescomouth'),(92,28,42,5,'Schroederport'),(93,66,69,4,'Zitamouth'),(94,80,44,4,'Corkerybury'),(95,63,56,2,'Hayeschester'),(96,89,81,1,'South Oceane'),(97,85,24,2,'South Lexiview'),(98,46,79,3,'Jacksonfort'),(99,98,73,4,'Ericburgh'),(100,90,24,3,'Rupertberg'),(101,86,23,1,'Brakusfurt'),(102,93,76,5,'Lake Shaynefurt'),(103,22,59,1,'Port Josueborough'),(104,17,44,1,'South Malloryside'),(105,20,18,3,'Reillymouth'),(106,48,71,4,'Port Estelle'),(107,72,76,3,'Schusterville'),(108,12,38,2,'Schuppeborough'),(109,45,92,5,'Jacqueston'),(110,81,7,5,'Tiarahaven'),(111,48,70,4,'Lake Madison'),(112,88,32,3,'West Valentina'),(113,94,34,3,'Lake Katelynn'),(114,10,91,2,'South Marcos'),(115,6,100,1,'East Joliefurt'),(116,14,92,2,'Port Herman'),(117,22,7,4,'South Lewismouth'),(118,68,44,4,'West Adeline'),(119,66,84,5,'New Bettieberg'),(120,87,85,3,'New Daronberg'),(121,2,35,3,'Marianofort'),(122,55,74,3,'Clarabelleville'),(123,10,67,1,'East Eddland'),(124,11,55,4,'Mikelside'),(125,58,92,1,'New Kasandrafurt'),(126,62,5,2,'Reynoldsstad'),(127,62,49,5,'West Max'),(128,37,55,2,'Port Brayan'),(129,83,47,4,'Port Clyde'),(130,45,89,3,'South Lawrenceland'),(131,46,58,4,'Rennerton'),(132,81,68,5,'West Dell'),(133,65,48,4,'South Roman'),(134,11,30,4,'Lake Manleyberg'),(135,31,98,2,'Lake Amina'),(136,15,32,4,'Deonchester'),(137,32,70,2,'East Iva'),(138,5,42,5,'Alyceview'),(139,36,16,4,'South Jakobfurt'),(140,96,94,5,'Zaneland'),(141,7,57,3,'Kaitlinborough'),(142,99,68,4,'Jenkinsstad'),(143,6,35,1,'Port Hailee'),(144,22,89,3,'Abbottshire'),(145,81,67,5,'Andyville'),(146,77,26,3,'Lake Darlene'),(147,25,58,1,'Alenachester'),(148,94,89,2,'Langton'),(149,5,4,1,'Lake Montemouth'),(150,18,35,4,'Carafort'),(151,1,33,3,'Romagueramouth'),(152,67,32,3,'West Annettetown'),(153,2,71,4,'Margeland'),(154,74,37,2,'Lake Hortenseview'),(155,87,69,4,'Evelynland'),(156,31,93,1,'Wildermanberg'),(157,26,29,1,'Leopoldoshire'),(158,61,32,2,'North Arianefurt'),(159,64,83,5,'Johnsontown'),(160,20,45,3,'New Enid'),(161,49,97,1,'Ritchieton'),(162,71,73,4,'Auerchester'),(163,54,64,1,'Malikaton'),(164,62,58,2,'West Esmeralda'),(165,67,80,2,'McLaughlinside'),(166,93,67,2,'Feesttown'),(167,12,60,5,'North Danaview'),(168,99,13,5,'West Kalemouth'),(169,30,72,1,'North Kathrynemouth'),(170,50,17,2,'Hicklemouth'),(171,41,80,4,'Port Lavada'),(172,9,67,2,'East Sunnyland'),(173,9,70,3,'Klockohaven'),(174,98,72,5,'New Trevion'),(175,52,18,5,'Lake Emilialand'),(176,16,1,2,'New Jamelborough'),(177,14,86,2,'Port Emelie'),(178,73,68,4,'New Franz'),(179,49,35,1,'New Marlee'),(180,26,15,1,'West Alba'),(181,14,18,5,'O\'Haraburgh'),(182,82,25,4,'Walkerland'),(183,77,81,2,'Piperville'),(184,37,7,3,'South Boyd'),(185,52,86,4,'Lake Evanmouth'),(186,23,93,4,'Port Bryana'),(187,66,32,5,'Anabellefort'),(188,59,74,2,'North Jane'),(189,1,57,4,'Sporerfort'),(190,45,53,1,'East Zack'),(191,74,61,5,'Lake Kyleigh'),(192,53,87,4,'Starktown'),(193,46,26,3,'Elinoreborough'),(194,55,95,2,'Hermistonbury'),(195,60,80,5,'West Mireya'),(196,10,73,4,'Keelingstad'),(197,98,91,1,'New Christopherview'),(198,98,74,1,'Whiteton'),(199,71,35,2,'Port Taylortown'),(200,81,23,1,'North Ginaside');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_buyer_id` bigint(20) unsigned NOT NULL,
  `status` enum('excellent','good','bad') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_buyer_id` (`from_buyer_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`from_buyer_id`) REFERENCES `buyers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,21,'good','Et voluptas molestiae necessitatibus esse quasi quos est. Dolorum quaerat tenetur dicta necessitatibus et. Sit et et voluptas ratione.','1992-06-12 03:46:43'),(2,4,'good','Sed aut harum quaerat dolor dolor ab. Ut ut impedit neque minima placeat vel. Minima alias est possimus eos atque ut harum sit.','1983-11-20 10:12:52'),(3,16,'excellent','Ut culpa autem cupiditate praesentium hic sint molestias facilis. Minima iusto quia sint ipsa. Odio laborum alias dolorem sit dolore. Dicta nam quidem corporis vitae quam officia dignissimos. Ut asperiores quo quis molestiae nisi magnam vitae.','2007-07-29 16:19:20'),(4,86,'bad','Et id debitis blanditiis qui impedit nostrum. Enim explicabo aperiam dolorem necessitatibus ut debitis debitis. Omnis commodi animi voluptatem eum possimus. Labore animi dolorem aut excepturi rerum.','2017-06-09 00:10:18'),(5,36,'good','Dolor eos totam dolores autem error cumque omnis. Corrupti et sed rerum qui consequatur quibusdam. Aut velit reiciendis explicabo.','2014-06-02 11:06:27'),(6,75,'good','Recusandae odit impedit repudiandae. Non enim a facilis sit labore. Molestiae iure iusto voluptatem dolor voluptas. Incidunt doloremque exercitationem suscipit incidunt ullam ut sunt.','1989-10-15 16:31:01'),(7,60,'bad','Impedit temporibus ut aut odio id. Quas nostrum totam et dicta sed dolor tempore. Excepturi sint labore saepe deleniti. Blanditiis nostrum illum fugiat illum praesentium sed.','1986-09-18 03:00:45'),(8,37,'good','Explicabo incidunt quaerat aut voluptatibus. Rerum a dicta ut velit perspiciatis aliquam.','1977-09-01 18:38:19'),(9,31,'excellent','Et quia voluptates velit dolorem maiores libero repellendus. Enim id quidem nulla voluptas porro sit quia. Voluptate dolor non doloremque et dolor in. Iure nihil deserunt totam officiis deleniti.','2007-10-14 12:24:57'),(10,5,'excellent','Non voluptas qui et autem at autem fugit. Maxime possimus ipsa architecto ipsa reprehenderit. Iure ea ut sed. Et id omnis illo autem fuga officia.','2002-05-22 03:44:32'),(11,89,'bad','In temporibus eligendi necessitatibus voluptatem provident minus at. Dolores minima cupiditate nemo voluptatem rem vitae ad facere. Voluptate autem cupiditate occaecati occaecati necessitatibus. Est sint rerum consequuntur et quis enim cum quidem.','2010-02-19 23:47:26'),(12,4,'excellent','Qui ratione cum et est sit expedita. Sit sunt laborum cupiditate vel eaque. Eius nobis commodi doloremque quod vel.','1991-03-30 16:32:20'),(13,65,'good','Officiis quia itaque voluptatem. Quasi similique inventore optio id aliquid quas. Voluptates voluptatem ut repellat et.','1987-04-04 10:37:14'),(14,42,'excellent','Et earum et ut fugit vitae voluptas. Dolor aperiam earum officiis eaque quas.','2003-03-18 17:14:27'),(15,91,'good','Sed alias ea quia et porro. Quisquam non eius quod officia asperiores in consequatur. Dolore voluptas et in dignissimos.','1991-01-12 03:35:27'),(16,11,'excellent','Provident non beatae quia illum. Temporibus ea eveniet voluptate tenetur tempore ipsum eius quia. Vitae sed ut illum harum doloribus.','1987-04-09 05:55:25'),(17,67,'excellent','Recusandae neque maxime sit sint et dicta. Veniam dolores neque voluptas fuga. Ad qui est dolor dolores vel aspernatur magnam consequatur.','2007-08-02 11:51:21'),(18,45,'bad','Dignissimos mollitia vel consequatur eaque pariatur. Veniam error dolorum culpa sit sint et. Ducimus perspiciatis laudantium neque accusamus sed architecto dolorem omnis. Beatae accusamus accusamus necessitatibus.','2018-10-30 08:23:18'),(19,5,'good','Rem atque qui dignissimos et distinctio. Consectetur temporibus sunt voluptatum soluta quo non. Iste quia expedita aspernatur magni. Unde hic autem et consequatur error consequatur.','1999-09-13 15:05:07'),(20,27,'bad','Ab et distinctio soluta ut magni accusamus. Iste et at suscipit rerum. Ipsum aut illo velit fugit est asperiores.','2011-04-24 00:55:37'),(21,25,'good','Et eaque perferendis quos ut. Suscipit autem impedit ut eius maiores. Natus nam adipisci quo. Sed in quod at quos tempora aut.','1996-08-11 09:43:38'),(22,15,'good','Rerum odio dolores deserunt quia. Omnis iusto assumenda ipsam neque et aut. Quasi ut dicta harum molestias similique et.','2020-09-12 12:17:00'),(23,100,'good','Sit et corporis aut culpa voluptatum. Neque occaecati rerum quas voluptatem deleniti temporibus quidem. Molestiae ut nihil et sequi dicta omnis.','1970-12-26 17:19:27'),(24,22,'bad','Suscipit officia iure laborum est eveniet. Quia unde numquam quia eligendi. Autem fugiat quia modi voluptatem.','2008-09-16 10:37:25'),(25,6,'excellent','Enim eveniet perferendis vel repellat. Inventore autem quod consectetur nemo et recusandae. Quasi laborum labore qui tempora.','2002-09-29 03:52:11'),(26,98,'bad','Eligendi est tempora vel aut sit. Ullam in et eum reprehenderit perferendis. Voluptatum accusamus occaecati non molestiae aut laborum.','1998-04-20 12:36:13'),(27,96,'excellent','Ducimus dolorum totam aspernatur recusandae similique et quo. At dolor nemo aperiam molestiae est deserunt. Vel ipsa amet adipisci similique. Aut ut nulla voluptatem rerum.','2020-09-27 18:16:39'),(28,76,'good','Qui quibusdam velit accusamus quae nobis. Et odit aut repellendus omnis autem in ea sed. Ut qui perferendis quia veritatis accusamus minus.','1974-03-08 13:05:09'),(29,32,'bad','Corporis molestiae non excepturi et id. Maiores in sit optio non molestiae assumenda. Qui quasi in et soluta cupiditate qui. Dolore consequuntur provident et sapiente.','2017-06-22 10:44:44'),(30,76,'bad','Eveniet facere est non quia dignissimos est. Voluptatem eum qui molestias molestiae nemo id vel. Exercitationem sint molestiae fuga ea error ut. Dignissimos aliquam facere sed iure.','2005-08-29 04:28:09'),(31,99,'excellent','Et mollitia hic modi excepturi. Consequuntur omnis soluta eaque autem debitis quibusdam. Deleniti eos rem et totam dolores pariatur. Non voluptas et quis et sint.','2016-11-01 16:14:27'),(32,52,'excellent','Animi minima aut quaerat vero adipisci laborum debitis. Illum nisi laboriosam voluptatem voluptates et quam. Voluptatibus aut rerum ullam praesentium facilis eum alias. Velit et repudiandae eum omnis.','2020-03-07 04:11:19'),(33,80,'bad','Est error est voluptates tempora facilis. Reiciendis blanditiis nobis totam doloribus quod perferendis eum. Eos occaecati impedit delectus iste molestiae vitae.','1995-12-23 11:35:14'),(34,14,'excellent','Id assumenda voluptas dolorem omnis. Labore fugiat molestiae accusamus qui dignissimos.','2014-02-27 09:21:11'),(35,38,'excellent','Autem odit omnis a dicta. Quis dolores enim fugit non dolorum ipsum. Sequi porro incidunt dolor nobis illum.','2010-11-20 20:42:45'),(36,15,'excellent','Sit omnis autem reiciendis assumenda rem et. Sunt blanditiis exercitationem consequatur laborum. Repellendus qui officia dolor et. Sunt et quia culpa facere eligendi. Corporis atque quaerat temporibus vitae facilis id aut.','1994-10-17 01:11:36'),(37,88,'bad','Quas consequatur odio nulla eos tempora pariatur quis. Dolorem animi ipsa iste atque. Assumenda non numquam pariatur et consequatur debitis qui neque. Sit tempora id soluta quis molestiae.','1993-06-20 19:18:58'),(38,97,'bad','Illo eos dolor in velit quasi. Ipsam voluptatem nihil molestias alias delectus soluta commodi. Provident natus sapiente sunt sit ut dolores optio. Sit nulla ut maxime cupiditate assumenda qui.','2011-05-09 20:41:01'),(39,51,'excellent','Sit rerum nam sit ex nulla at. Odio atque ut reiciendis placeat. Ullam nihil similique ad nemo atque.','2022-01-18 00:57:42'),(40,19,'bad','Aperiam suscipit dignissimos excepturi exercitationem. Veniam est voluptates omnis voluptatibus sed culpa eligendi. Quia suscipit eaque fugit. Perferendis vel vero quod omnis nisi mollitia nostrum cumque.','1991-12-20 22:42:35'),(41,1,'bad','At iusto libero adipisci consequatur aut vero optio. Dolorem cupiditate alias et nemo et deserunt occaecati. Et cumque autem repellat. Beatae sapiente ut facilis debitis rerum.','2002-06-30 17:33:12'),(42,40,'bad','Et quas saepe vel et et eius quis. Consectetur omnis et vero quia sunt quia sapiente laboriosam. Et quaerat nostrum aspernatur eos magnam ut minima. Laboriosam velit dolor nam hic praesentium.','2017-08-28 02:14:11'),(43,22,'excellent','Qui culpa nesciunt natus tenetur ipsam corporis. Officiis eius pariatur dignissimos quasi quam reiciendis nihil voluptas.','2005-03-17 10:15:39'),(44,66,'good','Deserunt voluptatem maiores sint. Sint omnis maxime deserunt omnis earum qui perferendis. Et dolor eaque ab distinctio molestiae hic rerum. Sed iusto eum culpa maiores non.','1990-12-23 08:28:16'),(45,81,'excellent','Quaerat dolorem ipsam est laborum rerum ullam architecto corrupti. Incidunt et corrupti qui quo unde molestias qui. Dolor sit sit sed cum.','2022-07-13 07:42:57'),(46,13,'good','Tempora sit ratione repellat quis quos. Earum voluptate eos rem maxime nulla. Quo non dolore ipsum et qui quibusdam. Corrupti eos adipisci non.','1975-11-28 23:11:12'),(47,76,'good','Enim aliquam iste debitis ad corporis. Praesentium suscipit aut incidunt dignissimos. Modi temporibus excepturi est iste repellendus ut amet. Consequuntur non quibusdam est eius et dolor.','1989-06-15 14:49:23'),(48,48,'bad','Id temporibus error consectetur et unde aut non. Aliquid corrupti expedita dolor doloremque sit. Rerum unde exercitationem hic repudiandae sit qui. Sint laboriosam nesciunt sequi voluptates.','2016-07-24 08:49:21'),(49,58,'excellent','Et eos architecto quia similique velit tempora sit voluptatem. Recusandae facere aut molestiae non ullam beatae. Ea et qui est recusandae officia qui id.','1985-03-29 09:28:42'),(50,81,'good','Sunt ea deleniti et est. Consectetur et aut omnis dicta saepe qui. Qui quae quasi et.','2010-03-20 23:53:23'),(51,75,'excellent','Est officia voluptates rerum quo voluptatibus est natus. Aliquid eligendi autem in. Voluptatem corrupti ad et quasi.','2010-12-07 23:40:25'),(52,82,'good','Aut perspiciatis pariatur commodi placeat. Voluptas quasi occaecati amet. Unde adipisci accusamus sapiente possimus commodi illum. Quod voluptas quae exercitationem sint quia dolores.','1976-04-26 00:22:00'),(53,95,'bad','Unde facilis vel dolore et ipsa commodi. Sapiente expedita pariatur aut. Possimus officia perspiciatis eaque tempore aut praesentium. Maxime quia ut voluptatem aut.','2020-06-24 19:41:18'),(54,74,'bad','Ut ut porro est aliquid. Ut ipsa neque qui eaque dicta non. Aliquid tempora temporibus molestiae tempora. Ea corporis voluptate rerum rem porro repellat laudantium.','1995-11-11 19:43:21'),(55,4,'excellent','Sunt ut qui cumque ab repellat ut non. Quidem vitae voluptatem libero laboriosam. Ducimus quia repudiandae commodi. Cupiditate nesciunt laborum nam quia.','1972-02-27 13:15:11'),(56,100,'good','Est atque atque et ea quam est voluptas voluptatem. Inventore et qui natus minus molestiae non est. Numquam commodi consectetur molestiae odit nam. Optio sequi molestiae voluptatem blanditiis totam.','1982-08-11 14:10:01'),(57,72,'bad','Voluptatem quis repellendus vero aperiam labore rerum soluta. Vitae quia est amet aliquam cumque incidunt. Labore aut assumenda magnam vitae dolorum velit.','1991-01-02 07:15:43'),(58,99,'good','Praesentium non laboriosam impedit non sed beatae sapiente. Quae ipsam accusamus similique quam modi aliquam. Temporibus et praesentium nihil sit repellat.','2017-02-19 03:00:03'),(59,76,'excellent','Nihil dolorum eaque molestias hic dolore officia est assumenda. Veritatis aut et laborum.','2007-02-08 10:32:20'),(60,3,'excellent','Ipsum nam voluptas doloribus error. Consectetur voluptas nostrum ut inventore sed eveniet ipsa. Qui doloremque accusantium qui expedita. Cum consequatur porro voluptas modi.','1976-06-25 23:08:08'),(61,75,'excellent','Aut qui et iusto aut occaecati tempora. Et velit recusandae quia unde. Doloribus cumque natus temporibus molestias. Ullam nulla est quos quo necessitatibus aut delectus omnis.','1980-09-18 16:08:08'),(62,74,'excellent','Nobis culpa quis voluptatibus odio aut ab dolorem. Porro alias magni deserunt totam facilis. Voluptatibus molestiae et possimus eaque. Quia sed praesentium praesentium maxime sequi ipsam at. Maiores reprehenderit eum qui voluptatem modi velit.','1983-01-31 10:25:22'),(63,55,'bad','Sed officia aut ipsum a qui nisi. Id tempore nostrum aliquam sequi rerum iste cum nostrum. Praesentium aut illo nihil ut sit porro. Officia debitis sit at aut pariatur quod nisi.','1997-07-15 14:10:56'),(64,54,'bad','Enim repellat iste dolores rerum. Quaerat iure neque nesciunt. Laboriosam qui iure voluptas ut ab ea. Explicabo aut incidunt expedita aut eum quasi omnis non.','2022-08-05 06:09:26'),(65,88,'good','Sed in corrupti at id voluptatum iure deserunt error. Accusamus in optio est aspernatur ut.','1972-07-21 22:34:33'),(66,92,'excellent','Nihil iure consequuntur omnis earum deleniti velit asperiores nostrum. Corrupti asperiores reprehenderit ut distinctio. Veritatis iure possimus blanditiis error libero. Ut eius non incidunt dolorem blanditiis sed dolor.','2019-10-01 12:40:40'),(67,69,'good','Enim consequuntur id voluptatem et in omnis et. Ex eligendi rerum aspernatur dicta doloremque numquam et consequatur. Voluptas rerum voluptates unde assumenda unde.','1992-12-18 10:50:25'),(68,76,'bad','Recusandae quae repellat beatae dolorum quia quod. Qui dolor accusantium asperiores ipsum. Eos magni vel expedita odio nihil expedita. Voluptas ipsum tempora vero laborum.','1972-01-25 04:21:50'),(69,89,'good','Assumenda consequatur non ut laudantium voluptas et. Et a quibusdam quibusdam suscipit provident dolorem. Illo perspiciatis voluptatem expedita sit. Porro illo beatae qui doloremque omnis dolor.','2014-01-06 21:40:25'),(70,20,'excellent','Atque necessitatibus in voluptas placeat enim minus a. Sed labore ipsum dolores magnam. Similique quo consectetur doloribus cupiditate. Voluptas provident exercitationem sit consequatur. Doloremque exercitationem aspernatur necessitatibus totam.','2016-03-17 18:28:47'),(71,94,'bad','Doloremque quo qui officia maxime sint eum fuga. Dolores non eaque omnis aspernatur. Est qui et molestias ipsam. In dolor tenetur sit rem laboriosam omnis corrupti. Minima autem vero ut odio qui.','1996-08-28 00:58:51'),(72,90,'bad','Autem illum iure error aut amet quasi. Sunt et enim autem optio cupiditate autem voluptate nemo. Unde explicabo labore sed.','1987-02-11 19:12:25'),(73,59,'good','Est dignissimos et nesciunt quos. Cupiditate ullam tempore sint. Cupiditate iste omnis ex.','2006-11-28 15:16:27'),(74,16,'good','Eveniet officiis laborum ut vero similique voluptatem tempora similique. Et explicabo consequatur sed natus voluptate hic. Nostrum voluptatum est reiciendis eius esse. Eaque qui id quam nisi consequuntur soluta at.','1988-04-03 08:33:07'),(75,55,'good','Quia quis neque minima iste modi. Ea blanditiis iusto optio odio qui distinctio. Rerum sunt quis quo explicabo quae eaque earum.','2001-10-20 03:38:56'),(76,40,'good','Ea laborum eos quisquam ad dignissimos quisquam. Dignissimos rerum aperiam nesciunt consectetur ratione. Corporis aut sunt molestiae veritatis expedita distinctio repellendus.','1981-10-30 13:17:04'),(77,29,'good','Ut eos cumque necessitatibus similique quia. Fugiat eligendi eum et debitis sed. Sint necessitatibus quia ipsum quisquam quis est dolorem. Sunt a dolorem omnis iusto consequuntur voluptas perspiciatis delectus.','1978-11-24 04:09:04'),(78,30,'bad','Consequatur earum minima magnam quae nulla reiciendis. Qui molestiae ut ipsam et enim doloremque eum. Nam excepturi qui facilis similique eum maiores ipsum voluptas.','2007-03-23 01:07:40'),(79,88,'good','Voluptatibus porro ad qui deleniti quisquam occaecati eos ipsum. Reiciendis est ducimus velit eos. Odio qui vel quis sit corrupti. Ex quae qui incidunt et.','1984-12-03 18:53:07'),(80,86,'good','Consequuntur ad minima quae corporis nihil labore repudiandae. Voluptatem et ut voluptatibus voluptas dolore placeat. Atque assumenda quasi quod numquam eum reprehenderit sunt.','1981-05-17 14:22:57'),(81,10,'excellent','Et ipsam ex dolorum dolores rerum esse ullam. Excepturi repellat voluptates soluta. Aut quibusdam sunt fuga non. Omnis quis doloribus necessitatibus dolor deleniti.','1993-11-27 11:22:56'),(82,62,'good','Exercitationem expedita officiis nobis aliquid nam omnis vel dolorem. Sed repellat quia et earum. Occaecati ut architecto odit.','1971-01-13 07:14:30'),(83,68,'bad','Ipsa libero non dignissimos natus occaecati et. Sed repellendus ducimus quia odio ut sed. Dolore voluptates non asperiores iusto enim. Dolore hic esse nesciunt quis.','2021-05-28 13:39:21'),(84,4,'excellent','Quia pariatur voluptas et eveniet repellendus iusto totam. Illo id odio minus dolor voluptas incidunt inventore ea. Nisi exercitationem autem fugit et et ut quisquam.','1987-07-15 12:14:07'),(85,36,'excellent','Neque vitae veritatis sit ea quibusdam ipsam explicabo. Eos rerum facilis voluptatem possimus inventore impedit eos. Consectetur reprehenderit asperiores odit exercitationem illum et. Voluptatem non non ut sapiente magnam. Ea et voluptate explicabo velit eius dolor modi.','2006-01-02 04:19:27'),(86,71,'excellent','Voluptatum et iusto velit facilis vel. Possimus ut qui dolores voluptatem alias vitae. Illum at qui eos repudiandae.','2013-05-23 06:58:20'),(87,4,'excellent','Totam culpa ea nesciunt omnis doloremque. Magnam vitae qui et dolore. Itaque consequatur temporibus voluptatem qui veritatis. Esse sint dolores vero aut veritatis rerum.','1986-04-30 05:11:24'),(88,7,'bad','Ullam amet reiciendis laudantium enim. Mollitia officiis aut inventore dolores non. Qui et nulla enim tempore voluptas ut. Aliquid eligendi quia sed sit est error eius.','1971-03-27 15:40:39'),(89,69,'excellent','Magni commodi possimus veritatis. Quisquam commodi sunt consequatur asperiores et quo. Distinctio voluptatibus dolores qui.','2010-01-19 15:51:32'),(90,79,'good','Et animi aut laboriosam. Et tenetur eum nobis aut officia velit voluptates. Facilis laudantium in doloribus provident aliquam et molestiae.','2015-11-02 23:47:38'),(91,10,'bad','Dolores minus laboriosam mollitia beatae. Iusto unde veniam optio consectetur iure ea. Necessitatibus deserunt occaecati molestiae officia necessitatibus aspernatur. Consequatur at ipsum deleniti numquam voluptates quam eos.','1995-01-18 15:53:11'),(92,43,'excellent','Culpa labore doloribus odit aut facere. Impedit reiciendis dignissimos ipsum est voluptate. Occaecati cum eius possimus.','2005-10-26 09:11:42'),(93,53,'excellent','Sit est quas exercitationem iure et quibusdam dignissimos ratione. Veritatis neque porro asperiores molestiae velit maiores officia eligendi. Est at alias aut sapiente eligendi aspernatur incidunt. Eius ut sit sequi quaerat.','1996-10-31 16:03:03'),(94,64,'good','Totam ut sequi culpa modi eaque accusamus asperiores quas. Aspernatur ut dolor ipsa facere qui voluptatum sunt.','2020-11-30 06:14:44'),(95,97,'bad','At perferendis ut et repellendus. Iure nostrum quia dolor reiciendis esse. Sit aut maxime laudantium quos aliquid ut. Ea enim voluptas quia deleniti porro est neque voluptates.','1993-01-27 05:27:48'),(96,41,'excellent','Nam inventore quia facilis. Sapiente soluta repellat quo et consequuntur sed libero. Corrupti asperiores reiciendis perferendis dolore illo incidunt libero. Vel eos sequi animi quisquam.','2008-06-06 15:00:03'),(97,56,'good','Quisquam cupiditate aspernatur sed magnam ut facere. Omnis fuga officiis eligendi placeat sit cumque at cum. Natus et expedita sequi sequi sint. Magnam magnam sapiente eius velit sint delectus et omnis.','2009-05-18 11:21:43'),(98,66,'bad','Dolorem totam beatae dolor impedit repudiandae. Eveniet cumque repellendus ullam minus voluptatibus enim fugiat. Et quisquam sit quis quos sint.','1999-10-10 00:02:03'),(99,16,'good','Ipsam porro incidunt possimus velit odio. Numquam omnis autem dolorem. Nostrum architecto dolorem sed.','2009-12-10 18:10:12'),(100,44,'bad','Commodi qui maxime minima voluptas consectetur magni a in. Nobis autem sint inventore eaque. Mollitia incidunt veniam et consequuntur sapiente quos. Asperiores quos deleniti et eius consequatur. Voluptas magnam dolorem ipsum consectetur.','1975-02-14 11:28:08');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `director_id` bigint(20) unsigned NOT NULL,
  `town` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `director_id` (`director_id`),
  CONSTRAINT `storage_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `storage_dir` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` VALUES (1,1,'Velmamouth'),(2,2,'West Griffin'),(3,4,'East Ian'),(4,3,'Ryanshire'),(5,5,'Mallorybury');
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_dir`
--

DROP TABLE IF EXISTS `storage_dir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage_dir` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_dir`
--

LOCK TABLES `storage_dir` WRITE;
/*!40000 ALTER TABLE `storage_dir` DISABLE KEYS */;
INSERT INTO `storage_dir` VALUES (1,'Genesis','Smitham','fritsch.daren@example.net',8948114),(2,'Damian','Mitchell','qshields@example.org',8957042),(3,'Arnoldo','Will','vernon.hane@example.com',8851576),(4,'Baron','Wehner','imelda.morissette@example.net',8831016),(5,'Lafayette','Daugherty','bessie.wintheiser@example.com',8957415);
/*!40000 ALTER TABLE `storage_dir` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;





/*DDL*/

update authors 
set firstname = 'John'
where id = 16;

insert into authors (firstname, lastname, email, phone, birthday) values
    ('Garry', 'Pincher', 'gp123@gp.com', 94342213, '1982-10-11'),
    ('Henry', 'Brown', 'hb1er@hb.com', 95234155, '1956-11-08'),
    ('Mary', 'Wild', 'fs34@mw.com', 92545340, '1998-07-23');
 


/*1. Вывести номера заказов и информацию о пользователях, которые дали отрицательный отзыв о магазине*/


select  
o.id as order_id,
b.firstname,
b.lastname,
b.email
from orders o
join buyers b on o.buyer_id=b.id
join reviews r on r.from_buyer_id=b.id where r.status = 'bad';



/*2. Узнать какие жанры предпочитают покупатели старше 40 лет */


select
count(*) as cnt,
g.name as genre_name
from genre g 
join books b on g.id=b.genre_id 
join orders o on b.id=o.book_id 
join buyers b2 on b2.id=o.buyer_id where TIMESTAMPDIFF(YEAR, birthday, NOW()) > 40
group by g.name
order by cnt desc;


/*3. Узнать кто из покупателей сделал больше всего заказов, вывести их день рождения*/


select 
count(*) as order_cnt,
b.firstname,
b.lastname,
b.birthday 
from orders o 
join buyers b on o.buyer_id=b.id
group by b.id
order by order_cnt desc
limit 5;


/*4. Узнать авторов моложе 35 лет, чьи книги экранизированы*/


select distinct 
a.firstname,
a.lastname
from books b
join filmed f on f.book_id=b.id
join authors a on a.id= b.author_id where TIMESTAMPDIFF(YEAR, birthday, NOW()) < 35;



/*5. Вывести склад (город где он находится) и его директора, который обработал больше всего заказов*/


select 
count(*) as cnt_orders,
s.town,
sd.firstname as dir_firstname,
sd.lastname as dir_lastname
from storage s 
join storage_dir sd on sd.id=s.director_id 
join books b on b.storage_id=s.id 
join orders o on o.book_id=b.id 
group by s.town
order by cnt_orders desc
limit 1;



/*6. Выяснить какие книги ни разу не заказывали*/


select 
b.id,
b.name as book_name,
o.id as order_id
from books b 
left join orders o on o.book_id=b.id 
order by order_id, b.id
limit 15;



-- процедуры

-- процедура 1. Узнать сколько заказов сделал покупатель

 
delimiter //
create procedure orders_by_buyer(put_buyer_id bigint)
begin
	select count(*) as cnt
	from orders o where o.buyer_id = put_buyer_id ;
end//
delimiter ;


call orders_by_buyer(2)


-- процедура 2. Узнать сколько штук книги купили


delimiter //
create procedure book_ammount(put_book_id bigint)
begin
	select sum(ammount) from orders o where book_id = put_book_id ;
end//
delimiter ;


call book_ammount(1)



-- представления

-- представление 1. Создать представление, которое выводит название книги и ее жанр

create view book_genre AS 
select b.name as book_name, g.name as genre_name
from books b
join genre g
on b.genre_id = g.id;

select * from book_genre;

-- представление 2. Создать представление, которое выводит имена, фамилии и почты покупателей и количество их заказов

create view buyer_orders AS 
select count(*) as cnt_orders, b.firstname as buyer_firstname, b.lastname as buyer_lastname, b.email as buyer_email
from orders o
join buyers b 
on o.buyer_id = b.id
group by b.email
order by cnt_orders desc;

select * from buyer_orders;


-- триггеры

-- триггер 1. При добавлении нового автора необходимо вывести ошибку если дата его рождения указана до 1900 года

delimiter //
create trigger check_author_age
before insert on authors for each row begin
	if new.birthday < '1900-01-01' then 
	signal sqlstate '45000' set message_text = ' Сработал триггер! День рождения указан до 1900 года' ;
end if;
end //
delimiter ;

-- проверим триггер 1

insert into authors (firstname, lastname, email, phone, birthday) values
    ('Bob', 'Black', 'BB123@gp.com', 94342213, '1882-10-11');


-- триггер 2. При добавлении сведений о заказе поле town не может принимать неопределенное значение null   
   
   
delimiter //
create trigger check_town before insert on orders
for each row begin
	if isnull(new.town) then
		signal sqlstate '45000' set message_text = 'Триггер! Значение поля town не может быть NULL. Пожалуйста заполните поле. ';
	end if;
end //
delimiter ;
   
  -- проверим триггер 2 
   
insert into orders (buyer_id, book_id, ammount, town) values
    (34, 12, 5, null);






