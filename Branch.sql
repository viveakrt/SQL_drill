CREATE SCHEMA IF NOT EXISTS `branch`;

CREATE TABLE IF NOT EXISTS `branch`.`Branch` (
    `Branch` INT(11) NOT NULL AUTO_INCREMENT,
    `Branch_Addr` VARCHAR(100) NULL DEFAULT NULL,
    PRIMARY KEY (`Branch`)
);

CREATE TABLE IF NOT EXISTS `branch`.`Book` (
    `ISBN` INT(20) NOT NULL,
    `Tittle` VARCHAR(100) NULL DEFAULT NULL,
    `Author` VARCHAR(100) NULL DEFAULT NULL,
    `Publisher` VARCHAR(100) NULL DEFAULT NULL,
    PRIMARY KEY (`ISBN`)
);


CREATE TABLE IF NOT EXISTS `branch`.`Supply` (
    `Branch` INT(11) NOT NULL,
    `ISBN` INT(20) NOT NULL,
    `Num_copies` INT(11) NULL DEFAULT NULL,
    PRIMARY KEY (`Branch`, `ISBN`),
    FOREIGN KEY (`Branch`) REFERENCES `mydb`.`Branch` (`Branch`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`ISBN`) REFERENCES `mydb`.`Book` (`ISBN`) ON DELETE NO ACTION ON UPDATE NO ACTION

);