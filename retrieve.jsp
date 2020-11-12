<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "course_reg";
String userid = "root";
String password = "SONU";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=800, initial-scale=1" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <style type="text/css">
    @import url(https://fonts.googleapis.com/css?family=Nobile:400italic,700italic);
@import url(https://fonts.googleapis.com/css?family=Dancing+Script);
* {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
body {
  background: #E5E5E5;
  
  background-image: url("tt.jpg");
  padding: 50px;
}

#card-front {
  color: #FFDFDF;
}

#card, #card-front, #card-inside {
  height: 480px;
}

.wrap {
    padding: 1.5em 2.5em;
    height: 100%;
}
#card-front, #card-inside {
  width: 60%;
  -webkit-box-shadow: 2px 2px 30px rgba(0, 0, 0, .25), 0 0 1px rgba(0, 0, 0, .5);
  -moz-box-shadow: 2px 2px 30px rgba(0, 0, 0, .25), 0 0 1px rgba(0, 0, 0, .5);
  box-shadow: 2px 2px 30px rgba(0, 0, 0, .25), 0 0 1px rgba(0, 0, 0, .5);
  position: absolute;
  left: 50%;
}


#card-inside .wrap {
    background: #FFEFEF;
    -webkit-box-shadow: inset 2px 0 1px rgba(0, 0, 0, .05);
    -moz-box-shadow: inset 2px 0 1px rgba(0, 0, 0, .05);
    box-shadow: inset 2px 0 1px rgba(0, 0, 0, .05);
}
#card {
    max-width: 860px;
    margin: 0 auto;
    transform-style: preserve-3d;
    -moz-transform-style: preserve-3d;
    -webkit-transform-style: preserve-3d;
    perspective: 5000px;
    -moz-perspective: 5000px;
    -webkit-perspective: 5000px;
    position: relative;
}

#card h1 {
    text-align: center;
    font-family: 'Nobile', sans-serif;
    font-style: italic;
    font-size: 70px;
    text-shadow: 
        4px 4px 0px rgba(0, 0, 0, .15),
        1px 1px 0 rgba(255, 200, 200, 255),
        2px 2px 0 rgba(255, 150, 150, 255),
        3px 3px 0 rgba(255, 125, 125, 255);
    color: #FFF;
}
#card-inside {
    font-size: 1.1em;
    line-height: 1.4;
    font-family: 'Nobile';
    color: #331711;
    font-style: italic;
}

p {
    margin-top: 1em;
}

p:first-child {
    margin-top: 0;
}

p.signed {
    margin-top: 1.5em;
    text-align: center;
    font-family: 'Dancing Script', sans-serif;
    font-size: 1.5em;
}

#card-front {
    background-color: #FF5555;
    background-image: linear-gradient(top, #FF5555 0%, #FF7777 100%);
    background-image: -moz-linear-gradient(top, #FF5555 0%, #FF7777 100%);
    background-image: -webkit-linear-gradient(top, #FF5555 0%, #FF7777 100%);
            transform-origin: left;
       -moz-transform-origin: left;
    -webkit-transform-origin: left;
            transition:         transform 1s linear;
       -moz-transition:    -moz-transform 1s linear;
    -webkit-transition: -webkit-transform 1s linear;
    position: relative;
}

#card-front .wrap {
            transition: background 1s linear;
       -moz-transition: background 1s linear;
    -webkit-transition: background 1s linear;
}

#card-front button {
  position: absolute;
  bottom: 1em;
  right: -12px;
  background: #F44;
  color: #FFF;
  font-family: 'Nobile', sans-serif;
  font-style: italic;
  font-weight: bold;
  font-size: 1.5em;
  padding: .5em;
  border: none;
  cursor: pointer;
          box-shadow: 2px 2px 3px rgba(0, 0, 0, .25), 0 0 1px rgba(0, 0, 0, .4);
     -moz-box-shadow: 2px 2px 3px rgba(0, 0, 0, .25), 0 0 1px rgba(0, 0, 0, .4);
  -webkit-box-shadow: 2px 2px 3px rgba(0, 0, 0, .25), 0 0 1px rgba(0, 0, 0, .4);
}

#card-front button:hover,
#card-front button:focus {
  background: #F22;
}

#close {
  display: none;
}

#card.open-fully #close,
#card-open-half #close {
  display: inline;
}

#card.open-fully #open {
  display: none;
}


#card.open-half #card-front,
#card.close-half #card-front {
            transform: rotateY(-90deg);
       -moz-transform: rotateY(-90deg);
    -webkit-transform: rotateY(-90deg);
}
#card.open-half #card-front .wrap {
    background-color: rgba(0, 0, 0, .5);
}

#card.open-fully #card-front,
#card.close-half #card-front {
  background: #FFEFEF;
}

#card.open-fully #card-front {
    transform: rotateY(-180deg);
    -moz-transform: rotateY(-180deg);
    -webkit-transform: rotateY(-180deg);
}

#card.open-fully #card-front .wrap {
    background-color: rgba(0, 0, 0, 0);
}

#card.open-fully #card-front .wrap *,
#card.close-half #card-front .wrap * {
   display: none;
}

footer {
  max-width: 500px;
  margin: 40px auto;
  font-family: 'Nobile', sans-serif;
  font-size: 14px;
  line-height: 1.6;
  color: #888;
  text-align: center;
}
  </style>
    </head>
    
<body>
     <div id="card">
    <div id="card-inside">
      <div class="wrap">
          <p>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String id = request.getParameter("name");  
resultSet = statement.executeQuery("select * from sub where R='" + id + "'");
while(resultSet.next()){
%>
<br>
A SLOT SUBJECT:
<%=resultSet.getString("S1") %>
<br>
A SLOT FACULTY:
<%=resultSet.getString("F1") %>
<br><br><br>
B SLOT SUBJECT:
<%=resultSet.getString("S2") %>
<br>
B SLOT FACULTY:
<%=resultSet.getString("F2") %>
<br><br><br>
C SLOT SUBJECT:
<%=resultSet.getString("S3") %>
<br>
C SLOT FACULTY:
<%=resultSet.getString("F3") %>
<br><br><br>
D SLOT SUBJECT:
<%=resultSet.getString("S4") %>
<br>
D SLOT FACULTY:
<%=resultSet.getString("F4") %>
<br><br><br>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<a href='logout.jsp'><font size="4">Log out</font></a>
           </p> 
      </div>
    </div>
    <div id="card-front">
      <div class="wrap">
          <h1> TIMETABLE</h1>	
      </div>
      <button id="open">&gt;</button>
      <button id="close">&lt;</button>
    </div>
  </div>
  <script>
    (function() {
  function $(id) {
    return document.getElementById(id);
  }

  var card = $('card'),
      openB = $('open'),
      closeB = $('close'),
      timer = null;
  console.log('wat', card);
  openB.addEventListener('click', function () {
    card.setAttribute('class', 'open-half');
    if (timer) clearTimeout(timer);
    timer = setTimeout(function () {
      card.setAttribute('class', 'open-fully');
      timer = null;
    }, 1000);
  });

  closeB.addEventListener('click', function () {
    card.setAttribute('class', 'close-half');
    if (timer) clearTimerout(timer);
    timer = setTimeout(function () {
      card.setAttribute('class', '');
      timer = null;
    }, 1000);
  });

}());

  </script>

</body>
</html>