<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

 <h1>Welcome to : <%=c.getEmailid() %></h1>
 
 <h1><a href="cpwd">Change Password</a></h1>
 <h1><a href="home">LogOut</a></h1>

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
		<table width="100%" border=1>
		<tr>
			<th>Student ID</th>
			<th>Student First Name</th>
			<th>Student Last Name</th>
			<th>Student Email ID</th>
			<th>Student Address</th>
		</tr>
		
		 <tr>
		 <td><%=rs.getInt("id")%></td>
		 <td><%=rs.getString("firstname")%></td>
		 <td><%=rs.getString("lastname")%></td>
		 <td><%=rs.getString("emailid")%></td>
		 <td><%=rs.getString("address")%></td>
		 </tr>
		 
		</table>
		<form method="POST" action="modStd">
		<input type="hidden" name="txtEmail" value="<%=rs.getString("emailid")%>" />
		<input type="submit" value="Edit" />
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


 

<%-- 
<table width="100%" border=1>
<tr>
	<th>Student ID</th>
	<th>Student First Name</th>
	<th>Student Last Name</th>
	<th>Student Email ID</th>
	<th>Student Address</th>
</tr>
<c:forEach var="table" items="${rs.rows}">
 <tr>
 <td><c:out value="${table.id}"/></td>
 <td><c:out value="${table.firstname}"/></td>
 <td><c:out value="${table.lastname}"/></td>
 <td><c:out value="${table.emailid}"/></td>
 <td><c:out value="${table.address}"/></td>

 </tr>
 </c:forEach>  
</table>
--%> 
</body>
</html>