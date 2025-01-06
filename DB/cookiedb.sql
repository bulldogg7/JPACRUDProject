-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cookiedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cookiedb` ;

-- -----------------------------------------------------
-- Schema cookiedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cookiedb` DEFAULT CHARACTER SET utf8 ;
USE `cookiedb` ;

-- -----------------------------------------------------
-- Table `cookie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cookie` ;

CREATE TABLE IF NOT EXISTS `cookie` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL DEFAULT 'Chocolate Chip',
  `base` VARCHAR(45) NOT NULL DEFAULT 'Sugar Cookie',
  `contents` VARCHAR(45) NOT NULL DEFAULT 'Chocolate Chips',
  `frosting` VARCHAR(50) NOT NULL DEFAULT 'Cream Cheese',
  `topping` VARCHAR(50) NOT NULL DEFAULT 'Rainbow Sprinkles',
  `calories_quarter` INT NOT NULL DEFAULT 180,
  `sugar_grams_quarter` INT NOT NULL DEFAULT 10,
  `price` DECIMAL(5,2) NULL DEFAULT 5.99,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS cookiebaker@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'cookiebaker'@'localhost' IDENTIFIED BY 'cookiebaker';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'cookiebaker'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `cookie`
-- -----------------------------------------------------
START TRANSACTION;
USE `cookiedb`;
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (1, 'Classic Chocolate Chip', 'Original Cookie', 'Chocolate Chips', 'None', 'None', 180, 10, 3.79);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (2, 'Snickerdoodle', 'Snickerdoodle', 'None', 'None', 'None', 150, 8, 3.99);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (3, 'Cosmic Brownie', 'Brownie Cookie', 'Chocolate Chunks', 'Chocolate', 'Rainbow Chocolate Candies', 170, 15, 5.19);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (4, 'Oatmeal Raisin', 'Oatmeal Cookie', 'Oats & Raisins', 'None', 'None', 190, 14, 4.09);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (5, 'Red Velvet', 'Red Velvet Cake', 'White Chocolate Chips', 'Cream Cheese', 'Red Velvet Crumbles', 170, 15, 5.29);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (6, 'Vanilla Sugar', 'Sugar Cookie', 'None', 'Vanilla Buttercream', 'None', 190, 16, 4.19);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (7, 'Churro', 'Cinnamon Cookie', 'None', 'Cinnamon Buttercream', 'Cinnamon Sugar', 210, 18, 5.19);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (8, 'Raspberry Cheesecake', 'Cheesecake Batter', 'None', 'Cream Cheese Buttercream', 'Raspberry Glaze', 220, 19, 5.39);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (9, 'Cookies & Cream', 'Original Cookie', 'Chocolate Chips', 'Cream Cheese Icing', 'Oreo Crumbles', 150, 11, 5.19);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (10, 'Classic Peanut Butter', 'Peanut Butter Cookie', 'None', 'None', 'None', 160, 7, 3.79);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (11, 'Double Chocolate Chip', 'Chocolate Cookie', 'Chocolate Chips', 'None', 'None', 170, 13, 3.99);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (12, 'S\'mores', 'Original Cookie', 'Chocolate Chips', 'Chocolate Icing', 'Marshmellow & Graham Cracker', 190, 15, 4.89);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (13, 'Lemon Poppy Seed', 'Lemon Cookie', 'Poppy Seeds', 'Lemon Icing', 'None', 120, 13, 4.59);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (14, 'Strawberry Cupcake', 'Cheesecake Batter', 'None', 'Strawberry Buttercream', 'White Sprinkles', 210, 18, 5.09);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (15, 'Peanut Butter M&M\'s', 'Peanut Butter Cookie', 'Peanut Butter Chips & M&M\'s', 'None', 'None', 180, 12, 4.29);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (16, 'Brownie Batter', 'Brownie Cookie', 'Chocolate Chips', 'None', 'None', 140, 11, 4.39);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (17, 'Pumpkin Chocolate Chip', 'Pumpkin Cake', 'Chocolate Chips', 'None', 'None', 80, 8, 4.19);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (18, 'Cinnamon Roll', 'Cinnamon Cookie', 'None', 'Cream Cheese Buttercream', 'Cinnamon Icing', 220, 18, 5.19);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (19, 'Chocolate Chip Salted Caramel', 'Original Cookie', 'Chocolate & Caramel Chips', 'None', 'Salt Flakes', 210, 19, 4.49);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (20, 'Lemon Bar', 'Lemon Cookie', 'None', 'Lemon Frosting', 'None', 190, 15, 4.79);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (21, 'Brownie Cookie', 'Brownie Cookie', 'Chocolate Chips', 'None', 'None', 170, 12, 3.99);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (22, 'Fruit Pizza', 'Sugar Cookie', 'None', 'Cream Cheese Frosting', 'Fruit Pieces', 160, 14, 4.59);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (23, 'Reese\'s Peanut Butter Cup', 'Peanut Butter Cookie', 'Peanut Butter Chips', 'Chocolate Icing', 'Reese\'s Crumbles', 200, 16, 4.89);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (24, 'Buttermilk Pancake', 'Pancake Batter', 'None', 'Maple Frosting', 'Vanilla Buttercream', 160, 19, 4.39);
INSERT INTO `cookie` (`id`, `name`, `base`, `contents`, `frosting`, `topping`, `calories_quarter`, `sugar_grams_quarter`, `price`) VALUES (25, 'Chocolate Chunk', 'Original Cookie', 'Chocolate Chunks', 'None', 'None', 190, 9, 4.29);

COMMIT;

