CREATE SCHEMA IF NOT EXISTS `doctor`;

CREATE TABLE IF NOT EXISTS `doctor`.`Doctor` (
    `idDoctor` INT NOT NULL AUTO_INCREMENT,
    `DoctorName` VARCHAR(100),
    `Secretory` VARCHAR(100)
    PRIMARY KEY (`idDoctor`)
);

