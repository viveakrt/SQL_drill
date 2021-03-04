CREATE SCHEMA IF NOT EXISTS `client`;

CREATE TABLE IF NOT EXISTS `client`.`Client` (
    `idClient` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(100) NULL DEFAULT NULL,
    `Location` VARCHAR(100) NULL DEFAULT NULL,
    `idManager` INT NULL DEFAULT NULL,
    PRIMARY KEY (`idClient`),
    FOREIGN KEY (`idManager`) REFERENCES `client`.`Manager` (`idManager`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `client`.`Manager` (
    `idManager` INT NOT NULL AUTO_INCREMENT,
    `Manager_Name` VARCHAR(100) NULL DEFAULT NULL,
    `Manager_Location` VARCHAR(100) NULL DEFAULT NULL,
    PRIMARY KEY (`idManager`)
);

CREATE TABLE IF NOT EXISTS `client`.`Staff` (
    `idStaff` INT(11) NOT NULL,
    `Staff_Name` VARCHAR(45) NULL DEFAULT NULL,
    PRIMARY KEY (`idStaff`)
);

