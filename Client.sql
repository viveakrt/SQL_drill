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

CREATE TABLE IF NOT EXISTS `client`.`Contract` (
    `idContract` INT NOT NULL,
    `idClient` INT NULL DEFAULT NULL,
    `Estimated_Cost` INT NULL DEFAULT NULL,
    `Completion_Date` DATE NULL DEFAULT NULL,
    PRIMARY KEY (`idContract`),
    FOREIGN KEY (`idClient`) REFERENCES `client`.`Client` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `client`.`Project` (
    `idStaff` INT NOT NULL,
    `idContract` INT NOT NULL,
    `Staff_Location` VARCHAR(100) NULL DEFAULT NULL,
    PRIMARY KEY (`idStaff`, `idContract`),
    FOREIGN KEY (`idStaff`) REFERENCES `client`.`Staff` (`idStaff`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`idContract`) REFERENCES `client`.`Contract` (`idContract`) ON DELETE NO ACTION ON UPDATE NO ACTION
);