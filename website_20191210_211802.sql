-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`username` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`email` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`password` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`phone` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`age` Int( 3 ) NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `unique_email` UNIQUE( `email` ),
	CONSTRAINT `unique_phone` UNIQUE( `phone` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 18;
-- -------------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`username`,`email`,`password`,`phone`,`age`) VALUES 
( '18', 'vasa', 'vasa@gmail.com', '111111', '+380735070005', '25' ),
( '21', 'vasa', 'vasa2@gmail.com', '111111', '+380735070008', '25' ),
( '26', 'vasa', 'vasa3333@gmail.com', '111111', '+380735070001', '25' ),
( '32', 'vasa', 'vasa222@gmail.com', '111111', '+380735070007', '25' ),
( '35', 'vasa', 'vasa22sss2@gmail.com', '111111', '+380735070004', '25' ),
( '42', 'vasa', 'vasa322@gmail.com', '111111', '+380735071008', '25' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


