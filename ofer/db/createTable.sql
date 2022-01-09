-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `test_db` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema test_db
-- -----------------------------------------------------
USE `test_db` ;

-- -----------------------------------------------------
-- Table `mydb`.`Subjects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`Subjects` (
  `subject_name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`subject_name`),
  UNIQUE INDEX `subject_name_UNIQUE` (`subject_name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Classes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`Classes` (
  `class_name` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`class_name`),
  UNIQUE INDEX `class_name_UNIQUE` (`class_name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Teachers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`Teachers` (
  `teacher_id` INT NOT NULL,
  `subject_name` VARCHAR(45) NULL,
  `class_name` VARCHAR(45) NULL,
  `teacher_age` INT NULL,
  `teacher_fullname` VARCHAR(45) NULL,
  PRIMARY KEY (`teacher_id`),
  INDEX `subject_name_idx` (`subject_name` ASC) VISIBLE,
  UNIQUE INDEX `class_name_UNIQUE` (`class_name` ASC) VISIBLE,
  CONSTRAINT `subject_name`
    FOREIGN KEY (`subject_name`)
    REFERENCES `test_db`.`Subjects` (`subject_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `class_name`
    FOREIGN KEY (`class_name`)
    REFERENCES `test_db`.`Classes` (`class_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`Students` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `class_name` VARCHAR(45) NOT NULL,
  `subjects` VARCHAR(45) NULL,
  `student_name` VARCHAR(45) NOT NULL,
  `student_age` INT NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE,
  INDEX `class_name_idx` (`class_name` ASC) VISIBLE,
  INDEX `subjects_idx` (`subjects` ASC) VISIBLE,
  CONSTRAINT `class_name`
    FOREIGN KEY (`class_name`)
    REFERENCES `test_db`.`Classes` (`class_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `subjects`
    FOREIGN KEY (`subjects`)
    REFERENCES `test_db`.`Subjects` (`subject_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
