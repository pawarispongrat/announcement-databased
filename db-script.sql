-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema announcement
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema announcement
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `announcement` DEFAULT CHARACTER SET utf8 ;
USE `announcement` ;

-- -----------------------------------------------------
-- Table `mydb`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `announcement`.`category` (
  `categoryId` INT NOT NULL,
  `categoryName` VARCHAR(50) NOT NULL DEFAULT 'General',
  PRIMARY KEY (`categoryId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `announcement`.`announcement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `announcement`.`announcement` (
  `announcementID` INT NOT NULL auto_increment,
  `announcementTitle` VARCHAR(200) NOT NULL,
  `announcementDescription` VARCHAR(10000) NOT NULL,
  `publishDate` DATETIME NULL,
  `closeDate` DATETIME NULL,
  `announcementDisplay` ENUM('Y', 'N') NOT NULL DEFAULT 'N',
  `categoryId` INT NOT NULL,
  `viewCount` INT default 0,
  PRIMARY KEY (`announcementID`),
  INDEX `fk_Announcement_Category_idx` (`categoryId` ASC) VISIBLE,
  CONSTRAINT `fk_Announcement_Category`
    FOREIGN KEY (`categoryId`)
    REFERENCES `announcement`.`category` (`categoryId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

insert into announcement (announcementtitle,announcementdescription,categoryId,publishdate,closedate,announcementdisplay) values 
('(PBI10) Title 0','(PBI10) Description 0',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 1','(PBI10) Description 1',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 2','(PBI10) Description 2',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 3','(PBI10) Description 3',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 4','(PBI10) Description 4',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 5','(PBI10) Description 5',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 6','(PBI10) Description 6',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 7','(PBI10) Description 7',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 8','(PBI10) Description 8',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 9','(PBI10) Description 9',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 10','(PBI10) Description 10',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 11','(PBI10) Description 11',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 12','(PBI10) Description 12',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 13','(PBI10) Description 13',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 14','(PBI10) Description 14',1,'2023-05-01 06:00:00+07:00','2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 16','(PBI10) Description 16',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 17','(PBI10) Description 17',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 18','(PBI10) Description 18',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 19','(PBI10) Description 19',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 20','(PBI10) Description 20',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 21','(PBI10) Description 21',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 22','(PBI10) Description 22',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 23','(PBI10) Description 23',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 24','(PBI10) Description 24',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 25','(PBI10) Description 25',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 26','(PBI10) Description 26',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 27','(PBI10) Description 27',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 28','(PBI10) Description 28',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 29','(PBI10) Description 29',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 30','(PBI10) Description 30',1,null,'2023-12-31 18:00:00+07:00','Y'),
('(PBI10) Title 31','(PBI10) Description 31',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 32','(PBI10) Description 32',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 33','(PBI10) Description 33',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 34','(PBI10) Description 34',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 35','(PBI10) Description 35',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 36','(PBI10) Description 36',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 37','(PBI10) Description 37',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 38','(PBI10) Description 38',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 39','(PBI10) Description 39',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 40','(PBI10) Description 40',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 41','(PBI10) Description 41',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 42','(PBI10) Description 42',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 43','(PBI10) Description 43',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 44','(PBI10) Description 44',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 45','(PBI10) Description 45',2,'2023-05-01 06:00:00+07:00',null,'Y'),
('(PBI10) Title 46','(PBI10) Description 46',2,null,null,'Y'),
('(PBI10) Title 47','(PBI10) Description 47',2,null,null,'Y'),
('(PBI10) Title 48','(PBI10) Description 48',2,null,null,'Y'),
('(PBI10) Title 49','(PBI10) Description 49',2,null,null,'Y'),
('(PBI10) Title 50','(PBI10) Description 50',2,null,null,'Y'),
('(PBI10) Title 51','(PBI10) Description 51',2,null,null,'Y'),
('(PBI10) Title 52','(PBI10) Description 52',2,null,null,'Y'),
('(PBI10) Title 53','(PBI10) Description 53',2,null,null,'Y'),
('(PBI10) Title 54','(PBI10) Description 54',2,null,null,'Y'),
('(PBI10) Title 55','(PBI10) Description 55',2,null,null,'Y'),
('(PBI10) Title 56','(PBI10) Description 56',2,null,null,'Y'),
('(PBI10) Title 57','(PBI10) Description 57',2,null,null,'Y'),
('(PBI10) Title 58','(PBI10) Description 58',2,null,null,'Y'),
('(PBI10) Title 59','(PBI10) Description 59',2,null,null,'Y'),
('(PBI10) Title 60','(PBI10) Description 60',2,null,null,'Y'),
('(PBI10) Title 61','(PBI10) Description 61',3,null,'2023-05-01 18:00:00+07:00','Y'),
('(PBI10) Title 62','(PBI10) Description 62',3,'2023-05-01 06:00:00+07:00','2023-05-01 18:00:00+07:00','Y'),
('(PBI10) Title 63','(PBI10) Description 63',3,null,'2023-05-01 18:00:00+07:00','N'),
('(PBI10) Title 64','(PBI10) Description 64',3,'2023-06-01 06:00:00+07:00','2023-12-01 18:00:00+07:00','Y'),
('(PBI10) Title 65','(PBI10) Description 65',3,'2023-06-01 06:00:00+07:00',null,'Y');

insert into category values(1,'ทั่วไป'),(2,'ทุนการศึกษา'),(3,'หางาน'),(4,'ฝึกงาน');

insert into announcement values
(1,
'บริษัท เน็ตเซอรพลัส จำกัด รับสมัครงาน 2 ตำแหน่ง',
'บริษัท เน็ตเซอรพลัส จำกัด เปิดรับสมัครงาน 2 ตำแหนง Application Support และ Customer Support',
null,
null,
'N',
4),
(2,
'รายชื่อนักศึกษาที่ได้รับทุนการศึกษาประเภท "ทุนจ้างงาน" 2/2565',
'คณะ ฯประกาศรายชื่อนักศึกษาที่ได้รับทุนการศึกษาประเภท "ทุนจ้างงาน" ประจําภาคการศึกษา 2/2565',
null,
'2023-05-31T11:00:00',
'Y',
2),
(3,
'แนวปฎิบัติการสอบออนไลน์ พ.ศ. 2565',
'ประกาศมหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี เรื่องแนวทางปฎิบัติการสอบออนไลน์ พ.ศ. 2565',
'2023-01-26T23:00:00',
null,
'Y',
1),
(4,'กิจกรรมพี่อ้อย พี่ฉอด On Tour 2566',
'ขอเชิญนักศึกษาทุกชั้นปี เข้าร่วมกิจกรรมพี่อ้อย พี่ฉอด On Tour',
'2023-04-18T23:00:00',
'2023-05-08T11:00:00',
'Y',
1);




