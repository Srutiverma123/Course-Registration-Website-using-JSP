# Course-Registration-Website-using-JSP
Students can choose their courses, faculty and see their timetable

To run the project, run the index.html file.

2 tables are required, reg has memebers table where all the login credentials are stored and course_reg has all the details of the courses and faculty choosen.

Demo of the project: https://drive.google.com/file/d/129bmjkir5N6I4yDKAdY0mCnbzNn3cqRH/view?usp=drivesdk

A word doc is also there which consists of the codes and screenshot of the project whith a little explaination.


CREATE TABLE `sub` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `R` varchar(45) NOT NULL,
  `S1` varchar(45) NOT NULL,
  `F1` varchar(45) NOT NULL,
  `S2` varchar(45) NOT NULL,
  `F2` varchar(45) NOT NULL,
  `S3` varchar(45) NOT NULL,
  `F3` varchar(45) NOT NULL,
  `S4` varchar(45) NOT NULL,
  `F4` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
