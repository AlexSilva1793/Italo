-- MySQL Script generated by MySQL Workbench
-- Tue Jan 14 15:34:58 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema italo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema italo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `italo` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `italo` ;

-- -----------------------------------------------------
-- Table `italo`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `italo`.`producto` (
  `idproducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `precio` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idproducto`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
