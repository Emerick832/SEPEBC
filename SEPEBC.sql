-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sepebc
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sepebc
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sepebc` DEFAULT CHARACTER SET utf8 ;
USE `sepebc` ;

-- -----------------------------------------------------
-- Table `sepebc`.`PessoaJuridica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sepebc`.`PessoaJuridica` (
  `cnpj` BIGINT(14) NOT NULL,
  `empresa` VARCHAR(60) NOT NULL,
  `diretor` VARCHAR(45) NOT NULL,
  `telefone` INT NULL,
  `celular` INT NOT NULL,
  `e-mail` VARCHAR(45) NOT NULL,
  `supervisorTecnico` VARCHAR(45) NOT NULL,
  `registroCBMDF` VARCHAR(45) NOT NULL,
  `validade` DATE NOT NULL,
  PRIMARY KEY (`cnpj`, `supervisorTecnico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sepebc`.`SSP`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sepebc`.`SSP` (
  `Sigla_UF` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`Sigla_UF`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sepebc`.`PessoaFisica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sepebc`.`PessoaFisica` (
  `cpf` BIGINT(11) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `rg` VARCHAR(10) NOT NULL,
  `ssp` VARCHAR(45) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `dataNascimento` DATE NOT NULL,
  `e-mail` VARCHAR(45) NOT NULL,
  `endereço` VARCHAR(45) NOT NULL,
  `classificaçãoProfissional` VARCHAR(45) NOT NULL COMMENT 'Básico: Combatente\nLíder: Chefe de Brigada\nMestre: Supervisor',
  `supervisorTecnico` VARCHAR(45) NOT NULL,
  `datadocadastro` DATE NOT NULL,
  `celular` INT(11) NOT NULL,
  `SSP_Sigla_UF` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`cpf`, `supervisorTecnico`),
  INDEX `fk_PessoaFisica_PessoaJuridica_idx` (`supervisorTecnico`),
  INDEX `fk_PessoaFisica_SSP1_idx` (`SSP_Sigla_UF`),
  CONSTRAINT `fk_PessoaFisica_PessoaJuridica`
    FOREIGN KEY (`supervisorTecnico`)
    REFERENCES `PessoaFisica`.`PessoaJuridica` (`supervisorTecnico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PessoaFisica_SSP1`
    FOREIGN KEY (`SSP_Sigla_UF`)
    REFERENCES `PessoaFisica`.`SSP` (`Sigla_UF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
