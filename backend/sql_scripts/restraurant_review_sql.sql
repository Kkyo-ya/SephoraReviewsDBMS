-- MySQL Script generated by MySQL Workbench
-- Wed Dec 18 16:11:41 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema restaurant_review
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema restaurant_review
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `restaurant_review` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
USE `restaurant_review` ;

-- -----------------------------------------------------
-- Table `restaurant_review`.`account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurant_review`.`account` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NULL,
  `password` VARCHAR(35) NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `restaurant_review`.`restaurant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurant_review`.`restaurant` (
  `restaurant_id` INT NOT NULL AUTO_INCREMENT,
  `restaurant_name` VARCHAR(255) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `thumbnail` VARCHAR(255) NOT NULL,
  `images` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `operating_hours` VARCHAR(20) NOT NULL,
  `phone_number` VARCHAR(20) NOT NULL,
  `cost` VARCHAR(10) NOT NULL,
  `cuisine` VARCHAR(50) NOT NULL,
  `region` VARCHAR(50) NOT NULL,
  `category` VARCHAR(50) NOT NULL,
  `overall_rating_star` INT NOT NULL,
  `establishment_type` VARCHAR(100) NULL,
  `website` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`restaurant_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `restaurant_review`.`review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurant_review`.`review` (
  `review_id` INT NOT NULL AUTO_INCREMENT,
  `review` VARCHAR(255) NOT NULL,
  `review_user_id` INT NOT NULL,
  `rating_star` INT NOT NULL,
  `datePosted` DATE NOT NULL,
  `review_restaurant_id` INT NOT NULL,
  PRIMARY KEY (`review_id`),
  CONSTRAINT `review_user_id`
    FOREIGN KEY (`review_user_id`)
    REFERENCES `restaurant_review`.`account` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `review_restaurant_id`
    FOREIGN KEY (`review_restaurant_id`)
    REFERENCES `restaurant_review`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `restaurant_review`.`comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurant_review`.`comment` (
  `comment_id` INT NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(100) NULL,
  `comments_review_id` INT NOT NULL,
  `comments_user_id` INT NOT NULL,
  `datePosted` DATE NOT NULL,
  PRIMARY KEY (`comment_id`),
  CONSTRAINT `comments_review_id`
    FOREIGN KEY (`comments_review_id`)
    REFERENCES `restaurant_review`.`review` (`review_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `comments_user_id`
    FOREIGN KEY (`comments_user_id`)
    REFERENCES `restaurant_review`.`account` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
