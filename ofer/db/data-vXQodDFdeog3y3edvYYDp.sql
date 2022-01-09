DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `teacher_fullname` varchar(255) default NULL,
  `teacher_age` mediumint default NULL,
  `class_name` TEXT default NULL,
  `subject_name` TEXT default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`teacher_fullname`,`teacher_age`,`class_name`,`subject_name`)
VALUES
  ("Ian Walker",32,"YOD1","Computer"),
  ("Nina Pittman",33,"YOD2","Geography"),
  ("Samson Porter",47,"YOD3","Heshbon"),
  ("Anthony Barker",35,"YOD4","History"),
  ("Lilah Golden",57,"YOD5","Science"),
  ("Kiona Suarez",29,"YOD6","Sport");
