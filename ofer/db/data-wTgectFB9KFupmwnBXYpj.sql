DROP TABLE IF EXISTS `Students`;

CREATE TABLE `Students` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `student_name` varchar(255) default NULL,
  `student_age` mediumint default NULL,
  `class_name` TEXT default NULL,
  `subjects` TEXT default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Students` (`student_name`,`student_age`,`class_name`,`subjects`)
VALUES
  ("Rose Nelson",18,"YOD1","Computer"),
  ("Emerald Powers",18,"YOD2","Geography"),
  ("Lesley Guerra",17,"YOD3","Heshbon"),
  ("Carol Hicks",18,"YOD4","History"),
  ("Burton Downs",18,"YOD5","Science"),
  ("Lev Erickson",17,"YOD6","Sport"),
  ("Allistair Alvarez",17,"YOD1","Tanach"),
  ("Eagan Parks",16,"YOD2","Computer"),
  ("Haley Conley",16,"YOD3","Geography"),
  ("Blythe Guerrero",17,"YOD4","Heshbon");
INSERT INTO `Students` (`student_name`,`student_age`,`class_name`,`subjects`)
VALUES
  ("Hayfa Gates",18,"YOD5","History"),
  ("Deacon Garrett",16,"YOD6","Science"),
  ("Burton Melendez",17,"YOD1","Sport"),
  ("Camilla Travis",18,"YOD2","Tanach"),
  ("Pascale Holder",18,"YOD3","Computer"),
  ("Shannon Horne",17,"YOD4","Geography"),
  ("Emily Robinson",17,"YOD5","Heshbon"),
  ("Ryan Davenport",16,"YOD6","History"),
  ("Brendan Nicholson",18,"YOD1","Science"),
  ("Carolyn Mcmillan",17,"YOD2","Sport");
INSERT INTO `Students` (`student_name`,`student_age`,`class_name`,`subjects`)
VALUES
  ("Prescott Valenzuela",18,"YOD3","Tanach"),
  ("Drew Mendoza",16,"YOD4","Computer"),
  ("Marvin Joyner",16,"YOD5","Geography"),
  ("Jacob Santana",17,"YOD6","Heshbon"),
  ("Glenna Soto",17,"YOD1","History"),
  ("Drew Hodge",18,"YOD2","Science"),
  ("Hayden Meadows",17,"YOD3","Sport"),
  ("Lenore Elliott",16,"YOD4","Tanach"),
  ("Griffith Shelton",17,"YOD5","Computer"),
  ("Genevieve Porter",16,"YOD6","Geography");
INSERT INTO `Students` (`student_name`,`student_age`,`class_name`,`subjects`)
VALUES
  ("Allen Burton",17,"YOD1","Heshbon"),
  ("Blythe Sparks",17,"YOD2","History"),
  ("Lynn Roach",18,"YOD3","Science"),
  ("Dorothy Foley",16,"YOD4","Sport"),
  ("Paki Kidd",17,"YOD5","Tanach"),
  ("Keegan Hartman",16,"YOD6","Computer"),
  ("Isabelle Nolan",17,"YOD1","Geography"),
  ("Wilma Calderon",18,"YOD2","Heshbon"),
  ("Elliott Kelley",17,"YOD3","History"),
  ("Darius Grimes",16,"YOD4","Science");
INSERT INTO `Students` (`student_name`,`student_age`,`class_name`,`subjects`)
VALUES
  ("Tyler Hughes",16,"YOD5","Sport"),
  ("Felicia Mcmahon",17,"YOD6","Tanach"),
  ("Benedict Bates",16,"YOD1","Computer"),
  ("Samantha Salazar",17,"YOD2","Geography"),
  ("Quail Moran",17,"YOD3","Heshbon"),
  ("Lucius Sellers",16,"YOD4","History"),
  ("Rajah Hurst",18,"YOD5","Science"),
  ("Jamal Harrington",17,"YOD6","Sport"),
  ("Gil Walters",17,"YOD1","Tanach"),
  ("Tiger Rivas",18,"YOD2","Computer");
INSERT INTO `Students` (`student_name`,`student_age`,`class_name`,`subjects`)
VALUES
  ("Brynn Mays",17,"YOD3","Geography"),
  ("Leo Chase",17,"YOD4","Heshbon"),
  ("Aretha Farrell",17,"YOD5","History"),
  ("Lacy Koch",17,"YOD6","Science"),
  ("Violet Wilkerson",18,"YOD1","Sport"),
  ("Vaughan Mullins",18,"YOD2","Tanach"),
  ("Frances Hines",17,"YOD3","Computer"),
  ("Isaiah Dillard",16,"YOD4","Geography"),
  ("Neil Russell",18,"YOD5","Heshbon"),
  ("Aaron Dale",16,"YOD6","History");
INSERT INTO `Students` (`student_name`,`student_age`,`class_name`,`subjects`)
VALUES
  ("Colorado Lucas",17,"YOD1","Science"),
  ("Dorian Avila",16,"YOD2","Sport"),
  ("Iona Weiss",18,"YOD3","Tanach"),
  ("Allen Peck",16,"YOD4","Computer"),
  ("Aristotle Smith",17,"YOD5","Geography"),
  ("Nelle Erickson",17,"YOD6","Heshbon"),
  ("Phillip Koch",17,"YOD1","History"),
  ("Blossom Lee",18,"YOD2","Science"),
  ("Carl Olson",18,"YOD3","Sport"),
  ("Hector Eaton",17,"YOD4","Tanach");
INSERT INTO `Students` (`student_name`,`student_age`,`class_name`,`subjects`)
VALUES
  ("Lenore Woods",16,"YOD5","Computer"),
  ("Abbot Roach",16,"YOD6","Geography"),
  ("Barbara Leon",17,"YOD1","Heshbon"),
  ("Tallulah Garcia",17,"YOD2","History"),
  ("Belle Knapp",17,"YOD3","Science"),
  ("Cassidy Brady",18,"YOD4","Sport"),
  ("Stella Riddle",18,"YOD5","Tanach"),
  ("Kennedy Nichols",17,"YOD6","Computer"),
  ("Lysandra Cantu",17,"YOD1","Geography"),
  ("Norman Cline",16,"YOD2","Heshbon");
INSERT INTO `Students` (`student_name`,`student_age`,`class_name`,`subjects`)
VALUES
  ("Austin Dickerson",16,"YOD3","History"),
  ("Coby Hopper",18,"YOD4","Science"),
  ("Claudia Mcintyre",17,"YOD5","Sport"),
  ("Aspen Blankenship",17,"YOD6","Tanach"),
  ("Julie Herman",18,"YOD1","Computer"),
  ("Sigourney Farrell",18,"YOD2","Geography"),
  ("Mia Mcclure",17,"YOD3","Heshbon"),
  ("Adena Bradford",16,"YOD4","History"),
  ("Dana Hayes",18,"YOD5","Science"),
  ("Honorato Porter",16,"YOD6","Sport");
INSERT INTO `Students` (`student_name`,`student_age`,`class_name`,`subjects`)
VALUES
  ("Kitra Oneil",18,"YOD1","Tanach"),
  ("Kylynn Zamora",17,"YOD2","Computer"),
  ("Virginia Morton",17,"YOD3","Geography"),
  ("Anne Hewitt",16,"YOD4","Heshbon"),
  ("Blake Hewitt",16,"YOD5","History"),
  ("Astra Carey",16,"YOD6","Science"),
  ("Emerson Stephens",17,"YOD1","Sport"),
  ("Hector Wells",17,"YOD2","Tanach"),
  ("Anne Evans",16,"YOD3","Computer"),
  ("Yasir Merrill",16,"YOD4","Geography");
