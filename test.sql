-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema airline
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema airline
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `airline1` DEFAULT CHARACTER SET utf8mb4 ;
USE `airline1` ;

-- -----------------------------------------------------
-- Table `airline`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `airline1`.`customer` (
  `idcustomer` INT(11) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `user_name` VARCHAR(25) NOT NULL,
  `password` VARCHAR(15) NOT NULL,
  `cc_number` INT(16) NOT NULL,
  `card_verification_code` INT(3) NOT NULL,
  PRIMARY KEY (`idcustomer`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = DEFAULT;


-- -----------------------------------------------------
-- Table `airline`.`flight`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `airline1`.`flight` (
  `idflight` INT(11) NOT NULL,
  `available_seats` INT(11) NOT NULL,
  `price` DOUBLE NOT NULL,
  `departure_loc` VARCHAR(45) NOT NULL,
  `destination_loc` VARCHAR(45) NOT NULL,
  `departure_time` TIME NOT NULL,
  `arrival_time` TIME NOT NULL,
  `gate` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`idflight`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = DEFAULT;

-- -----------------------------------------------------
-- Table `airline`.`ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `airline1`.`ticket` (
  `idticket` INT(11) NOT NULL,
  `idcustomer` INT(11) NOT NULL,
  `idflight` INT(11) NOT NULL,
  `number_of_bags` INT(11) NOT NULL,
  `price` DOUBLE NOT NULL,
  PRIMARY KEY (`idticket`),
  INDEX `idflight_idx` (`idflight` ASC) ,
  INDEX `user_name_idx` (`idcustomer` ASC) ,
  CONSTRAINT `idcustomer`
    FOREIGN KEY (`idcustomer`)
    REFERENCES `airline`.`customer` (`idcustomer`),
  CONSTRAINT `idflight`
    FOREIGN KEY (`idflight`)
    REFERENCES `airline`.`flight` (`idflight`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = DEFAULT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
