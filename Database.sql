   Database: employee_management
-- ------------------------------------------------------
 SET NAMES utf8 ;
 SET character_set_client = utf8mb4 ;

-- Table structure for table `emp_info`

DROP TABLE IF EXISTS `emp_info`;


CREATE TABLE `emp_info` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `phone` double NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `emp_info` VALUES (1,'revati@amdocs.com','9284352678','Female','Pune');
INSERT INTO `emp_info` VALUES(2,'anshika@amdocs.com','8434005429','Female','Mumbai');
INSERT INTO `emp_info` VALUES(3,'tanvi@amdocs.com','7030655683','Female','Pune');
INSERT INTO `emp_info` VALUES(4,'naina@amdocs.com','9356686725','Female','Bangalore');
INSERT INTO `emp_info` VALUES(5,'swamini@amdocs.com','9028541519','Female','Hyderabad');
INSERT INTO `emp_info` VALUES(6,'akshay@amdocs.com','8956440066','Male','Pune');
INSERT INTO `emp_info` VALUES(7,'sanya@amdocs.com','8856687825','Female','Mumbai');
INSERT INTO `emp_info` VALUES(8,'prateek@amdocs.com','9956086779','Male','Mumbai');
INSERT INTO `emp_info` VALUES(9,'raj@amdocs.com','9344486435','Male','Hyderabad');
INSERT INTO `emp_info` VALUES(10,'amey@amdocs.com','8977686700','Male','Bangalore');
INSERT INTO `emp_info` VALUES(11,'vaishnavi@amdocs.com','7782351920','Female','Pune');
INSERT INTO `emp_info` VALUES(12,'soham@amdocs.com','8829351628','Male','Bangalore');
INSERT INTO `emp_info` VALUES(13,'sonali@amdocs.com','9812346536','Female','Hyderabad');
INSERT INTO `emp_info` VALUES(14,'nilesh@amdocs.com','7263547283','Male','Pune');
INSERT INTO `emp_info` VALUES(15,'neha@amdocs.com','8274629103','Female','Bangalore');
INSERT INTO `emp_info` VALUES(16,'anand@amdocs.com','9283929374','Male','Mumbai');
INSERT INTO `emp_info` VALUES(17,'pranav@amdocs.com','8293746322','Male','Hyderabad');
INSERT INTO `emp_info` VALUES(18,'reshma@amdocs.com','9820837472','Female','Bangalore');
INSERT INTO `emp_info` VALUES(19,'rishi@amdocs.com','8291399373','Male','Hyderabad');
INSERT INTO `emp_info` VALUES(20,'sujay@amdocs.com','9287372999','Male','Bangalore');


--
-- Table structure for table `emp_credentials`
--

