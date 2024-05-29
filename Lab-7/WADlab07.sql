DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_level_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name_vn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `credit_theory` int DEFAULT NULL,
  `credit_lab` int DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`course_id`)
  -- Đã loại bỏ FOREIGN KEY `FK_Course_CourseLevel`
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `course` WRITE;

INSERT INTO `course` VALUES 
('CH011',1,'Chemistry for Engineer','Hoá học cho kĩ sư',3,0,'This one‐semester course is designed for engineering students those who are pursuing a non‐chemistry engineering degree such as information technology, bio‐technology, civil, biomedical, electronic and telecommunication engineering. The course will introduce the basic principles of chemistry and connect those principles to issues in engineering professions. The related lab‐work is not included in this course.'),
('UFCFRB-15-3',1,'Security Management in Practice','Quản Lý An Toàn Thông Tin Trong Thực Tế',15,0,''),
('UFCFX3-15-3',1,'Advanced Topics in Web Development','Chủ Đề Nâng Cao Phát Triển Web',15,0,'');

UNLOCK TABLES;

DROP TABLE IF EXISTS `course_program`;

CREATE TABLE `course_program` (
  `course_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `program_id` int NOT NULL,
  `course_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_type_id` int NOT NULL,
  UNIQUE KEY `Key` (`course_id`,`program_id`)
  -- Đã loại bỏ FOREIGN KEY `FK_CourseProgram_CourseType`
  -- Đã loại bỏ FOREIGN KEY `FK_CourseProgram_Program`
  -- Đã loại bỏ FOREIGN KEY `FK_CourseProgram_Course`
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `course_program` WRITE;

INSERT INTO `course_program` VALUES 
('CH011',1,'CH011IU',1),
('CH011',2,'CH011IU',1),
('UFCFFC-30-3',22,'UFCFFC-30-3',2),
('UFCFJP-15-3',22,'UFCFJP-15-3',2),
('UFCFRB-15-3',22,'UFCFRB-15-3',2),
('UFCFX3-15-3',22,'UFCFX3-15-3',2);

UNLOCK TABLES;

DROP TABLE IF EXISTS `program`;

CREATE TABLE `program` (
  `course_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `version` varchar(4) DEFAULT NULL,
  `major_id` int DEFAULT NULL,
  `program_type_id` int NOT NULL,
  `valid_from` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
  -- Đã loại bỏ FOREIGN KEY `FK_program_major`
  -- Đã loại bỏ FOREIGN KEY `FK_program_program_type`
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `program` WRITE;

INSERT INTO `program` VALUES 
(1,'DS_2019_20',4,'2019',4,1,NULL),
(2,'CE_2019_20',4,'2019',2,1,NULL),
(3,'NE_2019_20',4,'2019',1,1,NULL);

UNLOCK TABLES;
