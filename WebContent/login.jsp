<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body bgcolor="#E6FFB2">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>LAB 1 CS 518</title>
</head>
<body>
	<h3 align=\"center\">Login page</h3>
	<center>
		<form action=LoginServlet>
			<table border=0>

				
				<tr>
					<td>User Name:</td>
					<td><input type="text" name="user" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="pass" /></td>
				</tr>

				<tr>
					<td>Select your role:</td>
				</tr>
				<br />
				<tr>
					<td><INPUT TYPE="radio" NAME="radios" VALUE="radio1">Supplier<BR></td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="radios" VALUE="radio2">Wholesaler<BR></td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="radios" VALUE="radio3">Retailer<BR></td>
				</tr>
				<tr>
					<td><INPUT TYPE="radio" NAME="radios" VALUE="radio4">Customer</td>
				</tr>

				<tr>
					<td><input type="submit" value="Login" /></td>
				</tr>
			</table>
		</form>
	</center>
	<%
	String login_msg=(String)request.getAttribute("error");  
	if(login_msg!=null)
		out.println("<font color=red size=16px>"+login_msg+"</font>");
	
	String login_msg2=(String)request.getAttribute("error2");  
	if(login_msg2!=null)
		out.println("<font color=black size=16px>"+login_msg2+"</font>");
	
	String login_msg3=(String)request.getAttribute("error3");  
	if(login_msg3!=null)
		out.println("<font color=blue size=16px>"+login_msg3+"</font>");
	
	String login_msg4=(String)request.getAttribute("error4");  
	if(login_msg4!=null)
		out.println("<font color=blue size=16px>"+login_msg4+"</font>");
	
	/* 	String login_msg5=(String)request.getAttribute("error5");  
	if(login_msg5!=null)
		out.println("<font color=red size=16px>"+login_msg5+"</font>"); */
	
%>
</body>
</html>