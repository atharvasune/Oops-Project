-- MySQL Script generated by MySQL Workbench
-- Monday 19 November 2018 06:34:55 PM IST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering
--
-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
-- SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb`;-- DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE user (
  userid VARCHAR(45) NOT NULL PRIMARY KEY,
  name VARCHAR(45) NOT NULL CHECK (DATALENGTH(val) > 0),
  dob DATE NOT NULL,
  address MEDIUMTEXT NOT NULL,
  email VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL
);
-- ENGINE = InnoDB
-- COMMENT = 'user table'
-- PACK_KEYS = DEFAULT;


  -- -----------------------------------------------------
-- Table `mydb`.`hotels`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hotels (
  `hotelid` INT NOT NULL AUTO_INCREMENT,
  `hotel` VARCHAR(70) NOT NULL,
  `address` VARCHAR(150) NOT NULL,
  `price` INT NOT NULL,
  `fac` VARCHAR(150) NOT NULL,
  `rating` FLOAT NULL,
  `city` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`hotelid`)
);
-- ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`booking` (
  `userid` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `hotel` VARCHAR(70) NULL,
  `room` INT NULL,
  `guest` INT NULL,
  `indate` DATE NULL,
  `outdate` DATE NULL,
  `idproof` VARCHAR(12),
  `status` VARCHAR(45) NULL,
  `bookid` INT(99) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`bookid`)
);
-- ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`list_waiting`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`list_waiting` (
  `bookingid` INT(99) NULL,
  `userid` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`userid`)
);
-- ENGINE = InnoDB;

--
-- SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
