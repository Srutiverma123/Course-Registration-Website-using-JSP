<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
         <style>
body {
  background-image: url('register.jpg');
}
table{
    border: 1px white;
}
</style>
    </head>
    <body>
        <form method="post" action="registration.jsp">
            <br><br><br><br><br><br><br>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"><font color="white">Enter Information Here</font></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><font color="white">First Name</font></td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Last Name</font></td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Email</font></td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">User Name</font></td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Password</font></td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><font color="white">Already registered!!</font> <a href="index.jsp"><font color="white">Login Here</font></a></td>
                    </tr>
                </tbody>
            </table>
   
        </form>
    </body>
</html>