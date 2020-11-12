
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
   	<head>
	<link rel="stylesheet" href="mystyle.css">
	</head>
	<body>
	<div class="section">
            <br><br><br><br><br><br><br>
           <div class="snow1"></div>
		<div class="snow2"></div>
               <marquee><font size="18" color="yellow">WINTER SEMESTER COURSE REGISTRATION</font></marquee><br><br><br><br><br><br><br><br>
       
	</div>
            <br><br>
            <center><b><i><a href="course.jsp"><font size="6" color="red">REGISTER FOR THE COURSES</font></a></i></b><br><br><br>
                <b><i><font size="6" color="red">VIEW YOUR TIMETABLE</font></i></b><br><br>
                    <form method="post" action="retrieve.jsp">
            
                        <font color="blue">Registration number or User Id</font>
                        <input type="text" name="name">
            <input type="submit">
                    </form><br>
                    <a href='logout.jsp'><font size="4">Log out</font></a></center>
        </body>
</html>
