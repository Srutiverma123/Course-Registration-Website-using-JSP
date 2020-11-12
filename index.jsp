<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
body {
  background-image: url('books.jpg');
}
</style>
    </head>
    <body>
        <form method="post" action="login.jsp">
            <center><br><br><br><br><br><br><br><br><br><br>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2"><font color="red">Login Here</font></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><font color="blue">User Name</font></td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="green">Password</font></td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><font color="purple">Yet Not Registered!!</font> <font color="purple"><a href="reg.jsp">Register Here</a></font></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>