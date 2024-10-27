-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: std-mysql    Database: std_2444_exam
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `year` int(11) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `pages` int(11) NOT NULL,
  `cover_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_books_cover_id_covers` (`cover_id`),
  CONSTRAINT `fk_books_cover_id_covers` FOREIGN KEY (`cover_id`) REFERENCES `covers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (2,'«Властели́н коле́ц» (англ. The Lord of the Rings) — роман-эпопея английского писателя Дж. Р. Р. Толкина, одно из самых известных произведений жанра фэнтези. «Властелин колец» был написан как единая книга, но из-за объёма при первом издании его разделили на три части — «Братство Кольца», «Две крепости» и «Возвращение короля». В виде трилогии он публикуется и по сей день, хотя часто в едином томе. Роман считается первым произведением жанра эпическое фэнтези, а также его классикой.',1954,'издательства АСТ','Джон Рональд Руэл Толкин',1120,1,'Властелин колец'),(3,'<p>«Война́ и мир» (рус. дореф. «Война и миръ») — роман-эпопея Льва Николаевича Толстого, описывающий русское общество в эпоху войн против Наполеона в 1805—1812 годах. Эпилог романа доводит повествование до 1820 года.</p>\n',1865,'Русский вестник','Лев Толстой',1000,2,'Война и мир'),(4,'В книгу вошли рассказы из сборников \"Записки о Шерлоке Холмсе\" и \"Возвращение Шерлока Холмса\", повествующие о приключениях знаменитого лондонского сыщика и его верного спутника доктора Уотсона',1988,'Strand Magazine','Артур Конан Дойл ',880,3,'Записки о Шерлоке Холмсе'),(68,'<p>Книга Унесённые ветром была написана Маргарет Митчелл в 1936 году. Действия романа происходят в одно из наиболее тяжёлых времён для США - события гражданской войны. Эта книга о любви и верности, о дружбе и предательстве, а также о преданных и сильных духом людях, которые жили в то время. На протяжении книги описывается удивительная история любви Скарлетт О\' Хара и Ретта Батлера, отношения которых непредсказуемы и поражают своей чувственностью. Роман Унесенные ветром заслуженно стал одним из самых популярных во всём мире, а фильм, снятый по книге, завоевал 8 премий Оскар и считается самым кассовым до сих пор.</p>\n',1936,'СЗКЭО','Маргарет Митчелл',896,103,'Унесенные ветром'),(69,'<p>Не может быть ничего хуже тотальной несвободы. «1984» — культовый роман Джорджа Оруэлла, действие которого разворачивается в тоталитарном, бюрократическом государстве, где один человек тщетно пытается бороться за право быть индивидуальной личностью.</p>\n',1949,'АСТ','Джордж Оруэлл',320,104,'1984'),(70,'<p>Изумительный роман с непонятными героями заставляет втянуться в историю главных участников. Книга, которую написал Михаил Булгаков — «Мастер и Маргарита» покорила практически весь мир. Роман был переведён на многие языки и появлялось неоднократно на экранах. «Мастер и Маргарита» — книга, которую с интересом читают даже в школьной программе. Не один год и не одно поколение она затронула не только своей мистикой, но и юмором. Проходят годы, а роман М. Булгакова никогда не перестанут осуждать, или же наоборот — восхищаться данным произведением.</p>\n',1940,'МИФ','Михаил Булгаков',512,105,' Мастер и Маргарита'),(71,'<p>Америка, тридцатые годы, тихий южный городок Мейкомб. Неторопливая спокойная жизнь, дамы в корсетах пьют чай и сплетничают о прислуге, дети играют дотемна, и на весь город всего одно неблагополучное семейство Юэллов с пьяницей-папашей во главе. И вдруг, словно камень в болото, ужасная новость — на …</p>\n',1960,'АСТ','Харпер Ли',416,106,'Убить пересмешника'),(72,'<p>Семнадцать осенних дней из жизни одного колумбийского городка. Дождь то и дело сменяется удушающей жарой. Именно в такой октябрь в одном колумбийском городке появляются листки с описанием тайн жизни его обитателей. Пасквили и карикатуры всего лишь повторяют слухи и домыслы, но некоторые принимают и…</p>\n',1962,'Эксмо-Пресс','Габриэль Гарсиа Маркес',288,107,'Недобрый час'),(73,'<p>«Грозовой перевал» - роман Эмили Бронте, представительницы прославленной фамилии в английской литературе, вышедший в 1847 году. В том же году были опубликованы произведения её знаменитых сестер: «Джейн Эйр» Шарлотты Бронте и «Агнес Грей» Энн Бронте. «Грозовой перевал» - книга своего времени, перев…</p>\n',1847,'АСТ','Эмили Бронте',416,108,'Грозовой перевал'),(74,'<p>Англия, конец XVIII века. Родители пятерых сестер Беннет озабочены тем, чтобы удачно выдать дочерей замуж. Размеренная жизнь семейства переворачивается вверх дном, когда по соседству появляется молодой джентльмен — мистер Бингли. Среди друзей нового соседа оказывается немало утонченных аристократов, которые не прочь поухаживать за очаровательными сестрами. Своевольная Элизабет знакомится с красивым и высокомерным мистером Дарси. Между ними разгорается нешуточное противостояние, результатом которого может стать как любовь, так и ненависть. Смогут ли они преодолеть все разногласия и недоразумения?</p>\n',1813,'АСТ','Джейн Остен',416,109,'Гордость и предубеждение');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-18 19:17:01