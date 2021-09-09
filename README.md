# Course-Registration-Website-using-JSP(Netbeans and SQL Workbench)

Students can choose their courses, faculty and see their timetable.

To run the project, run the index.html file.

2 tables are required, reg has memebers table where all the login credentials are stored and course_reg has all the details of the courses and faculty choosen.


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

# USER REGISTRATION
![registration](https://user-images.githubusercontent.com/61344492/132629309-3859467c-54a1-4c3a-a92a-14c29c92438e.png)

# USER LOGIN
![login](https://user-images.githubusercontent.com/61344492/132629352-4435f171-a375-48a6-9379-dd4308cb98c6.png)

# COURSE REGISTRATION
![reg](https://user-images.githubusercontent.com/61344492/132629273-9b7d61a2-880e-4ad7-8c93-f74b41347a96.png)

# TIMETABLE
![tt](https://user-images.githubusercontent.com/61344492/132629338-7fd6796b-5412-48e9-b10b-873dc37678c5.png)


A pdf is also there which consists of the codes and screenshot of the project whith explaination.

