<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 style="color: red;" align="center"> Durga Software Solution</h2>
<h3 style="color: blue;" align="center"> User<%= session.getAttribute("operation") %> Status</h3>
<h1 style="color: red;" align="center">User <%= session.getAttribute("operation") %> Failure </h1>
<h3 align="center">
<a href="./LoginForm.jsp">|Login Form|</a>
</h3>
</body>
</html>