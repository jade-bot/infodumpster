DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  joined datetime NOT NULL,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY name (name)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE 'usernames.txt' REPLACE INTO TABLE user
LINES TERMINATED BY '\r\n' IGNORE 2 LINES (
  id,joined,name
);
