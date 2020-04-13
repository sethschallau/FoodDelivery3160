-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: foodDelivery
-- ------------------------------------------------------
-- Server version	8.0.19-0ubuntu0.19.10.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL,
  `licenseNumber` int NOT NULL,
  `dateHired` date NOT NULL,
  `student_student_id` int NOT NULL,
  PRIMARY KEY (`driver_id`,`student_student_id`),
  UNIQUE KEY `driver_id_UNIQUE` (`driver_id`),
  KEY `fk_driver_student1_idx` (`student_student_id`),
  CONSTRAINT `fk_driver_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,1,'2020-02-02',1),(2,2,'2021-03-24',2),(3,3,'2020-10-20',3),(4,4,'2019-12-27',4),(5,5,'2020-08-19',5),(6,6,'2020-01-14',6),(7,7,'2020-05-10',7),(8,8,'2021-01-29',8),(9,9,'2020-08-06',9),(10,10,'2020-03-28',10),(11,11,'2020-03-06',11),(12,12,'2020-06-17',12),(13,13,'2020-06-29',13),(14,14,'2019-08-25',14),(15,15,'2020-05-05',15),(16,16,'2020-05-21',16),(17,17,'2019-08-26',17),(18,18,'2019-08-14',18),(19,19,'2019-09-15',19),(20,20,'2019-12-04',20),(21,21,'2020-03-01',21),(22,22,'2020-05-25',22),(23,23,'2020-03-02',23),(24,24,'2019-08-06',24),(25,25,'2021-03-03',25),(26,26,'2019-06-04',26),(27,27,'2019-07-30',27),(28,28,'2020-08-06',28),(29,29,'2019-10-12',29),(30,30,'2019-12-15',30),(31,31,'2021-02-05',31),(32,32,'2020-02-10',32),(33,33,'2020-12-24',33),(34,34,'2019-09-28',34),(35,35,'2019-05-06',35),(36,36,'2020-08-15',36),(37,37,'2019-06-21',37),(38,38,'2020-04-03',38),(39,39,'2020-11-06',39),(40,40,'2019-08-30',40),(41,41,'2021-03-10',41),(42,42,'2020-05-20',42),(43,43,'2019-06-13',43),(44,44,'2019-07-21',44),(45,45,'2021-03-06',45),(46,46,'2020-07-07',46),(47,47,'2019-06-21',47),(48,48,'2019-05-08',48),(49,49,'2020-05-08',49),(50,50,'2021-04-06',50),(51,51,'2020-08-11',51),(52,52,'2020-03-02',52),(53,53,'2020-11-15',53),(54,54,'2019-12-21',54),(55,55,'2019-10-16',55),(56,56,'2020-05-18',56),(57,57,'2019-05-19',57),(58,58,'2020-03-23',58),(59,59,'2019-05-15',59),(60,60,'2019-11-01',60),(61,61,'2020-06-09',61),(62,62,'2019-09-04',62),(63,63,'2020-01-13',63),(64,64,'2020-12-26',64),(65,65,'2020-01-01',65),(66,66,'2019-06-07',66),(67,67,'2020-08-22',67),(68,68,'2020-10-10',68),(69,69,'2021-03-20',69),(70,70,'2019-04-15',70),(71,71,'2020-05-10',71),(72,72,'2019-08-07',72),(73,73,'2020-03-22',73),(74,74,'2020-05-07',74),(75,75,'2019-08-09',75),(76,76,'2020-05-23',76),(77,77,'2021-04-05',77),(78,78,'2020-09-07',78),(79,79,'2019-11-19',79),(80,80,'2021-03-04',80),(81,81,'2020-10-23',81),(82,82,'2019-11-29',82),(83,83,'2019-10-19',83),(84,84,'2019-08-02',84),(85,85,'2020-06-06',85),(86,86,'2021-03-02',86),(87,87,'2021-03-08',87),(88,88,'2019-11-27',88),(89,89,'2020-12-18',89),(90,90,'2019-10-29',90),(91,91,'2020-07-17',91),(92,92,'2019-11-15',92),(93,93,'2019-08-18',93),(94,94,'2021-03-17',94),(95,95,'2019-07-10',95),(96,96,'2020-05-08',96),(97,97,'2020-04-03',97),(98,98,'2020-12-28',98),(99,99,'2021-03-23',99),(100,100,'2020-10-09',100);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`faculty_id`),
  UNIQUE KEY `faculty_id_UNIQUE` (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Tara M. Guthrie','1-426-444-3826','porttitor.vulputate@luctuslobortis.co.uk'),(2,'Britanni Z. Riggs','1-922-960-6742','euismod.in@aliquet.ca'),(3,'Casey C. Roy','1-984-265-0563','Maecenas.iaculis.aliquet@sem.ca'),(4,'Beverly O. Barry','1-327-628-6261','nisi.Cum.sociis@egetnisidictum.net'),(5,'Marvin W. Guy','1-458-530-9358','aliquet.metus@Mauris.edu'),(6,'Abraham T. Merritt','1-676-736-3108','ac.urna@maurisaliquameu.org'),(7,'Lyle J. Oneal','1-539-160-2754','dui.Fusce@disparturient.edu'),(8,'Rahim B. Cruz','1-781-774-8671','magnis@ametconsectetuer.edu'),(9,'Holly S. Steele','1-325-518-0494','nascetur@Suspendissetristiqueneque.ca'),(10,'Lacota U. Franco','1-517-907-7934','at.fringilla.purus@dictumultricies.org'),(11,'Noah O. Lynn','1-225-150-5558','tempus.risus@elitdictumeu.co.uk'),(12,'Logan V. Clayton','1-759-338-4117','dui@ante.org'),(13,'Hayley Q. Michael','1-469-344-9934','metus.facilisis@estmollisnon.net'),(14,'Zena C. Melton','1-384-203-5931','non.arcu.Vivamus@utipsumac.edu'),(15,'Judah F. Carpenter','1-437-758-2493','viverra.Donec@nequesedsem.edu'),(16,'MacKenzie U. Hines','1-356-403-5737','lorem@luctusut.co.uk'),(17,'Lisandra T. Ballard','1-833-288-9398','eleifend.nunc@ligulatortor.net'),(18,'Uta C. Cash','1-583-955-0366','neque.pellentesque@euaccumsansed.net'),(19,'Maggie D. Hahn','1-628-934-7722','convallis.ante.lectus@egetmetuseu.edu'),(20,'Madonna D. Craft','1-540-910-2690','Nunc.sollicitudin@sitametornare.edu'),(21,'Fuller K. Hyde','1-302-945-8642','arcu.ac.orci@feugiatmetussit.ca'),(22,'Shelly Q. Keller','1-204-213-5423','In.nec.orci@placerateget.com'),(23,'Jocelyn A. Sykes','1-271-944-3500','Nunc.mauris.Morbi@ipsum.edu'),(24,'Bree A. Raymond','1-731-218-8593','sed.turpis@sitametdiam.org'),(25,'Blair E. Jensen','1-345-182-1967','condimentum.Donec.at@commodo.org'),(26,'Abel Z. Green','1-744-415-1712','cursus.vestibulum.Mauris@ligula.ca'),(27,'Lael L. Bright','1-822-412-4038','sed.turpis.nec@magnased.com'),(28,'Dahlia V. Clarke','1-506-902-2834','in.consequat.enim@vitaevelit.org'),(29,'Sloane P. Mcleod','1-960-322-4056','massa.lobortis.ultrices@Nunc.com'),(30,'Tad P. Christian','1-398-143-1005','metus@Aliquam.co.uk'),(31,'Hillary W. Strong','1-476-703-6674','vehicula.risus@faucibusleo.edu'),(32,'Quynn A. Holman','1-827-460-6100','tristique.aliquet.Phasellus@ipsumnon.net'),(33,'Madaline Y. Olsen','1-290-735-6838','neque.In@Aliquam.net'),(34,'Jarrod O. Rush','1-997-549-7509','In.ornare.sagittis@nasceturridiculus.co.uk'),(35,'Myles C. Wynn','1-780-101-5917','magnis@In.com'),(36,'Nita G. Conley','1-886-255-8498','Suspendisse.sed.dolor@sem.ca'),(37,'Xanthus T. Santiago','1-251-874-3659','Integer@neque.ca'),(38,'Barry R. Richards','1-882-673-6880','ante.bibendum@atvelitPellentesque.com'),(39,'Alexander H. Hooper','1-754-644-4890','quam.quis.diam@Morbimetus.ca'),(40,'Yoshi D. Carpenter','1-941-285-1588','magna.malesuada@blandit.co.uk'),(41,'Plato T. Reyes','1-551-557-0928','accumsan@vestibulummassarutrum.com'),(42,'Yardley F. Bishop','1-254-323-1417','fames.ac.turpis@nuncsit.net'),(43,'Sierra B. Salazar','1-863-905-0267','taciti.sociosqu.ad@nulla.ca'),(44,'Kai G. Gamble','1-491-589-4550','Morbi@Cumsociis.org'),(45,'Arthur T. Bernard','1-812-992-1654','placerat.augue@enimdiamvel.com'),(46,'Jermaine L. Levy','1-410-231-2784','tellus@egetodioAliquam.com'),(47,'Guy W. Hopkins','1-494-720-2903','Pellentesque@ullamcorperviverraMaecenas.co.uk'),(48,'Sade N. Benson','1-990-861-0744','eu@aliquamenimnec.org'),(49,'Vivien N. Skinner','1-328-344-5133','elit.pretium.et@loremlorem.net'),(50,'Ora O. Dominguez','1-942-893-9896','egestas.rhoncus.Proin@Morbi.net'),(51,'Jason','1-522-809-7303','odio@eDuis.com'),(52,'Salvador','1-408-755-3746','vulputate.posuere@hendrante.com'),(53,'Noah','1-171-987-6231','dictum.mi.ac@impictum.com'),(54,'Kenneth','1-125-886-6843','dolopeue@pgiis.com'),(55,'Wanda','1-379-189-6640','pharetra@penatibus.co.uk'),(56,'Dara','1-952-627-2843','tortor.Integer.aliquam@hendreritid.edu'),(57,'Lillian','1-560-972-1534','ac.eleifend@scelerisque.co.uk'),(58,'Octavia','1-593-919-2314','vitae@cubilia.net'),(59,'Guinevere','1-273-424-5938','a@atvelitPellentesque.org'),(60,'Yetta','1-320-535-4317','augue@Donecconsectetuer.net'),(61,'Aretha','1-271-861-4090','sit.amet.risus@tempus.edu'),(62,'Claudia','1-396-251-7668','pede@magnatellusfaucibus.org'),(63,'Paula','1-336-484-0256','lacinia@erateget.ca'),(64,'Avye','1-412-361-7717','Etiam.ligula@lacus.org'),(65,'Illana','1-606-786-4936','magna@Sedcongueelit.co.uk'),(66,'Kyle','1-664-542-1863','sapien.molestie@metus.org'),(67,'Ciaran','1-371-817-4332','Nullam.nisl.Maecenas@Fuscealiquam.edu'),(68,'Preston','1-201-955-9327','nisl@consequatdolor.org'),(69,'Darius','1-738-925-9066','nec@eros.co.uk'),(70,'Ross','1-420-721-8322','blandit.viverra@cursus.com'),(71,'Kadeem','1-977-943-1907','erat.vitae.risus@nec.edu'),(72,'Regan','1-370-690-1686','nunc.nulla@Crasvehiculaaliquet.com'),(73,'Madaline','1-309-948-9008','venenatis.lacus.Etiam@turpis.ca'),(74,'Wayne','1-749-680-2261','Morbi.accumsan.laoreet@velitSedmalesuada.org'),(75,'Beau','1-138-222-5854','Proin.vel@egetodioAliquam.ca'),(76,'Wynter','1-950-774-0644','urna.convallis@duiCumsociis.com'),(77,'Hadley','1-153-178-3458','dui.nec.tempus@eulacus.org'),(78,'Cathleen','1-800-372-7188','Nulla@variusorciin.edu'),(79,'Silas','1-974-156-6538','Vivamus.sit.amet@semperpretium.co.uk'),(80,'Barry','1-827-142-4656','magna.a@mauris.co.uk'),(81,'Nola','1-282-555-6244','ligula.elit@egestasurna.com'),(82,'William','1-294-903-1478','Etiam.ligula@mollislectus.net'),(83,'Harrison','1-817-722-6116','nunc@rutrumjustoPraesent.co.uk'),(84,'Lionel','1-191-320-0903','Curae@vehicula.org'),(85,'Lev','1-491-890-3106','lacus.Ut@Duis.co.uk'),(86,'Blake','1-523-960-2341','magna@Aeneanegetmagna.ca'),(87,'Norman','1-750-994-7032','lobortis.augue@lobortis.ca'),(88,'Lawrence','1-167-301-3092','pede.blandit.congue@nec.edu'),(89,'Cleo','1-982-254-3411','tellus@posuere.edu'),(90,'Gray','1-514-380-6465','penatibus@loremDonecelementum.co.uk'),(91,'Cassandra','1-579-300-8434','ligula.Aenean@Incnec.org'),(92,'Kendall','1-136-994-6115','semper.dui@miDuisrisus.ca'),(93,'Brock','1-500-677-3949','erat.volutpat.Nulla@natoquepenatibuset.ca'),(94,'Veda','1-319-564-4540','aliquet.libero@magnaSuspendissetristique.ca'),(95,'Steven','1-231-170-0048','Pellentesque.ultricies@nequevitaesemper.com'),(96,'Latifah','1-200-165-2140','ac@erosnectellus.co.uk'),(97,'Murphy','1-219-398-4459','ipsum.Suspendisse@musAeneaneget.ca'),(98,'Yoshi','1-292-368-0675','mauris.eu.elit@Vivamusmolestiedapibus.edu'),(99,'Winifred','1-762-473-5436','euismod.in@pedemalesuada.org'),(100,'Noah','1-356-943-3133','rhoncus.Donec.est@Phasellusin.co.uk'),(101,'Hakeem','1-295-972-0512','Nulla@convallisantelectus.ca'),(102,'Abel','1-812-172-8085','volutpat.nunc@ornarelectusjusto.edu'),(103,'Kiona','1-118-573-8027','ut@volutpat.org'),(104,'Aileen','1-843-199-2239','non.enim@Vestibulum.edu'),(105,'Shana','1-441-442-2420','luctus.et.ultrices@egestasDuis.com'),(106,'Tana','1-884-688-8842','vulputate.nisi@a.com'),(107,'Nasim','1-254-353-7327','bibendum.ullamcorper@varius.org'),(108,'Penelope','1-246-609-1582','Nunc@Nuncut.ca'),(109,'Ivory','1-178-626-7488','amet.ante.Vivamus@ametloremsemper.com');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL,
  `location_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_name_UNIQUE` (`location_name`),
  UNIQUE KEY `address_UNIQUE` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Sed Consulting','P.O. Box 882, 9943 Iaculis St.'),(2,'Aliquam Foundation','6430 Id Road'),(3,'Laoreet Lectus Quis Consulting','943 Mattis Ave'),(4,'Eu Incorporated','P.O. Box 371, 7521 Egestas. St.'),(5,'At Nisi Associates','Ap #415-2628 A Av.'),(6,'Velit Eget Laoreet Incorporated','Ap #638-595 Tincidunt. Rd.'),(7,'Rutrum Corporation','2599 Sodales St.'),(8,'Egestas Ligula Institute','1264 Sociosqu Avenue'),(9,'Semper Rutrum Company','5245 Cursus. Street'),(10,'Velit Pellentesque Ultricies Industries','8645 Netus Rd.'),(11,'Mauris Ut Mi Ltd','288-2762 Lobortis Ave'),(12,'Accumsan Convallis Ante Corp.','P.O. Box 386, 2841 Odio. Ave'),(13,'Risus Donec Company','P.O. Box 711, 1861 Eu Rd.'),(14,'Tincidunt Congue Associates','424-4540 Turpis. Rd.'),(15,'Laoreet Industries','P.O. Box 204, 5872 In Street'),(16,'Quisque Tincidunt Institute','P.O. Box 927, 3764 Ornare, Ave'),(17,'Vivamus Euismod Corp.','2060 Penatibus Rd.'),(18,'Turpis Limited','850-5828 Leo, Street'),(19,'Duis Ac Foundation','P.O. Box 146, 2956 Pellentesque Ave'),(20,'Quis Pede Incorporated','3171 Sed Ave'),(21,'Dui Lectus Incorporated','Ap #364-1729 Eu Rd.'),(22,'Eget Company','P.O. Box 821, 8205 Posuere St.'),(23,'Nunc In Corp.','Ap #912-5280 Id, Av.'),(24,'Est Nunc Laoreet Inc.','9567 Sed Av.'),(25,'Auctor Ullamcorper Nisl Limited','4305 Quisque Ave'),(26,'Erat Inc.','801-2633 Cum Road'),(27,'In Foundation','Ap #723-7633 Dictum Rd.'),(28,'Vestibulum Mauris Ltd','687-5167 Et Road'),(29,'In Dolor Corp.','312-2387 Auctor Rd.'),(30,'Egestas LLC','459-9955 Consequat Street'),(31,'Pede Ultrices Inc.','697-2244 Lectus, St.'),(32,'Ullamcorper Nisl Arcu Consulting','5033 Sapien. Road'),(33,'Magna Et Ipsum Incorporated','1400 Non, Ave'),(34,'Auctor Velit Consulting','5289 Amet Road'),(35,'Nullam Enim Sed Foundation','7395 Faucibus. Rd.'),(36,'Felis Eget Varius Inc.','180-3983 Placerat Rd.'),(37,'Ipsum Dolor Sit Foundation','Ap #892-4772 Amet, Avenue'),(38,'Arcu Sed Incorporated','4871 Vel, St.'),(39,'Phasellus Dapibus Quam Institute','Ap #988-9779 Diam. Av.'),(40,'Mollis PC','261 Nisi St.'),(41,'Nisl Arcu LLP','P.O. Box 562, 495 Donec Avenue'),(42,'Congue A PC','1447 Ante. St.'),(43,'Est Arcu Foundation','461-3276 Nunc St.'),(44,'Lacus Ltd','Ap #938-1141 Nec St.'),(45,'Non Justo Foundation','304-3128 Amet, Street'),(46,'Nisl Incorporated','327-4872 Phasellus Road'),(47,'Erat Etiam PC','635-4069 Dis Road'),(48,'Viverra Institute','Ap #567-3973 Nisl Ave'),(49,'Egestas Hendrerit Foundation','3956 Viverra. Ave'),(50,'Phasellus Limited','5806 At, Rd.'),(51,'Fusce Dolor Quam Ltd','993-6648 Metus. Avenue'),(52,'Egestas Hendrerit LLC','591-5558 Eu Rd.'),(53,'Adipiscing Elit LLP','4627 Cum Rd.'),(54,'Metus Vivamus Company','778 Ultricies Ave'),(55,'Orci Ut Semper Incorporated','P.O. Box 179, 9692 Sit St.'),(56,'Massa Lobortis Ultrices Consulting','P.O. Box 327, 792 Elit. Road'),(57,'Urna Vivamus Company','Ap #772-3922 Consequat St.'),(58,'In Incorporated','8583 Non, Rd.'),(59,'Bibendum Sed Est Institute','P.O. Box 895, 5083 Vel St.'),(60,'A LLC','232-618 Nullam St.'),(61,'Eu Turpis Nulla Corporation','P.O. Box 589, 8736 Nec Road'),(62,'Quisque Tincidunt Pede Associates','272-9598 Est, Avenue'),(63,'Sociis Inc.','2416 Facilisis St.'),(64,'Purus Nullam PC','919-7291 Magna Rd.'),(65,'Proin Nisl Limited','434-1809 Dignissim Rd.'),(66,'Nam Consequat Incorporated','1076 Interdum. Avenue'),(67,'Semper Egestas Urna Associates','5600 Phasellus Ave'),(68,'Nec Euismod In PC','236-4091 Enim. St.'),(69,'Duis Gravida LLC','Ap #945-687 Velit. Street'),(70,'Ultricies Ornare Elit LLP','Ap #877-2796 Faucibus. Ave'),(71,'Aliquam Enim LLC','P.O. Box 684, 1217 Ipsum. St.'),(72,'Lorem Donec Company','Ap #892-8909 Cubilia Av.'),(73,'Tempus Eu Associates','P.O. Box 336, 5487 Sed Rd.'),(74,'Ac Facilisis Limited','632-2417 Metus. Street'),(75,'Nunc Institute','3685 Odio. Rd.'),(76,'Nullam Feugiat Incorporated','316-9228 Dictum Rd.'),(77,'Sagittis Felis Corporation','8248 Odio. Street'),(78,'Vestibulum Nec Euismod Limited','Ap #199-2033 Lacus. Ave'),(79,'Ut Dolor Dapibus Industries','3774 Varius Road'),(80,'Dolor Sit Incorporated','1003 Sed, Ave'),(81,'In Inc.','Ap #761-2931 Urna. Street'),(82,'Praesent Eu Institute','Ap #370-8001 Eu St.'),(83,'Ac Fermentum Vel Corporation','980-5269 Auctor. Avenue'),(84,'Et Malesuada Fames LLP','P.O. Box 903, 4218 Diam Avenue'),(85,'Tincidunt Institute','Ap #118-9358 Arcu. Ave'),(86,'Nunc LLP','P.O. Box 412, 5358 Felis Street'),(87,'Laoreet Lectus Quis Ltd','594-2786 In, Ave'),(88,'Ac Limited','400-1886 Phasellus Street'),(89,'Felis Nulla Tempor Corporation','Ap #327-1935 Faucibus St.'),(90,'Dui Fusce Aliquam Consulting','9277 Vestibulum, St.'),(91,'Nec Institute','8057 Pellentesque Street'),(92,'Mauris Corp.','P.O. Box 724, 7714 Est. Rd.'),(93,'Eu Erat Semper PC','Ap #497-3175 Ligula Street'),(94,'Non Arcu Associates','P.O. Box 594, 1055 Cursus St.'),(95,'Tristique LLC','P.O. Box 642, 1885 Nunc Rd.'),(96,'Magna Praesent Company','Ap #225-5644 Ridiculus Rd.'),(97,'Ultricies Corporation','308-761 Non Street'),(98,'Nunc Foundation','4566 Sed Road'),(99,'Aliquam Adipiscing Lobortis Incorporated','753-3528 Nulla Ave'),(100,'In LLC','P.O. Box 420, 3661 Ut, Avenue');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL,
  `completed` tinyint DEFAULT NULL,
  `student_student_id` int NOT NULL,
  `driver_driver_id` int NOT NULL,
  `driver_student_student_id` int NOT NULL,
  `faculty_faculty_id` int NOT NULL,
  `location_location_id` int NOT NULL,
  `restaurant_restaurant_id` int NOT NULL,
  PRIMARY KEY (`order_id`,`student_student_id`,`driver_driver_id`,`driver_student_student_id`,`faculty_faculty_id`,`location_location_id`,`restaurant_restaurant_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  KEY `fk_order_student_idx` (`student_student_id`),
  KEY `fk_order_driver1_idx` (`driver_driver_id`,`driver_student_student_id`),
  KEY `fk_order_faculty1_idx` (`faculty_faculty_id`),
  KEY `fk_order_location1_idx` (`location_location_id`),
  KEY `fk_order_restaurant1_idx` (`restaurant_restaurant_id`),
  CONSTRAINT `fk_order_driver1` FOREIGN KEY (`driver_driver_id`, `driver_student_student_id`) REFERENCES `driver` (`driver_id`, `student_student_id`),
  CONSTRAINT `fk_order_faculty1` FOREIGN KEY (`faculty_faculty_id`) REFERENCES `faculty` (`faculty_id`),
  CONSTRAINT `fk_order_location1` FOREIGN KEY (`location_location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_order_restaurant1` FOREIGN KEY (`restaurant_restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `fk_order_student` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,0,1,1,1,1,1,1),(2,1,2,2,2,2,2,2),(3,0,3,3,3,3,3,3),(4,1,4,4,4,4,4,4),(5,0,5,5,5,5,5,5),(6,1,6,6,6,6,6,6),(7,0,7,7,7,7,7,7),(8,1,8,8,8,8,8,8),(9,0,9,9,9,9,9,9),(10,1,10,10,10,10,10,10),(11,0,11,11,11,11,11,11),(12,0,12,12,12,12,12,12),(13,1,13,13,13,13,13,13),(14,0,14,14,14,14,14,14),(15,0,15,15,15,15,15,15),(16,0,16,16,16,16,16,16),(17,0,17,17,17,17,17,17),(18,0,18,18,18,18,18,18),(19,1,19,19,19,19,19,19),(20,0,20,20,20,20,20,20),(21,1,21,21,21,21,21,21),(22,1,22,22,22,22,22,22),(23,0,23,23,23,23,23,23),(24,0,24,24,24,24,24,24),(25,0,25,25,25,25,25,25),(26,1,26,26,26,26,26,26),(27,1,27,27,27,27,27,27),(28,1,28,28,28,28,28,28),(29,1,29,29,29,29,29,29),(30,0,30,30,30,30,30,30),(31,0,31,31,31,31,31,31),(32,1,32,32,32,32,32,32),(33,1,33,33,33,33,33,33),(34,0,34,34,34,34,34,34),(35,0,35,35,35,35,35,35),(36,0,36,36,36,36,36,36),(37,1,37,37,37,37,37,37),(38,0,38,38,38,38,38,38),(39,0,39,39,39,39,39,39),(40,1,40,40,40,40,40,40),(41,0,41,41,41,41,41,41),(42,0,42,42,42,42,42,42),(43,1,43,43,43,43,43,43),(44,1,44,44,44,44,44,44),(45,0,45,45,45,45,45,45),(46,0,46,46,46,46,46,46),(47,0,47,47,47,47,47,47),(48,0,48,48,48,48,48,48),(49,0,49,49,49,49,49,49),(50,0,50,50,50,50,50,50);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL,
  `res_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE KEY `restaurant_id_UNIQUE` (`restaurant_id`),
  UNIQUE KEY `address_UNIQUE` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Henry G. Baker','P.O. Box 454, 7355 Parturient Av.'),(2,'Owen J. Stokes','P.O. Box 118, 7188 Bibendum Avenue'),(3,'Raya Y. Lancaster','9919 Lorem, Avenue'),(4,'Kasper P. Sanders','5371 Ultrices, Street'),(5,'Yen H. Hester','4576 Et Av.'),(6,'Quintessa B. Irwin','Ap #310-328 Id, Rd.'),(7,'Preston W. Lang','Ap #406-692 Justo Ave'),(8,'Courtney W. Puckett','735-3642 Fusce Ave'),(9,'Moana M. Pierce','P.O. Box 763, 7102 Urna Road'),(10,'Aaron A. Foreman','Ap #285-1460 Vitae, Avenue'),(11,'Andrew Z. Cox','531-2606 Duis Ave'),(12,'Troy K. Whitehead','6075 Pellentesque Avenue'),(13,'Breanna P. Tanner','Ap #943-922 Dui, Avenue'),(14,'Zena J. Munoz','2307 Nec, Ave'),(15,'Serina B. Slater','Ap #987-8770 Cras St.'),(16,'Nicholas D. Wade','P.O. Box 373, 4862 Enim. Av.'),(17,'Macaulay Z. Hunt','271-2372 Vivamus Road'),(18,'Wing D. Guerrero','P.O. Box 550, 5012 Dui Rd.'),(19,'Jeremy P. Valencia','P.O. Box 521, 2243 Pede, Road'),(20,'Jolie D. Villarreal','590-7395 Cum Avenue'),(21,'Hedley K. Emerson','419-6937 Pellentesque Rd.'),(22,'Tatum W. Herring','Ap #563-4938 Semper Rd.'),(23,'Azalia S. Wiley','P.O. Box 788, 5165 Quis Av.'),(24,'Adara N. Whitehead','Ap #578-2722 Eleifend. Rd.'),(25,'Ingrid L. Brady','605-8484 Magna. Avenue'),(26,'Octavius B. Estes','Ap #324-525 Aliquam Street'),(27,'Neve Y. Bishop','Ap #642-9147 Parturient Street'),(28,'Sydney P. Gay','422-7910 Aliquet Road'),(29,'Jolene F. Bowen','Ap #982-5083 Ipsum. St.'),(30,'Jaquelyn H. Franco','P.O. Box 553, 6273 Urna St.'),(31,'Kevin B. Schmidt','655-3309 Donec Ave'),(32,'Thor M. Harris','935-5153 Lacus. St.'),(33,'Serena I. Aguirre','Ap #767-8015 Sagittis Road'),(34,'Scarlet F. Larson','771-4099 Interdum St.'),(35,'Nasim M. Dillon','Ap #698-862 Velit Ave'),(36,'Jermaine J. Lloyd','P.O. Box 990, 1871 Leo. St.'),(37,'Tate W. Berger','P.O. Box 178, 3224 Dictum Rd.'),(38,'Madeson W. Ratliff','P.O. Box 845, 9191 Eget Rd.'),(39,'Benedict D. Rivera','Ap #174-7635 Sem Street'),(40,'Caleb U. Stein','603-3715 Vivamus St.'),(41,'Brock U. Vaughn','Ap #904-7437 Nulla Street'),(42,'Liberty E. Newman','P.O. Box 117, 4440 Ridiculus Ave'),(43,'Brennan C. Bauer','P.O. Box 352, 5058 Tristique St.'),(44,'Cody G. Mathews','Ap #777-301 Rhoncus Av.'),(45,'Allen X. Heath','Ap #887-1672 Ornare Road'),(46,'Ivan T. Fields','9817 Lacinia. Avenue'),(47,'Hadley M. Smith','3484 Primis Rd.'),(48,'Bethany A. Ellis','Ap #829-1441 Sit Rd.'),(49,'Alexander T. Wilkinson','1148 Nonummy. Rd.'),(50,'Inez A. Clark','665-9228 Interdum Rd.'),(51,'Yael Z. Paul','Ap #595-3258 Quis Road'),(52,'Shannon O. Singleton','Ap #906-6191 Mauris St.'),(53,'Jonah P. Bush','3970 Ut Rd.'),(54,'Karen B. York','788-5490 Augue Street'),(55,'Valentine D. Sellers','P.O. Box 236, 4460 Tempor Av.'),(56,'Noelani P. Garza','P.O. Box 156, 2042 Sit Av.'),(57,'Heather O. Sawyer','P.O. Box 184, 8007 Sem. Street'),(58,'Kaitlin D. Parsons','Ap #693-6881 Tempor Ave'),(59,'Jonas X. Graham','P.O. Box 171, 8708 Feugiat. St.'),(60,'Regina V. Contreras','9914 Enim. Ave'),(61,'Vance R. Barker','880-305 Litora Av.'),(62,'Belle L. Parrish','8153 Nec St.'),(63,'Brandon E. Curry','504-3654 Pede, Av.'),(64,'Kato F. Buck','164-1114 Cursus Av.'),(65,'Austin V. Banks','Ap #906-3347 Arcu. Rd.'),(66,'Sage P. Hayes','P.O. Box 217, 4275 Eget Ave'),(67,'Murphy Q. Chaney','P.O. Box 191, 4969 Ante. Rd.'),(68,'Moses L. Mccullough','4355 Quam. Road'),(69,'Rosalyn R. Parker','5335 Fringilla Rd.'),(70,'Erasmus E. Hale','8806 Amet St.'),(71,'Chastity A. Garner','201-1719 Sit Av.'),(72,'Oliver U. Gardner','P.O. Box 372, 1219 Turpis. St.'),(73,'Zenia E. Houston','579-929 Facilisi. Avenue'),(74,'Marshall T. Patterson','Ap #334-8552 Nibh Rd.'),(75,'Chandler C. Atkins','Ap #689-8052 Non St.'),(76,'Jenna V. Lancaster','403-6456 Quam Ave'),(77,'Shana O. Hampton','5278 Sem Road'),(78,'Josephine K. Sanford','2205 Interdum Ave'),(79,'Ayanna P. Randall','423-4285 Fringilla Rd.'),(80,'Claudia E. Hinton','3992 Molestie Rd.'),(81,'Veda Y. Blair','121-5393 Facilisis Rd.'),(82,'Maryam P. Marks','374-7903 Fames Ave'),(83,'Joelle Q. Rhodes','Ap #760-714 Tempus St.'),(84,'Aimee Q. Parks','Ap #176-9538 Gravida Road'),(85,'Jaime Q. Chavez','P.O. Box 346, 4699 Libero Road'),(86,'Randall Q. Fitzpatrick','437-7090 Vitae, Avenue'),(87,'Kareem E. Cardenas','P.O. Box 974, 8598 Enim. Street'),(88,'Alden K. Hoffman','4175 Lorem Road'),(89,'Helen W. Flores','1005 Non, Street'),(90,'Cyrus H. Myers','6945 Bibendum Ave'),(91,'Neil T. Salinas','P.O. Box 102, 2681 Euismod Ave'),(92,'Ora Z. Washington','P.O. Box 371, 4908 Et, Rd.'),(93,'Jameson X. Wheeler','344-3757 Faucibus Av.'),(94,'Valentine X. Henry','355-9259 Duis Rd.'),(95,'Porter P. Rodgers','1319 Risus St.'),(96,'Brianna W. Rodriguez','P.O. Box 103, 1667 Suspendisse Av.'),(97,'Kimberley Z. Humphrey','P.O. Box 214, 7182 Mauris Rd.'),(98,'Dakota C. Estes','P.O. Box 457, 5351 Sem, Rd.'),(99,'Stone C. Brock','Ap #797-3172 Ante. St.'),(100,'MacKensie K. Dixon','4029 Euismod Av.');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `academic_year` varchar(45) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Allegra','9191111234','diam.vel.arcu@utpellentesque.ca','2021','Enim Suspendisse Aliquet PC'),(2,'Cameran','9191111235','lobortis@elitafeugiat.com','2017','Curabitur Ut Industries'),(3,'Pamela','9191111236','scelerisque.lorem@amagnaLorem.ca','2017','Nec Mollis Vitae Associates'),(4,'Mollie','9191111237','elit.pretium.et@Integeraliquam.ca','2018','Odio Etiam Ligula Industries'),(5,'Leandra','9191111238','neque@etpedeNunc.com','2019','Vulputate Mauris Institute'),(6,'Arden','9191111239','velit.eu.sem@Aliquamnisl.edu','2017','A Ltd'),(7,'Nolan','9191111240','tortor.Integer.aliquam@miac.co.uk','2021','Suspendisse Inc.'),(8,'Blossom','9191111241','ipsum.dolor.sit@nisi.org','2021','At Risus Nunc Ltd'),(9,'Dante','9191111242','ante@Donecdignissim.org','2021','Nisi A Industries'),(10,'Portia','9191111243','odio.vel@enim.ca','2021','Lacus Aliquam Rutrum Foundation'),(11,'Scarlet','9191111244','montes@et.org','2018','Non Dapibus LLP'),(12,'Tarik','9191111245','Morbi@Donecdignissimmagna.edu','2019','Orci Sem Incorporated'),(13,'Wallace','9191111246','aliquet.libero.Integer@ornareInfaucibus.org','2020','Tempor LLP'),(14,'Halee','9191111247','auctor.velit@odioapurus.org','2021','Praesent Luctus Curabitur Ltd'),(15,'Mia','9191111248','libero.Proin.sed@rutrummagnaCras.ca','2021','Non Justo Foundation'),(16,'Nita','9191111249','turpis.Nulla@dictum.co.uk','2017','Sem Ut Dolor Corp.'),(17,'Fleur','9191111250','velit.eget.laoreet@Donec.edu','2018','Mollis Company'),(18,'Benedict','9191111251','eu@miac.net','2017','Velit Quisque Varius Corp.'),(19,'Josiah','9191111252','dictum.eleifend@velmauris.co.uk','2021','Tempor Lorem Corporation'),(20,'Hollee','9191111253','montes@sollicitudin.ca','2018','Nulla Donec Non Ltd'),(21,'Brielle','9191111254','Nullam.feugiat@ut.com','2019','Et Tristique Pellentesque Industries'),(22,'Illiana','9191111255','lectus@massa.ca','2019','Mi Enim Condimentum Limited'),(23,'Lee','9191111256','justo.sit.amet@morbitristique.com','2019','Sodales Purus In Associates'),(24,'Fay','9191111257','et@ategestas.com','2021','Scelerisque Scelerisque Ltd'),(25,'Alexandra','9191111258','id.ante@sitamet.edu','2019','Dapibus LLP'),(26,'Constance','9191111259','id.ante@ac.org','2018','Integer Mollis Integer Associates'),(27,'Deborah','9191111260','pede.Suspendisse.dui@utsemNulla.org','2018','Cras Eu Corporation'),(28,'Orlando','9191111261','augue@enimMaurisquis.co.uk','2017','Amet Diam LLC'),(29,'Oscar','9191111262','ut.nulla@lectussitamet.ca','2017','Nascetur Ridiculus Limited'),(30,'Xaviera','9191111263','ante.Nunc@Fuscealiquet.ca','2017','Eget Dictum Corp.'),(31,'Chloe','9191111264','eu.odio@ligulaconsectetuer.com','2019','Non Magna Nam Consulting'),(32,'Ocean','9191111265','euismod@ipsum.net','2021','Turpis PC'),(33,'Jerome','9191111266','Praesent@porttitor.ca','2019','Mollis Ltd'),(34,'Ralph','9191111267','aliquet@metuseuerat.net','2017','Auctor Vitae Aliquet Limited'),(35,'Aphrodite','9191111268','Donec.vitae@tellus.org','2018','Velit LLP'),(36,'Lacota','9191111269','consequat@risusvarius.co.uk','2021','Aliquet Libero Integer Foundation'),(37,'Urielle','9191111270','cursus.a.enim@Curabiturdictum.co.uk','2020','Proin Sed Turpis Ltd'),(38,'Nasim','9191111271','pretium.aliquet.metus@parturient.co.uk','2020','Nunc Corp.'),(39,'Lara','9191111272','tempor.erat.neque@vulputateeuodio.co.uk','2020','Nec Company'),(40,'Mikayla','9191111273','ipsum.leo.elementum@ultriciesdignissim.org','2019','Egestas Blandit Foundation'),(41,'Jena','9191111274','eu@Uttincidunt.edu','2019','Quis PC'),(42,'Alfonso','9191111275','dapibus.quam.quis@lectus.com','2017','Pede Suspendisse Dui Foundation'),(43,'Kameko','9191111276','urna.Vivamus.molestie@Duis.org','2020','Arcu Iaculis Enim LLC'),(44,'Caleb','9191111277','et@sociis.org','2019','Non Ltd'),(45,'Evelyn','9191111278','Nunc.mauris@lobortismauris.ca','2019','Maecenas Ornare Institute'),(46,'Deacon','9191111279','Fusce.mi.lorem@rhoncusidmollis.net','2020','Lectus Sit Amet Institute'),(47,'Casey','9191111280','dolor.Fusce@velvulputate.ca','2021','Nulla Eget Metus LLC'),(48,'Donna','9191111281','tempus.non.lacinia@montes.org','2020','Quam Curabitur Vel LLP'),(49,'Kylynn','9191111282','Proin.dolor@consectetuer.edu','2018','Dolor Limited'),(50,'Ryder','9191111283','felis.adipiscing@est.org','2017','Aliquam Nec Company'),(51,'Neville','9191111284','nulla.Cras.eu@vulputate.edu','2019','Mauris Suspendisse Ltd'),(52,'Magee','9191111285','dictum.augue@tristiqueaceleifend.net','2019','Cum LLP'),(53,'Stacy','9191111286','arcu@Nullamnisl.com','2018','Arcu Eu Odio PC'),(54,'Geraldine','9191111287','erat.volutpat@Duis.net','2020','Dolor Inc.'),(55,'Charles','9191111288','tincidunt@cursuspurusNullam.edu','2019','Dictum Eu Industries'),(56,'Macon','9191111289','purus.gravida.sagittis@molestie.com','2021','Est Arcu Company'),(57,'Joy','9191111290','ullamcorper.magna.Sed@variusultrices.com','2020','Mattis Industries'),(58,'Kaseem','9191111291','sociis.natoque@dapibusligulaAliquam.edu','2019','Mauris Sapien Inc.'),(59,'Hyatt','9191111292','orci.Donec.nibh@auctorvitaealiquet.org','2020','Duis Risus Odio Associates'),(60,'Joelle','9191111293','Vestibulum.ut.eros@mus.org','2017','Nam Company'),(61,'Nelle','9191111294','vitae.risus.Duis@facilisismagna.org','2019','Metus In Nec LLC'),(62,'Kenneth','9191111295','dui.in@Maurisnon.net','2020','Dolor Sit Corp.'),(63,'Benedict','9191111296','quam.dignissim@ultrices.edu','2020','Ac Risus Morbi Foundation'),(64,'Kelly','9191111297','blandit@Sed.ca','2018','Mus Donec Dignissim Corp.'),(65,'Christen','9191111298','dis.parturient.montes@velarcueu.com','2018','Orci Quis Lectus Associates'),(66,'Rebecca','9191111299','vel.turpis.Aliquam@rhoncus.com','2020','Nulla Facilisi Ltd'),(67,'Winter','9191111300','luctus.ipsum.leo@neque.org','2019','Parturient Corporation'),(68,'Wyatt','9191111301','et.magnis.dis@etultricesposuere.com','2019','Eu Euismod Consulting'),(69,'Debra','9191111302','eu.dolor@tinciduntnibh.ca','2019','Nunc Ullamcorper Incorporated'),(70,'Nolan','9191111303','nostra@duiin.com','2021','Felis Orci Adipiscing LLP'),(71,'Zeph','9191111304','neque.In@vehicula.net','2020','Eu Industries'),(72,'Dawn','9191111305','eu@auguemalesuada.org','2021','Adipiscing Elit Etiam Industries'),(73,'Yvonne','9191111306','nec@dictumeuplacerat.ca','2018','Quisque Ornare Consulting'),(74,'Berk','9191111307','et.magnis@tortorNunc.net','2018','Elit Curabitur LLP'),(75,'Xena','9191111308','tortor.dictum.eu@commodo.co.uk','2017','Molestie Tortor Nibh Company'),(76,'Camden','9191111309','convallis@portaelita.org','2020','Turpis In Condimentum Limited'),(77,'Morgan','9191111310','Ut.nec@Pellentesquehabitant.co.uk','2021','Ac Nulla Institute'),(78,'Malik','9191111311','erat@velitegestas.ca','2017','Quis Tristique Ac Corp.'),(79,'Noelani','9191111312','rutrum.Fusce.dolor@orcitinciduntadipiscing.ca','2017','Aenean Corp.'),(80,'Erin','9191111313','erat.nonummy@cubiliaCurae.com','2019','At Institute'),(81,'Kadeem','9191111314','eu@Proinnislsem.co.uk','2017','Adipiscing Elit Curabitur Industries'),(82,'Freya','9191111315','adipiscing.enim.mi@interdum.edu','2021','In Institute'),(83,'Shelby','9191111316','varius.Nam@maurisaliquam.edu','2020','Mattis Industries'),(84,'Candace','9191111317','et.netus@loremvitae.co.uk','2018','At Pede LLC'),(85,'April','9191111318','ut.mi.Duis@sagittissemper.com','2017','Non Consulting'),(86,'Roary','9191111319','eu@in.edu','2018','Feugiat Institute'),(87,'Serina','9191111320','sed@dignissim.org','2017','Proin Dolor Nulla Corp.'),(88,'Ivan','9191111321','ante.ipsum@diamdictumsapien.co.uk','2021','Purus Limited'),(89,'Doris','9191111322','quis@tristiquepellentesquetellus.com','2020','Blandit Congue In Corp.'),(90,'Vivien','9191111323','sit.amet.dapibus@adipiscingelitEtiam.ca','2019','Interdum Limited'),(91,'Eagan','9191111324','Integer@tinciduntduiaugue.co.uk','2021','Sit Amet Metus Company'),(92,'Amanda','9191111325','eu.odio.Phasellus@Donec.edu','2017','Quam A Felis Foundation'),(93,'Thor','9191111326','accumsan.interdum@estNunc.edu','2018','Lectus Sit Associates'),(94,'Tatyana','9191111327','libero@elementumat.co.uk','2020','Sed Dictum Corp.'),(95,'Chancellor','9191111328','libero.Donec.consectetuer@diamDuis.edu','2017','Orci Inc.'),(96,'Jacqueline','9191111329','at@ProinultricesDuis.edu','2021','Blandit Viverra Incorporated'),(97,'Gail','9191111330','adipiscing@mollisDuis.org','2021','Lectus A Inc.'),(98,'Imogene','9191111331','tincidunt.vehicula.risus@nequeMorbi.edu','2018','Lorem Associates'),(99,'Ainsley','9191111332','Integer.mollis.Integer@neque.edu','2021','Morbi Vehicula Pellentesque Consulting'),(100,'Omar','9191111333','pellentesque.eget@urnaUttincidunt.com','2019','Et Rutrum Company');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-12 20:38:58
