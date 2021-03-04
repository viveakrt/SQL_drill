CREATE SCHEMA IF NOT EXISTS `patient`;

CREATE TABLE IF NOT EXISTS `patient`.`Patient`(
    `idPatient` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(100) ,
    `DOB` DATE ,
    `Address` VARCHAR(100) ,
    PRIMARY KEY (`idPatient`)
);

CREATE TABLE IF NOT EXISTS `patient`.`Doctor` (
    `idDoctor` INT NOT NULL AUTO_INCREMENT,
    `Doctor` VARCHAR(100),
    `Secretory` VARCHAR(100),
    PRIMARY KEY (`idDoctor`)
);