CREATE SCHEMA IF NOT EXISTS `patient`;

CREATE TABLE IF NOT EXISTS `patient`.`Patient`(
    `idPatient` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(100) ,
    `DOB` DATE ,
    `Address` VARCHAR(100) ,
    PRIMARY KEY (`idPatient`)
);

