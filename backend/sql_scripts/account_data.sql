use restaurant_review;
CREATE TABLE IF NOT EXISTS `restaurant_review`.`account` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NULL,
  `password` VARCHAR(35) NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;

INSERT into account (`user_id`, `first_name`, `last_name`, `password`, `username`, `email`) VALUES (1, 'Ashleigh', 'Chia', 'ashleigh12345', 'ashleighchia', 'ashleighchia@gmail.com');
INSERT into account (`user_id`, `first_name`, `last_name`, `password`, `username`, `email`) VALUES (2, 'John', 'Tay', 'tay1357', 'john_tay', 'john_tay12@gmail.com');
INSERT into account (`user_id`, `first_name`, `last_name`, `password`, `username`, `email`) VALUES (3, 'Alex', 'Sim', 'alexsim', 'sim0123', 'alexsim@gmail.com');
