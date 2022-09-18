-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8 ;
USE `ecommerce` ;

-- -----------------------------------------------------
-- Table `ecommerce`.`PersonClient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`PersonClient` (
  `idClient` INT NOT NULL AUTO_INCREMENT,
  `ITIN` VARCHAR(45) NOT NULL,
  `FirstName` VARCHAR(45) NULL,
  `MiddleName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NULL,
  `Bdate` DATE NULL,
  `Sex` CHAR(1) NULL,
  `Street` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `ZipCode` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `ITIN_UNIQUE` (`ITIN` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`idClient` ASC) VISIBLE,
  PRIMARY KEY (`idClient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Clients` (
  `idClient` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `E-mail_UNIQUE` (`Email` ASC) VISIBLE,
  PRIMARY KEY (`idClient`),
  CONSTRAINT `fk_Clients_PersonClient1`
    FOREIGN KEY (`idClient`)
    REFERENCES `ecommerce`.`PersonClient` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Type of Payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Type of Payment` (
  `idTypeOfPayment` INT NOT NULL AUTO_INCREMENT,
  `idClient` INT NOT NULL,
  `CardNumber` VARCHAR(45) NULL,
  `CardholderName` VARCHAR(45) NULL,
  `ExpirationDate` DATE NULL,
  `CreditCardCompany` VARCHAR(45) NULL,
  PRIMARY KEY (`idTypeOfPayment`, `idClient`),
  INDEX `fk_Type of Payment_Clients1_idx` (`idClient` ASC) VISIBLE,
  CONSTRAINT `fk_Type of Payment_Clients1`
    FOREIGN KEY (`idClient`)
    REFERENCES `ecommerce`.`Clients` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Order` (
  `idOrder` INT NOT NULL AUTO_INCREMENT,
  `idClient` INT NOT NULL,
  `idTypeOfPayment` INT NOT NULL,
  PRIMARY KEY (`idOrder`, `idClient`, `idTypeOfPayment`),
  INDEX `fk_Order_Type of Payment1_idx` (`idTypeOfPayment` ASC) VISIBLE,
  INDEX `fk_Order_Clients1_idx` (`idClient` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Type of Payment1`
    FOREIGN KEY (`idTypeOfPayment`)
    REFERENCES `ecommerce`.`Type of Payment` (`idTypeOfPayment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Clients1`
    FOREIGN KEY (`idClient`)
    REFERENCES `ecommerce`.`Clients` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
ROW_FORMAT = DYNAMIC;


-- -----------------------------------------------------
-- Table `ecommerce`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Product` (
  `idProduct` INT NOT NULL AUTO_INCREMENT,
  `Category` VARCHAR(45) NULL,
  `Description` VARCHAR(45) NULL,
  `Price` FLOAT NULL,
  `Quantity` INT NULL,
  `Weight` FLOAT NULL,
  PRIMARY KEY (`idProduct`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Supplier` (
  `idSupplier` INT NOT NULL AUTO_INCREMENT,
  `RegisteredName` VARCHAR(45) NULL,
  `EIN` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `ZipCode` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`idSupplier`),
  UNIQUE INDEX `CNPJ_UNIQUE` (`EIN` ASC) VISIBLE)
ENGINE = InnoDB
COMMENT = '		';


-- -----------------------------------------------------
-- Table `ecommerce`.`Making a product available`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Making a product available` (
  `idSupplier` INT NOT NULL,
  `idProduct` INT NOT NULL,
  PRIMARY KEY (`idSupplier`, `idProduct`),
  INDEX `fk_Fornecedor_has_Produto_Produto1_idx` (`idProduct` ASC) VISIBLE,
  INDEX `fk_Fornecedor_has_Produto_Fornecedor_idx` (`idSupplier` ASC) VISIBLE,
  CONSTRAINT `fk_Fornecedor_has_Produto_Fornecedor`
    FOREIGN KEY (`idSupplier`)
    REFERENCES `ecommerce`.`Supplier` (`idSupplier`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fornecedor_has_Produto_Produto1`
    FOREIGN KEY (`idProduct`)
    REFERENCES `ecommerce`.`Product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`ProductOrder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`ProductOrder` (
  `idProduct` INT NOT NULL,
  `idOrder` INT NOT NULL,
  PRIMARY KEY (`idProduct`, `idOrder`),
  INDEX `fk_Produto_has_Pedido_Pedido1_idx` (`idOrder` ASC) VISIBLE,
  INDEX `fk_Produto_has_Pedido_Produto1_idx` (`idProduct` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_has_Pedido_Produto1`
    FOREIGN KEY (`idProduct`)
    REFERENCES `ecommerce`.`Product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_has_Pedido_Pedido1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `ecommerce`.`Order` (`idOrder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Seller`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Seller` (
  `idSeller` INT NOT NULL AUTO_INCREMENT,
  `RegisteredName` VARCHAR(45) NULL,
  `EIN` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `ZipCode` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`idSeller`),
  UNIQUE INDEX `EIN_UNIQUE` (`EIN` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Products per Seller`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Products per Seller` (
  `idSeller` INT NOT NULL,
  `idProducts` INT NOT NULL,
  `Quantity` INT NULL,
  PRIMARY KEY (`idSeller`, `idProducts`),
  INDEX `fk_Terceiro - Vendedor_has_Produto_Produto1_idx` (`idProducts` ASC) VISIBLE,
  INDEX `fk_Terceiro - Vendedor_has_Produto_Terceiro - Vendedor1_idx` (`idSeller` ASC) VISIBLE,
  CONSTRAINT `fk_Terceiro - Vendedor_has_Produto_Terceiro - Vendedor1`
    FOREIGN KEY (`idSeller`)
    REFERENCES `ecommerce`.`Seller` (`idSeller`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Terceiro - Vendedor_has_Produto_Produto1`
    FOREIGN KEY (`idProducts`)
    REFERENCES `ecommerce`.`Product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`OrderStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`OrderStatus` (
  `idOrderStatus` INT NOT NULL AUTO_INCREMENT,
  `idOrder` INT NOT NULL,
  `Status` VARCHAR(45) NULL,
  `TrackingCode` VARCHAR(45) NULL,
  PRIMARY KEY (`idOrderStatus`, `idOrder`),
  INDEX `fk_OrderStatus_Order1_idx` (`idOrder` ASC) VISIBLE,
  CONSTRAINT `fk_OrderStatus_Order1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `ecommerce`.`Order` (`idOrder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
