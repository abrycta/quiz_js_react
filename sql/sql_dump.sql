-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: new_quiz
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `access_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) NOT NULL,
  `act_id` int(11) NOT NULL,
  `date_open` datetime DEFAULT NULL,
  `date_taken` datetime DEFAULT NULL,
  PRIMARY KEY (`access_id`),
  KEY `access_student_id_fk` (`stud_id`),
  KEY `access_activity_id_fk` (`act_id`),
  CONSTRAINT `access_activity_id_fk` FOREIGN KEY (`act_id`) REFERENCES `activity` (`id`),
  CONSTRAINT `access_student_id_fk` FOREIGN KEY (`stud_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qst_mlt_choice`
--

DROP TABLE IF EXISTS `qst_mlt_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qst_mlt_choice` (
  `qst_id` int(11) NOT NULL,
  `choice_index` int(11) NOT NULL,
  `choice_str` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qst_id`,`choice_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qst_mlt_choice`
--

LOCK TABLES `qst_mlt_choice` WRITE;
/*!40000 ALTER TABLE `qst_mlt_choice` DISABLE KEYS */;
INSERT INTO `qst_mlt_choice` VALUES (1,1,'Wizard of oz'),(1,2,'Paper'),(1,3,'Documentation'),(1,4,'Mockup'),(2,1,'Distribution'),(2,2,'Error Handling'),(2,3,'Interface'),(2,4,'Persistence of Data'),(3,1,'Interface design'),(3,2,'Algorithm Design'),(3,3,'Data Design'),(3,4,'Integration Design'),(4,1,'Architectural Design'),(4,2,'Component Design'),(4,3,'Software Design'),(4,4,'Interface Design'),(5,1,'Architectural design'),(5,2,'Component design'),(5,3,'Software'),(5,4,'Interface design'),(6,1,'Layered'),(6,2,'Repository'),(6,3,'Pipe and filter'),(6,4,'Blackboard'),(7,1,'Layered'),(7,2,'Repository'),(7,3,'Pipe and filter'),(7,4,'Blackboard'),(8,1,'Layered'),(8,2,'Repository'),(8,3,'Pipe and filter'),(8,4,'Blackboard'),(9,1,'Cloud computing'),(9,2,'Grid computing'),(9,3,'Cluster computing'),(9,4,'Peer to peer'),(10,1,'CORBA'),(10,2,'RPC'),(10,3,'SOA'),(10,4,'REST'),(11,1,'Interface design'),(11,2,'Data design'),(11,3,'Algorithm design'),(11,4,'Architectural design'),(12,1,'Behavioral Patterns'),(12,2,'Structural Patterns'),(12,3,'Functional Patterns'),(12,4,'Creational Patterns');
/*!40000 ALTER TABLE `qst_mlt_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ans_mtc`
--

DROP TABLE IF EXISTS `ans_mtc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ans_mtc` (
  `ans_id` int(11) NOT NULL AUTO_INCREMENT,
  `mtc_id` int(11) NOT NULL,
  `left_index` int(11) NOT NULL,
  `right_index` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  PRIMARY KEY (`ans_id`),
  KEY `ans_mtc_qst_mtc_mtc_id_fk` (`mtc_id`),
  KEY `ans_mtc_student_id_fk` (`stud_id`),
  CONSTRAINT `ans_mtc_qst_mtc_mtc_id_fk` FOREIGN KEY (`mtc_id`) REFERENCES `qst_mtc` (`mtc_id`),
  CONSTRAINT `ans_mtc_student_id_fk` FOREIGN KEY (`stud_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ans_mtc`
--

LOCK TABLES `ans_mtc` WRITE;
/*!40000 ALTER TABLE `ans_mtc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ans_mtc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qst_mtc`
--

DROP TABLE IF EXISTS `qst_mtc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qst_mtc` (
  `mtc_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_id` int(11) NOT NULL,
  PRIMARY KEY (`mtc_id`),
  KEY `qst_mtc_activity_id_fk` (`act_id`),
  CONSTRAINT `qst_mtc_activity_id_fk` FOREIGN KEY (`act_id`) REFERENCES `activity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qst_mtc`
--

LOCK TABLES `qst_mtc` WRITE;
/*!40000 ALTER TABLE `qst_mtc` DISABLE KEYS */;
INSERT INTO `qst_mtc` VALUES (1,1);
/*!40000 ALTER TABLE `qst_mtc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qst_mlt`
--

DROP TABLE IF EXISTS `qst_mlt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qst_mlt` (
  `qst_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_id` int(11) DEFAULT NULL,
  `qst_index` int(11) DEFAULT NULL,
  `qst_str` varchar(255) DEFAULT NULL,
  `ans_str` varchar(255) DEFAULT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`qst_id`),
  KEY `qst_mlt_activity_id_fk` (`act_id`),
  CONSTRAINT `qst_mlt_activity_id_fk` FOREIGN KEY (`act_id`) REFERENCES `activity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qst_mlt`
--

LOCK TABLES `qst_mlt` WRITE;
/*!40000 ALTER TABLE `qst_mlt` DISABLE KEYS */;
INSERT INTO `qst_mlt` VALUES (1,1,1,'Which is not a type of prototyping?','Documentation',2),(2,1,2,'Which is not a key design issue?','Interface',2),(3,1,3,'Which is not a design process?','Integration Design',2),(4,1,4,'Iterative process through which requirements are translated into a \"blueprint\"','Software Design',2),(5,1,5,'Establishes a basic structural that identifies the major components of system and the communnication among these components','Architectural Design',2),(6,1,6,'A component reads streams of data on its inputs and procudes streams of data on its outputs, delivering a complete instance of the result in a standard order.','Pipe and Filter',2),(7,1,7,'Consists of a central data store and a set of independent components that access the data store.','Repository',2),(8,1,8,'Organizes a system into layers','Layered',2),(9,1,9,'Technique of linking two or more computers into a network (usually via a LAN) in order to take advantage of the parallel processing power of those computers.','Cluster Computing',2),(10,1,10,'Makes applications easily adapt to changing technologies and integrate with other applications.','SOA',2),(11,1,11,'Describes how the software communicates within itself','Interface Design',2),(12,1,12,'Which is not a type of GoF Pattern?','Functional Patterns',2);
/*!40000 ALTER TABLE `qst_mlt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'Software Engineering');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Kurt Matthew','Nudo'),(2,'Charles','Ancheta'),(3,'Jerome','Bustarde');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qst_idn`
--

DROP TABLE IF EXISTS `qst_idn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qst_idn` (
  `qst_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_id` int(11) NOT NULL,
  `qst_index` int(11) NOT NULL,
  `qst_str` varchar(255) NOT NULL,
  `ans_str` varchar(255) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`qst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qst_idn`
--

LOCK TABLES `qst_idn` WRITE;
/*!40000 ALTER TABLE `qst_idn` DISABLE KEYS */;
INSERT INTO `qst_idn` VALUES (1,1,1,'Description of what services that system is expected to provide and the constraints it must operate','User requirements',3),(2,1,2,'Detailed information about the system functions, services and operational constraints that are to be implemented.','System requirements',3),(3,1,3,'Statements of the services that a system should provide, how the system should react to particular input and how the system should behave in particular situations','Functional requirements',3),(4,1,4,'Constraints (timing, performance, reliability, development process, standards) on the services or functions offered by the system; normally apply to the system as a whole.','Non-Functional requirements',3),(5,1,5,'Creation of a simple working model of system to show users what requirements may look like when implemented.','Throwaway prototyping',3),(6,1,6,'Its main goal is to build a very robust prototype in a structured manner and constantly refine it.','Evolutionary prototyping',3),(7,1,7,'Way of structuring requirements to represent perspectives of different stakeholders.','Viewpoints',3),(8,1,8,'Graphical representations that describe the business process and the system to be developed.','Analysis models',3),(9,1,9,'Official statement of system requirements.','Software Requirements Specification',3),(10,1,10,'Defines a generic structure for a requirements document','Institute of Electrical and Electronics Engineers',3),(11,1,11,'Assessment of the quality of the requirements','Requirements Validation',3),(12,1,12,'Process of identifying, understanding, tracking and controlling changes to system requirements.','Requirements Management',3),(13,1,13,'Stakeholders who influence the requiements','Indirect viewpoint',3),(14,1,14,'People or systems that interact directly with the system','Interactor viewpoint',3),(15,1,15,'Domain characteristics and constraints that influence the requirements','Domain viewpoint',3);
/*!40000 ALTER TABLE `qst_idn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ans_idn`
--

DROP TABLE IF EXISTS `ans_idn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ans_idn` (
  `ans_id` int(11) NOT NULL AUTO_INCREMENT,
  `qst_id` int(11) DEFAULT NULL,
  `stud_id` int(11) NOT NULL,
  `ans_str` int(11) NOT NULL,
  PRIMARY KEY (`ans_id`),
  KEY `ans_idn_qst_idn_qst_id_fk` (`qst_id`),
  KEY `ans_idn_student_id_fk` (`stud_id`),
  CONSTRAINT `ans_idn_qst_idn_qst_id_fk` FOREIGN KEY (`qst_id`) REFERENCES `qst_idn` (`qst_id`),
  CONSTRAINT `ans_idn_student_id_fk` FOREIGN KEY (`stud_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ans_idn`
--

LOCK TABLES `ans_idn` WRITE;
/*!40000 ALTER TABLE `ans_idn` DISABLE KEYS */;
/*!40000 ALTER TABLE `ans_idn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `idn_score` int(11) DEFAULT NULL,
  `mlt_score` int(11) DEFAULT NULL,
  `mtc_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qst_mtc_left_col`
--

DROP TABLE IF EXISTS `qst_mtc_left_col`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qst_mtc_left_col` (
  `mtc_id` int(11) NOT NULL,
  `left_index` int(11) NOT NULL,
  `qst_str` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`mtc_id`,`left_index`),
  CONSTRAINT `qst_mtc_left_col_qst_mtc_mtc_id_fk` FOREIGN KEY (`mtc_id`) REFERENCES `qst_mtc` (`mtc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qst_mtc_left_col`
--

LOCK TABLES `qst_mtc_left_col` WRITE;
/*!40000 ALTER TABLE `qst_mtc_left_col` DISABLE KEYS */;
INSERT INTO `qst_mtc_left_col` VALUES (1,1,'Factory for building objects','Abstract Factory',2),(1,2,'Used for the construction of complex objects.','Builder',2),(1,3,'Defines an interface for creating an object.','Factory method',2),(1,4,'Factory for cloning new instances from a prototype.','Prototype',2),(1,5,'Factory for a singular (sole) instance','Singleton',2),(1,6,'Converts the interface of a class into another interface client expect','Adapter',2),(1,7,'Decouple an abstraction from its implementation','Bridge',2),(1,8,'Compose objects into tree structures; operations apply to the (sub)tree','Composite',2),(1,9,'Attach dditional responsibilities to an object dynamically','Decorator',2),(1,10,'Provides a unified higher-level interface for subsystems','Facade',2),(1,11,'Use-sharing to support lage numbers of fine-grained objects efficiently.','Flyweight',2),(1,12,'Provides a placeholder for an object in order to contorl access to it.','Proxy',2),(1,13,'Request is delegated to the responsible service provided','Chain of Responsibility',2),(1,14,'Request or action as an object, which can be passed, stored or activated.','Command',2),(1,15,'Allows sequential access to the elements of an aggregate without exposing its implementation','Iterator',2),(1,16,'Language interpreter for a small grammar.','Interpreter',2),(1,17,'Defines an object that encapsulates how a set of objects interact and cordinate.','Mediator',2),(1,18,'Snapshot captues and externalize an object\'s internal state so that it can be passed or restored to its state at a later time.','Memento',2),(1,19,'Dependencies are defined to an object, so that all dependents update automatically.','Observer',2),(1,20,'Object whose behavior depends on its internal state','State',2),(1,21,'Defines a set of algorithms','Strategy',2),(1,22,'Lets subclasses redefine some steps of an algorithm.','Template method',2),(1,23,'Represent oeprations applied to elements of an object structure.','Visitor',2);
/*!40000 ALTER TABLE `qst_mtc_left_col` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qst_mtc_right_col`
--

DROP TABLE IF EXISTS `qst_mtc_right_col`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qst_mtc_right_col` (
  `mtc_id` int(11) NOT NULL,
  `right_index` int(11) NOT NULL,
  `ans_str` varchar(255) NOT NULL,
  PRIMARY KEY (`mtc_id`,`right_index`),
  CONSTRAINT `table_name_qst_mtc_mtc_id_fk` FOREIGN KEY (`mtc_id`) REFERENCES `qst_mtc` (`mtc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qst_mtc_right_col`
--

LOCK TABLES `qst_mtc_right_col` WRITE;
/*!40000 ALTER TABLE `qst_mtc_right_col` DISABLE KEYS */;
INSERT INTO `qst_mtc_right_col` VALUES (1,1,'Abstract Factory'),(1,2,'Builder'),(1,3,'Factory Method'),(1,4,'Prototype'),(1,5,'Singleton'),(1,6,'Adapter'),(1,7,'Bridge'),(1,8,'Composite'),(1,9,'Decorator'),(1,10,'Facade'),(1,11,'Flyweight'),(1,12,'Proxy'),(1,13,'Chain of Responsibility'),(1,14,'Command'),(1,15,'Iterator'),(1,16,'Interpreter'),(1,17,'Mediator'),(1,18,'Memento'),(1,19,'Observer'),(1,20,'State'),(1,21,'Strategy'),(1,22,'Template Method'),(1,23,'Visitor');
/*!40000 ALTER TABLE `qst_mtc_right_col` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ans_mlt`
--

DROP TABLE IF EXISTS `ans_mlt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ans_mlt` (
  `qst_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) NOT NULL,
  `choice_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`qst_id`,`stud_id`),
  UNIQUE KEY `qst_id` (`qst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ans_mlt`
--

LOCK TABLES `ans_mlt` WRITE;
/*!40000 ALTER TABLE `ans_mlt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ans_mlt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-08 15:21:39
