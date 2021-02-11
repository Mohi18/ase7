<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%!
String uname;
String upass;

Connection co;
Statement st;
ResultSet rs;

%>

<%
try
{   
	String uname=request.getParameter("uname");
	String upass=request.getParameter("upass");
	session.setAttribute("operation", "Login");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	co=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345");
	st=co.createStatement();
	rs=st.executeQuery("select * from user");
	RequestDispatcher reqd=null;
	if(rs.next()==true)
	{
		reqd=application.getRequestDispatcher("/Success.jsp");
		reqd.forward(request, response);
	}
	else
	{
		reqd=application.getRequestDispatcher("/failure.jsp");
		reqd.forward(request, response);
	
	}
	
	
	
}
catch(Exception e)
{
	out.println("Database not Connected");
}


%>
