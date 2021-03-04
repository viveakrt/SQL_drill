CREATE SCHEMA IF NOT EXISTS `doctor`;

CREATE TABLE IF NOT EXISTS `doctor`.`Doctor` (
    `idDoctor` INT NOT NULL AUTO_INCREMENT,
    `DoctorName` VARCHAR(100),
    `Secretory` VARCHAR(100),
    PRIMARY KEY (`idDoctor`)
);

CREATE TABLE IF NOT EXISTS `doctor`.`Patient` (
    `idPatient` INT NOT NULL AUTO_INCREMENT,
    `PatientName` VARCHAR(100),
    `PatientDOB` DATE,
    `PatentAddress` VARCHAR(100),
    `idDoctor` INT NOT NULL,
    PRIMARY KEY (`idPatient`),
    FOREIGN KEY (`idDoctor`) REFERENCES `doctor`.`Doctor` (`idDoctor`)
);

CREATE TABLE IF NOT EXISTS `doctor`.`Prescription` (
    `idPrescription` INT NOT NULL AUTO_INCREMENT,
    `Drug` VARCHAR(100),
    `Date` DATETIME,
    `Dosage` INT,
    `idPatient` INT NOT NULL,
    PRIMARY KEY (`idPrescription`),
    FOREIGN KEY (`idPatient`) REFERENCES `doctor`.`Patient` (`idPatient`)
);