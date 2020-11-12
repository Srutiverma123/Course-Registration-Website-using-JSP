<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
html,
body {
    background:url(board.jpg);
}
</style>
    </head>
    <body>
        <center>
            <br><br><br><br>
       <form method="post" action="course_final.jsp">
            <font color="blue">REGISTRATION NUMBER</font>
            <input type="text" name="R"><br><br><br>
           <label><font color="white"><b>A SLOT(CORE)</b></font></label><br><br>
  <select id="s1" name="s1">
      <option value="Java">Java</option>
  </select>
  <select id="f1" name="f1">
    <option value="Menaka Pushpa">Menaka Pushpa</option>
    <option value="Sridevi">Sridevi</option>
    <option value="Satish Kumar">Satish Kumar</option>
    <option value="Rajeshwari M">Rajeshwari M</option>
  </select><br><br><br>
        
  <label><font color="white"><b>B SLOT(CORE)</b></font></label><br><br>
  <select id="s2" name="s2">
    <option value="Parallel & Distributed Computing">Parallel & Distributed Computing</option>
  </select>
  <select id="f2" name="f2">
    <option value="Harini">Harini S</option>
    <option value="Gayathri">Gayathri R</option>
    <option value="Parvathi">Parvathi S</option>
  </select><br><br><br>
  <label><font color="white"><b>C SLOT(CORE)</b></font></label><br><br>
  <select id="s3" name="s3">
    <option value="Linear Algebra">Linear Algebra</option>
  </select>
  <select id="f3" name="f3">
    <option value="Saroj Kumar">Saroj Kumar</option>
    <option value="Radha S">Radha S</option>
    <option value="Senthil Kumar">Senthil Kumar</option>
  </select><br><br><br>
  <label><font color="white"><b>D SLOT(ELECTIVE)</b></font></label><br><br>
  <select id="s4" name="s4">
    <option value="Accounting Management">Accounting Management</option>
    <option value="Biotechnology Management">Biotechnology Management</option>
    <option value="Communication Management">Communication Management</option>
  </select>
  <select id="f4" name="f4">
    <option value="New Faculty">New Faculty</option>
  </select><br><br><br>
  <input type="submit">
       </form></center>
    </body>
</html>
