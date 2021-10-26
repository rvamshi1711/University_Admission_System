<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    
<%@ page isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <%@ page isELIgnored="false" %>
  
  <%@ page import="com.try1.bean.*" %>
  <%@ page import="java.util.*" %>
  
  <%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Credentials c = (Credentials)request.getAttribute("cviewinfo"); 
%>


<h1 style="text-align:center">
<a href="/sdview">Home</a>
</h1>

<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uas","root","1234");
    String ss= "SELECT * from student_details where emailid = '"+c.getEmailid()+"';";
    System.out.println(ss);
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(ss);
	int n=0;
	if(rs.next())
	{
		%>
<form  method="POST" action="StdUpdateProcess">
<input type="text" name="rno" value="<%=rs.getInt("id")%>" readonly="readonly" />
<br />
<input type="text" name = "firstname" value="<%=rs.getString("firstname")%>" />
<br />
<input type="text" name = "lastname" value="<%=rs.getString("lastname")%>" />
<br />
<input type="text" name="emailid" value="<%=rs.getString("emailid")%>" readonly="readonly" />
<br />
<input type="text" name="address" value="<%=rs.getString("address")%>" />
<br />
<input type="submit" value="Update Student Details" />
</form>
<%
	}
	
	else
	{
		%>
		 <h1><a href="add">Add Student details</a></h1>
		 <%
	}
}
catch (Exception e)
{
	System.out.println(e);
}

%>
</body>
</html>