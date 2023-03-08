-- -------------------------------------------------------------
-- TablePlus 5.3.4(492)
--
-- https://tableplus.com/
--
-- Database: soal_query
-- Generation Time: 2023-03-08 16:12:37.7590
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `faculties` (
  `faculty_id` int NOT NULL,
  `faculty_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `faculty_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `faculties` (`faculty_id`, `faculty_name`) VALUES
(1, 'Civil Engineering'),
(2, 'Software Engineering'),
(3, 'Law'),
(4, 'Psychology'),
(5, 'Economic');

INSERT INTO `students` (`student_id`, `name`, `faculty_name`, `phone`) VALUES
(1, 'Andreas Smith', 'Civil Engineering', '+6283123123'),
(2, 'Ah young Park', 'Software Engineering', '+6283443123'),
(3, 'Heusthy Margaret Su', 'Law', '+6283198023'),
(4, 'Ryu Ang', 'Psychology', '+628323491231');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;