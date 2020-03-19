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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`PessoaJuridica`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`PessoaJuridica` ;

CREATE TABLE IF NOT EXISTS `mydb`.`PessoaJuridica` (
  `cnpj` BIGINT(14) ZEROFILL NOT NULL,
  `empresa` VARCHAR(60) NOT NULL,
  `diretor` VARCHAR(45) NOT NULL,
  `telefone` BIGINT(10) NULL,
  `celular` BIGINT(11) NOT NULL,
  `e-mail` VARCHAR(45) NOT NULL,
  `supervisorTecnico` VARCHAR(45) NOT NULL,
  `registroCBMDF` VARCHAR(45) NOT NULL,
  `validade` DATE NOT NULL,
  PRIMARY KEY (`cnpj`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OrgaoExpedidor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`OrgaoExpedidor` ;

CREATE TABLE IF NOT EXISTS `mydb`.`OrgaoExpedidor` (
  `uf` CHAR(2) NOT NULL,
  PRIMARY KEY (`uf`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`orgaoEmissor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`orgaoEmissor` ;

CREATE TABLE IF NOT EXISTS `mydb`.`orgaoEmissor` (
  `orgEmissor` VARCHAR(45) NOT NULL COMMENT 'ABNC – Academia Brasileira de Neurocirurgia\nCGPI/DUREX/DPF – Coordenação Geral de Polícia de Imigração da Polícia Federal\nCGPI – Coordenação-Geral de Privilégios e Imunidades\nCGPMAF – Coordenadoria Geral de Polícia Marítima, Aeronáutica e de Fronteiras\nCNIG – Conselho Nacional de Imigração\nCNT - Carteira Nacional de Habilitação\nCOREN – Conselho Regional de Enfermagem\nCORECON - Conselho Regional de Economia\nCRA – Conselho Regional de Administração\nCRAS – Conselho Regional de Assistentes Sociais\nCRB – Conselho Regional de Biblioteconomia\nCRC – Conselho Regional de Contabilidade\nCRE – Conselho Regional de Estatística\nCREA – Conselho Regional de Engenharia e Agronomia\nCRECI – Conselho Regional de Corretores de Imóveis\nCREFIT – Conselho Regional de Fisioterapia e Terapia Ocupacional\nCRF – Conselho Regional de Farmácia\nCRM – Conselho Regional de Medicina\nCRN – Conselho Regional de Nutrição\nCRO – Conselho Regional de Odontologia\nCRP – Conselho Regional de ' /* comment truncated */ /*Psicologia
CRPRE – Conselho Regional de Profissionais de Relações Públicas
CRQ – Conselho Regional de Química
CRRC – Conselho Regional de Representantes Comerciais
CRMV – Conselho Regional de Medicina Veterinária
CSC - Carteira Sede Carpina de Pernambuco
CTPS – Carteira de Trabalho e Previdência Social
DIC - Diretoria de Identificação Civil
DIREX – Diretoria-Executiva
DPMAF – Divisão de Polícia Marítima, Área e de Fronteiras
DPT – Departamento de Polícia Técnica Geral
DST – Programa Municipal DST/Aids
FGTS - Fundo de Garantia do Tempo de Serviço
FIPE – Fundação Instituto de Pesquisas Econômicas
FLS - Fundação Lyndolpho Silva
GOVGO - Governo do Estado de Goiás
I CLA – Carteira de Identidade Classista
IFP - Instituto Félix Pacheco
IGP – Instituto Geral de Perícias
IICCECF/RO - Instituto de Identificação Civil e Criminal Engrácia da Costa Francisco de Rondônia
IIMG - Inter-institutional Monitoring Group
IML – Instituto Médico-Legal
IPC - Índice de Preços ao Consumidor
IPF - Instituto Pereira Faustino
MAE - Ministério da Aeronáutica
MEX - Ministério do Exército
MMA - Ministério da Marinha
OAB – Ordem dos Advogados do Brasil
OMB – Ordens dos Músicos do Brasil
PCMG - Policia Civil do Estado de Minas Gerais
PMMG – Polícia Militar do Estado de Minas Gerais
POF ou DPF - Polícia Federal
POM - Polícia Militar
SDS – Secretaria de Defesa Social (Pernambuco)
SNJ – Secretaria Nacional de Justiça / Departamento de Estrangeiros
SECC – Secretaria de Estado da Casa Civil
SEJUSP - Secretaria de Estado de Justiça e Segurança Pública – Mato Grosso
SES ou EST - Carteira de Estrangeiro
SESP – Secretaria de Estado da Segurança Pública do Paraná
SJS – Secretaria da Justiça e Segurança
SJTC – Secretaria da Justiça do Trabalho e Cidadania
SJTS – Secretaria da Justiça do Trabalho e Segurança
SPTC - Secretaria de Polícia Técnico-Científica
SSP - Secretaria de Segurança Pública*/,
  PRIMARY KEY (`orgEmissor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Nivel_classificacaoProfissional`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Nivel_classificacaoProfissional` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Nivel_classificacaoProfissional` (
  `classificacaoProfissional` VARCHAR(45) NOT NULL COMMENT 'Básico: Combatente\nLíder: Chefe de Brigada\nMestre: Supervisor',
  PRIMARY KEY (`classificacaoProfissional`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PessoaFisica`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`PessoaFisica` ;

CREATE TABLE IF NOT EXISTS `mydb`.`PessoaFisica` (
  `cpf` BIGINT(11) ZEROFILL NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `rg` VARCHAR(10) NOT NULL,
  `sexo` ENUM('F', 'M') NOT NULL,
  `dataNascimento` DATE NOT NULL,
  `e-mail` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `SupervisorTecnico` VARCHAR(45) NOT NULL,
  `datadocadastro` DATE NOT NULL,
  `celular` BIGINT(11) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `cnpj_FK_PJ` BIGINT(14) ZEROFILL NOT NULL,
  `orgEmissor` VARCHAR(45) NOT NULL,
  `classificacaoProfissional` VARCHAR(45) NOT NULL COMMENT 'Básico: Combatente\nLíder: Chefe de Brigada\nMestre: Supervisor',
  PRIMARY KEY (`cpf`),
  INDEX `fk_PessoaFisica_SSP1_idx` (`uf` ASC),
  INDEX `fk_PessoaFisica_PessoaJuridica_idx` (`cnpj_FK_PJ` ASC),
  INDEX `fk_PessoaFisica_SSP2_idx` (`orgEmissor` ASC),
  INDEX `fk_PessoaFisica_Nivel_classificacaoProfissional1_idx` (`classificacaoProfissional` ASC),
  CONSTRAINT `fk_PessoaFisica_PessoaJuridica`
    FOREIGN KEY (`cnpj_FK_PJ`)
    REFERENCES `mydb`.`PessoaJuridica` (`cnpj`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_PessoaFisica_SSP1`
    FOREIGN KEY (`uf`)
    REFERENCES `mydb`.`OrgaoExpedidor` (`uf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PessoaFisica_SSP2`
    FOREIGN KEY (`orgEmissor`)
    REFERENCES `mydb`.`orgaoEmissor` (`orgEmissor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PessoaFisica_Nivel_classificacaoProfissional1`
    FOREIGN KEY (`classificacaoProfissional`)
    REFERENCES `mydb`.`Nivel_classificacaoProfissional` (`classificacaoProfissional`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `OrgaoExpedidor` (`uf`) VALUES
('AC'),
('AL'),
('AM'),
('AP'),
('BA'),
('CE'),
('DF'),
('ES'),
('GO'),
('MA'),
('MG'),
('MS'),
('MT'),
('PA'),
('PB'),
('PE'),
('PI'),
('PR'),
('RJ'),
('RN'),
('RO'),
('RR'),
('RS'),
('SC'),
('SE'),
('SP'),
('TO');

INSERT INTO `orgaoEmissor` (`orgEmissor`) VALUES 
('ABNC'),
('CGPI'),
('CNIG'),
('CNT'),
('COREN'),
('CORECON'),
('CRA'),
('CRAS'),
('CRB'),
('CRC'),
('CREA'),
('CRECI'),
('CREFIT'),
('CRF'),
('CRM'),
('CRN'),
('CRO'),
('CRP'),
('CRPRE'),
('CRQ'),
('CRRC'),
('CRMV'),
('CSC'),
('CTPS'),
('DIC'),
('DIREX'),
('DPF'),
('DPMAF'),
('DPT'),
('DST'),
('EST'),
('FGTS'),
('FIPE'),
('FLS'),
('GOVGO'),
('IFP'),
('IGP'),
('IICCECF/RO'),
('IIMG'),
('IML'),
('IPC'),
('IPF'),
('MAE'),
('MEX'),
('MMA'),
('OAB'),
('OMB'),
('PCMG'),
('PMMG'),
('POF'),
('POM'),
('SDS'),
('SNJ'),
('SECC'),
('SEJUSP'),
('SES'),
('SESP'),
('SJS'),
('SJTC'),
('SJTS'),
('SPTC'),
('SSP');
