-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`doctors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`doctors` ;

CREATE TABLE IF NOT EXISTS `mydb`.`doctors` (
  `number` INT(11) NOT NULL,
  `nameDoctor` VARCHAR(45) NULL DEFAULT NULL,
  `position` VARCHAR(45) NULL DEFAULT NULL,
  `number_cabinet` INT(11) NULL DEFAULT NULL,
  `timeVisit` TIME NULL DEFAULT NULL,
  `salary` INT NULL,
  `N_dog` INT NULL,
  PRIMARY KEY (`number`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`log`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`log` ;

CREATE TABLE IF NOT EXISTS `mydb`.`log` (
  `dataVisit` DATE NULL DEFAULT NULL,
  `cartNumber` INT(11) NOT NULL,
  `namePatient` VARCHAR(45) NULL DEFAULT NULL,
  `nameDoctor` VARCHAR(45) NULL DEFAULT NULL,
  `positionDoctor` VARCHAR(45) NULL DEFAULT NULL,
  `services` VARCHAR(45) NULL DEFAULT NULL,
  `quantity` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`cartNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`patientlist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`patientlist` ;

CREATE TABLE IF NOT EXISTS `mydb`.`patientlist` (
  `НомерКарточки` INT(11) NOT NULL,
  `ФИО Пациента` VARCHAR(45) NULL DEFAULT NULL,
  `homeAdress` VARCHAR(100) NULL DEFAULT NULL,
  `MedPolis` VARCHAR(45) NULL DEFAULT NULL,
  `phoneNumber` VARCHAR(45) NULL DEFAULT NULL,
  `gender` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`НомерКарточки`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`services_list`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`services_list` ;

CREATE TABLE IF NOT EXISTS `mydb`.`services_list` (
  `services_number` INT(11) NOT NULL,
  `nameOfService` VARCHAR(45) NULL DEFAULT NULL,
  `serviceCharacteristic` VARCHAR(45) NULL DEFAULT NULL,
  `cost` DECIMAL(10,0) NULL DEFAULT NULL,
  `discount` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`services_number`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Dogovora`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Dogovora` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Dogovora` (
  `N1_dog` INT NULL,
  `D_dog` DATE NULL,
  `S_dog` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Data for table `mydb`.`doctors`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (1, 'Сысоева Ярослава Германновна', 'Врач', 1, '18:00', 10000, 1);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (2, 'Молчанов Аполлон Антонович', 'Стоматолог', 1, '10:00', 15000, 2);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (3, 'Харитонова Яна Геннадьевна', 'Врач', 2, '12:30', 5000, 3);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (4, 'Артемьев Иван Якунович', 'Хірург', 3, '14:00', 23000, 4);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (5, 'Павлова Августина Парфеньевна', 'Врач', 3, '12:10', 10000, 5);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (6, 'Зыкова Эдуарда Федосеевна', NULL, 4, '16:05', 7500, 6);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (7, 'Маслов Ефрем Созонович', 'Стоматолог', 4, '18:00', 80000, 7);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (8, 'Евсеева Нинна Руслановна', 'Ортопед', 5, '18:00', 10000, 8);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (9, 'Селиверстов Аполлон Александрович', 'Стоматолог', 6, '09:54', 23000, 9);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (10, 'Афанасьев Рубен Тихонович', 'Хірург', 3, '15:45', 45000, 10);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (11, 'Калинина Радослава Святославовна', 'Ортопед', 7, '10:23', 4000, 11);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (12, 'Блинова Фаиза Серапионовна', 'Стоматолог', 4, '11:54', 16000, 12);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (13, 'Лапин Вольдемар Алексеевич', 'ГлавВрач', 8, '15:56', 50000, 13);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (14, 'Коновалов Антон Иванович', 'Педіатр', 9, '12:10', 4500, 14);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (15, 'Смирнова Галина Лукьевна', 'Стоматолог', 10, '14:34', 16000, 15);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (16, 'Николаев Устин Петрович', 'Лаборант', 11, '12:12', 8000, 16);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (17, 'Яковлев Харитон Лукьянович', 'Лаборант', 11, '16:00', 8000, 17);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (18, 'Харитонова Альжбета Васильевна', 'Стоматолог', 10, NULL, 25000, 18);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (19, 'Быков Родион Егорович', 'Хірург', 12, NULL, 36000, 19);
INSERT INTO `mydb`.`doctors` (`number`, `nameDoctor`, `position`, `number_cabinet`, `timeVisit`, `salary`, `N_dog`) VALUES (20, 'Беляева Элоиза Вячеславовна', 'Лаборант', 13, NULL, 4200, 20);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`log`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2017-11-04', 1, 'Данилов Гордей Федосеевич', 'Сысоева Ярослава Германновна', 'Хірург', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2015-12-16', 2, 'Лаврентьев Евгений Владимирович', 'Молчанов Аполлон Антоновичя', 'Стоматолог', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES (NULL, 3, 'Артемьева Романа Федотовна', 'Смирнова Галина Лукьевна', 'Стоматолог', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2019-02-04', 5, 'Гущин Федор Демьянович', 'Харитонова Яна Геннадьевна', 'Ортопед', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES (NULL, 6, 'Сазонова Милолика Ивановна', NULL, 'Лаборант', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2016-05-06', 7, 'Гущина Арина Богуславовна', 'Маслов Ефрем Созонович', 'Педіатр', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES (NULL, 8, 'Муравьёв Георгий Даниилович', 'Зыкова Эдуарда Федосеевна', 'Хірург', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2017-04-12', 9, 'Лаврентьева Радмила Станиславовна', NULL, 'Хірург', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2018-06-06', 10, 'Ситникова Милослава Еремеевна', 'Афанасьев Рубен Тихонович', 'Стоматолог', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2019-07-07', 11, 'Сергеев Герасим Глебович', NULL, 'Ортопед', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES (NULL, 12, 'Архипова Эшли Лукьяновна', NULL, 'Ортопед', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2018-11-11', 13, 'Фёдоров Витольд Дмитриевич', 'Смирнова Галина Лукьевна', 'Стоматолог', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2019-12-30', 14, 'Михайлова Чеслава Ярославовна', NULL, 'Хірург', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2017-02-02', 15, 'Воробьёв Алексей Святославович', 'Коновалов Антон Иванович', 'Педіатр', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2019-09-09', 16, 'Константинова Элизабет Григорьевна', NULL, 'Лаборант', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES (NULL, 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES (NULL, 18, 'Мартынов Орест Григорьевич', 'Коновалов Антон Иванович', NULL, NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES ('2017-12-31', 19, 'Князева Юнона Онисимовна', NULL, 'Стоматолог', NULL, NULL);
INSERT INTO `mydb`.`log` (`dataVisit`, `cartNumber`, `namePatient`, `nameDoctor`, `positionDoctor`, `services`, `quantity`) VALUES (NULL, 20, 'Титов Глеб Яковлевич', 'Коновалов Антон Иванович', NULL, NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`patientlist`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (1, 'Данилов Гордей Федосеевич', '88701, Чернівецька область, місто Чернівці', '1', '0671243383', 'чоловік');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (2, 'Лаврентьев Евгений Владимирович', '32754, Харківська область, місто Харків, вул. 50 років Жовтня, 62', '2', '0933088116', 'чоловік');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (3, 'Артемьева Романа Федотовна', '30813, Вінницька область, місто Вінниця, просп. Лесі Українки, 23', '3', '0969569719', 'жінка');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (4, 'Михеева Жюли Валерьяновна', '37521, Чернівецька область, місто Чернівці, просп. Космонавта Попова, 91', '4', '0991045399', 'жінка');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (5, 'Гущин Федор Демьянович', '86558, Рівненська область, місто Рівне, просп. Леніна, 90', '5', '0633933347', 'чоловік');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (6, 'Сазонова Милолика Ивановна', '53890, Івано-Франківська область, місто Івано-Франківськ, просп. 50 років Жовтня, 56', '6', '0930213254', 'жінка');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (7, 'Гущина Арина Богуславовна', '54731, Київська область, місто Київ, просп. Лесі Українки, 90', '7', '0992042639', 'жінка');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (8, 'Муравьёв Георгий Даниилович', '16650, Чернівецька область, місто Чернівці, пров. Гагаріна, 08', '8', '0935375187', 'чоловік');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (9, 'Лаврентьева Радмила Станиславовна', '46642, Сумська область, місто Суми, пл. Михайла Грушевського, 37', '9', '0634369987', 'жінка');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (10, 'Ситникова Милослава Еремеевна', '74689, Донецька область, місто Донецьк, пров. Леніна, 14', '10', '0676971328', 'жінка');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (11, 'Сергеев Герасим Глебович', '11541, Чернівецька область, місто Чернівці, просп. Космонавта Попова, 42', '11', NULL, 'чоловік');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (12, 'Архипова Эшли Лукьяновна', '87577, Тернопільська область, місто Тернопіль, пл. Пацаєва, 21', '12', NULL, 'жінка');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (13, 'Фёдоров Витольд Дмитриевич', '69964, Чернігівська область, місто Чернігів, пл. Леніна, 35', '13', '0504919702', 'чоловік');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (14, 'Михайлова Чеслава Ярославовна', '42344, Запорізька область, місто Запоріжжя, вул. Тараса Шевченка, 88', '14', '0630109655', 'жінка');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (15, 'Воробьёв Алексей Святославович', '40093, Донецька область, місто Донецьк, пл. Пацаєва, 30', '15', '0630043396', 'чоловік');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (16, 'Константинова Элизабет Григорьевна', '80267, Чернігівська область, місто Чернігів, пл. 40 років Перемоги, 89', '16', NULL, 'жінка');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (17, NULL, '18347, Дніпропетровська область, місто Дніпропетровськ, пл. Космонавта Попова, 91', '17', NULL, 'чоловік');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (18, 'Мартынов Орест Григорьевич', '88415, Житомирська область, місто Житомир, просп. 40 років Перемоги, 60', '18', '0962632975', 'чоловік');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (19, 'Князева Юнона Онисимовна', '78012, Закарпатська область, місто Ужгород, пл. Генерала Жадова, 88', '19', '0632774653', 'жінка');
INSERT INTO `mydb`.`patientlist` (`НомерКарточки`, `ФИО Пациента`, `homeAdress`, `MedPolis`, `phoneNumber`, `gender`) VALUES (20, 'Титов Глеб Яковлевич', '05032, Київська область, місто Київ, просп. 40 років Перемоги, 18', '20', '0938279476', 'чоловік');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Dogovora`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (1, '2017-12-31', 1000);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (2, '2018-11-28', 1110);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (3, '2017-02-02', 1200);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (4, '2015-12-30', 12000);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (5, '2018-11-12', 14000);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (6, '2017-05-08', 1820);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (7, '2017-12-31', 1900);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (8, '2018-07-07', 2000);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (9, '2019-09-09', 2500);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (10, '2019-09-27', 50000);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (11, '2017-12-31', NULL);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (12, '2019-09-27', 18000);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (13, NULL, 16000);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (14, '2019-09-27', NULL);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (15, '2015-12-30', 6000);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (16, NULL, 6666);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (17, '2019-09-27', 9230);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (18, '2015-12-30', NULL);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (19, NULL, 10020);
INSERT INTO `mydb`.`Dogovora` (`N1_dog`, `D_dog`, `S_dog`) VALUES (20, '2017-12-31', 12900);

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