CREATE TABLE `emp_credentials` (
  `emp_id` int NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `fk_emp_credentials` FOREIGN KEY (`emp_id`) REFERENCES `emp_info` (`emp_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `emp_credentials` VALUES(1,'rev9284');
INSERT INTO `emp_credentials` VALUES(2,'ans8434');
INSERT INTO `emp_credentials` VALUES (3,'tan7030');
INSERT INTO `emp_credentials` VALUES (4,'nai9356');
INSERT INTO `emp_credentials` VALUES (5,'swa9028');
INSERT INTO `emp_credentials` VALUES (6,'aks8956');
INSERT INTO `emp_credentials` VALUES (7,'san8856');
INSERT INTO `emp_credentials` VALUES (8,'pra9956');
INSERT INTO `emp_credentials` VALUES (9,'raj9344');
INSERT INTO `emp_credentials` VALUES (10,'ame8977';
INSERT INTO `emp_credentials` VALUES (11,'vai782');
INSERT INTO `emp_credentials` VALUES (12,'soh8829');
INSERT INTO `emp_credentials` VALUES (13,'son9812');
INSERT INTO `emp_credentials` VALUES (14,'nil7263');
INSERT INTO `emp_credentials` VALUES (15,'neh8274');
INSERT INTO `emp_credentials` VALUES (16,'ana9283');
INSERT INTO `emp_credentials` VALUES (17,'pra8293');
INSERT INTO `emp_credentials` VALUES (18,'res9820');
INSERT INTO `emp_credentials` VALUES (19,'ris8291');
INSERT INTO `emp_credentials` VALUES (20,'suj9287');


--
-- Table structure for table `emp_holidays`
--

CREATE TABLE `emp_holidays` (
  `emp_id` int NOT NULL,
  `leave_taken` int NOT NULL DEFAULT '0',
  `leave_available` int NOT NULL DEFAULT '20',
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `fk_emp_id_holidays` FOREIGN KEY (`emp_id`) REFERENCES `emp_info` (`emp_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `emp_holidays` VALUES (1,2,18);
INSERT INTO `emp_holidays` VALUES(2,3,17);
INSERT INTO `emp_holidays` VALUES(3,5,15);
INSERT INTO `emp_holidays` VALUES(4,1,19);
INSERT INTO `emp_holidays` VALUES(5,0,20);
INSERT INTO `emp_holidays` VALUES(6,2,18);
INSERT INTO `emp_holidays` VALUES(7,4,16);
INSERT INTO `emp_holidays` VALUES(8,13,7);
INSERT INTO `emp_holidays` VALUES(9,6,14);
INSERT INTO `emp_holidays` VALUES(10,0,20);
INSERT INTO `emp_holidays` VALUES(11,9,11);
INSERT INTO `emp_holidays` VALUES(12,11,9);
INSERT INTO `emp_holidays` VALUES(13,18,2);
INSERT INTO `emp_holidays` VALUES(14,20,0);
INSERT INTO `emp_holidays` VALUES(15,8,12);
INSERT INTO `emp_holidays` VALUES(16,16,4);
INSERT INTO `emp_holidays` VALUES(17,4,16);
INSERT INTO `emp_holidays` VALUES(18,20,0);
INSERT INTO `emp_holidays` VALUES(19,9,11;
INSERT INTO `emp_holidays` VALUES(20,16,4);


--
-- Table structure for table `emp_timesheet`
--

CREATE TABLE `emp_timesheet` (
  `emp_id` int NOT NULL,
  `punch_in` datetime NOT NULL,
  `punch_out` datetime NOT NULL,
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `fk_emp_id_timesheet` FOREIGN KEY (`emp_id`) REFERENCES `emp_info` (`emp_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `emp_timesheet` VALUES (1,'2024-08-01 09:00:00','2024-08-01 18:00:00');
INSERT INTO `emp_timesheet` VALUES(2,'2024-08-02 08:00:00','2024-08-02 17:00:00');
INSERT INTO `emp_timesheet` VALUES(3,'2024-08-05 13:00:00','2024-08-05 10:00:00');
INSERT INTO `emp_timesheet` VALUES(4,'2024-08-06 09:00:00','2024-08-06 18:00:00');
INSERT INTO `emp_timesheet` VALUES(5,'2024-08-07 08:00:00','2024-08-07 17:00:00');
INSERT INTO `emp_timesheet` VALUES(6,'2024-08-08 13:00:00','2024-08-08 10:00:00');
INSERT INTO `emp_timesheet` VALUES(7,'2024-08-09 09:00:00','2024-08-09 18:00:00');
INSERT INTO `emp_timesheet` VALUES(8,'2024-08-12 08:00:00','2024-08-12 17:00:00');
INSERT INTO `emp_timesheet` VALUES(9,'2024-08-13 08:30:00','2024-08-13 17:30:00');
INSERT INTO `emp_timesheet` VALUES(10,'2024-08-12 21:00:00','2024-08-13 06:00:00');
INSERT INTO `emp_timesheet` VALUES(11,'2024-08-14 08:30:00','2024-08-14 17:30:00');
INSERT INTO `emp_timesheet` VALUES(12,'2024-08-16 08:30:00','2024-08-16 17:30:00');
INSERT INTO `emp_timesheet` VALUES(13,'2024-08-19 09:00:00','2024-08-19 18:00:00');
INSERT INTO `emp_timesheet` VALUES(14,'2024-08-20 13:00:00','2024-08-20 10:00:00');
INSERT INTO `emp_timesheet` VALUES(15,'2024-08-21 09:00:00','2024-08-21 18:00:00');
INSERT INTO `emp_timesheet` VALUES(16,'2024-08-22 13:00:00','2024-08-22 10:00:00');
INSERT INTO `emp_timesheet` VALUES(17,'2024-08-23 08:00:00','2024-08-23 17:00:00');
INSERT INTO `emp_timesheet` VALUES(18,'2024-08-07 08:00:00','2024-08-07 17:00:00');
INSERT INTO `emp_timesheet` VALUES(19,'2024-08-12 21:00:00','2024-08-13 06:00:00');
INSERT INTO `emp_timesheet` VALUES(20,'2024-08-08 13:00:00','2024-08-08 10:00:00');

