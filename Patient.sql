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

CREATE TABLE IF NOT EXISTS `patient`.`Prescription` (
    `idPrescription` INT NOT NULL AUTO_INCREMENT,
    `Drug` VARCHAR(100),
    `Date` DATETIME,
    `Dosage` INT,
    `idDoctor` INT NOT NULL,
    `idPatient` INT NOT NULL,
    PRIMARY KEY (`idPrescription`),
    FOREIGN KEY (`idDoctor`) REFERENCES `patient`.`Doctor` (`idDoctor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`idPatient`) REFERENCES `patient`.`Patient` (`idPatient`) ON DELETE NO ACTION ON UPDATE NO ACTION
);