<%@ page import ="java.sql.*" %>
<%
    String r = request.getParameter("R");  String s1 = request.getParameter("s1");    String f1 = request.getParameter("f1");
    String s2 = request.getParameter("s2");String f2 = request.getParameter("f2");String s3 = request.getParameter("s3");
    String f3 = request.getParameter("f3");String s4 = request.getParameter("s4");
    String f4 = request.getParameter("f4");
    Connection con=null;
    Statement st=null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/course_reg","root", "SONU");
    st = con.createStatement();
    int i = st.executeUpdate("insert into sub(R,S1,F1,S2,F2,S3,F3,S4,F4,regdate) values ('" + r + "','" + s1 + "','" + f1 + "','" + s2 + "','" + f2 + "','" + s3 + "','" + f3 + "', '" + s4 + "','" + f4 + "',CURDATE())");
    if (i > 0) {
        response.sendRedirect("success.jsp");
    }}
    catch(Exception e){out.println(e);}
%>