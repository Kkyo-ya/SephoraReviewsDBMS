use restaurant_review;
CREATE TABLE IF NOT EXISTS `restaurant_review`.`review` (
  `review_id` INT NOT NULL AUTO_INCREMENT,
  `review` VARCHAR(255) NOT NULL,
  `review_user_id` INT NOT NULL,
  `rating_star` VARCHAR(25) NOT NULL,
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

INSERT into review (`review_id`, `review`, `review_user_id`, `rating_star`, `datePosted`, `review_restaurant_id`) VALUES (1, 'Takagi Ramen serves delicious ramen at very affordable prices! The staff are also very friendly towards customers.', 1, '5 Star', '2019-04-25', 3);
INSERT into review (`review_id`, `review`, `review_user_id`, `rating_star`, `datePosted`, `review_restaurant_id`) VALUES (2, 'The food at Thai express is quite good.', 2, '4 Star', '2019-03-17', 2);
INSERT into review (`review_id`, `review`, `review_user_id`, `rating_star`, `datePosted`, `review_restaurant_id`) VALUES (3, 'The staff at Takagi Ramen are very patient.', 3, '5 Star', '2018-09-05', 3);
