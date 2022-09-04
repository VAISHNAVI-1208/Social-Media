CREATE DATABASE fakebook;
USE fakebook;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--user table
CREATE TABLE `user` (
  `user_id` int(100) NOT NULL PRIMARY KEY,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `username2` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `password2` varchar(100) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `cover_picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    --AUTO INCREMENT
    ALTER TABLE `user`
    MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

    --INSERT VALUE
    INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
    (0,'RJ','Kim','rj0412','rj0412',1992-12-04,'Male',9384629026,'wwhrj@gmail.com','wwhrj@gmail.com','admin0412','admin0412','upload/rj5.jfif','upload/rj1.jfif');
   
    --TRIGGERS
    CREATE TRIGGER inst 
    BEFORE INSERT ON user
    FOR EACH ROW
    SET NEW.username = LOWER(NEW.username);

    CREATE TRIGGER updt
    BEFORE UPDATE ON user
    FOR EACH ROW
    SET NEW.username = LOWER(NEW.username);

    CREATE TRIGGER inst2 
    BEFORE INSERT ON user
    FOR EACH ROW
    SET NEW.username = NEW.username2;

    CREATE TRIGGER updt2
    BEFORE UPDATE ON user
    FOR EACH ROW
    SET NEW.username = NEW.username2;



    --email trigger
    CREATE TRIGGER inst_email
    BEFORE INSERT ON user 
    FOR EACH ROW
    SET NEW.email = LOWER(NEW.email);

    CREATE TRIGGER upd_email
    BEFORE UPDATE ON user 
    FOR EACH ROW
    SET NEW.email = LOWER(NEW.email);


    --email2
    CREATE TRIGGER inst_email2
    BEFORE INSERT ON user 
    FOR EACH ROW
    SET NEW.email2 = LOWER(NEW.email2);

    CREATE TRIGGER upd_email2
    BEFORE UPDATE ON user 
    FOR EACH ROW
    SET NEW.email2 = LOWER(NEW.email2) ;
    --email12
    CREATE TRIGGER inst_email12
    BEFORE INSERT ON user 
    FOR EACH ROW
    SET NEW.email = NEW.email2;

    CREATE TRIGGER upd_email12
    BEFORE UPDATE ON user 
    FOR EACH ROW
    SET NEW.email = NEW.email2;

    ---trigger pwd
    CREATE TRIGGER inst_pwd
    BEFORE INSERT ON user 
    FOR EACH ROW
    SET NEW.password = NEW.password2;

    CREATE TRIGGER upd_pwd
    BEFORE UPDATE ON user 
    FOR EACH ROW
    SET NEW.password = NEW.password2;

--PHOTOS TABLE
CREATE TABLE `photos` (
  `photo_id` int(100) NOT NULL PRIMARY KEY,
  `location` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --AUTO INCREMENT
  ALTER TABLE `photos`
  MODIFY `photo_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

  --INSERT
  INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`) VALUES
  (1, 'upload/koya6.jfif', '1', '2022-01-13 10:38:02');


--POST TABLE
CREATE TABLE `post` (
  `post_id` int(100) NOT NULL PRIMARY KEY,
  `user_id` varchar(100) NOT NULL,
  `post_image` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `post`
MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`) VALUES
(0, '0', 'upload/bt21_2.jfif', 'Night with friends, moon and stars and you *u*', '');


--COMMENTS TABLE
CREATE TABLE `comments` (
  `comment_id` int(100) NOT NULL PRIMARY KEY,
  `post_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content_comment` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `comments`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`) VALUES
(0, '6', '1', 'Koya Kim', 'snow... >v<', 'upload/koya5.jfif', '');