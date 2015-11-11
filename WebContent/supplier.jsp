<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page 
 import="java.io.*,
 java.util.*, 
 javax.servlet.*,
 java.util.Date,
 java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Page</title>
</head>
<%
	Date today = new Date();
	SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("MM/dd/yyyy");
	String mmddyyyyToday = DATE_FORMAT.format(today);
   
%>
<body>
<h1>Welcome Jd123, you are Supplier.</h1>
<br><br><p>Today's date is :<%= mmddyyyyToday %></p>
<br><br>
<form method="link" action="login.jsp">
    <input type="submit" value="Logout"/>
</form>
</body>
</html>