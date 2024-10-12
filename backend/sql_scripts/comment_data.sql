use restaurant_review;
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

INSERT into comment (`comment_id`, `comment`, `comments_review_id`, `comments_user_id`, `datePosted`) VALUES (1, 'Where is the exact location of Takagi Ramen?', 1, 4, '2019-06-12');
INSERT into comment (`comment_id`, `comment`, `comments_review_id`, `comments_user_id`, `datePosted`) VALUES (2, 'I agree! all their dishes taste quite authentic.', 2, 5, '2019-05-24');
INSERT into comment (`comment_id`, `comment`, `comments_review_id`, `comments_user_id`, `datePosted`) VALUES (3, 'The staff at the restaurant are also super friendly.', 2, 1, '2019-04-02');