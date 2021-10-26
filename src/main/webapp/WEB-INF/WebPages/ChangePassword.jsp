<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page isELIgnored="false" %>
  
  <%@ page import="com.try1.bean.*" %>
  
  <%
Credentials cs = (Credentials)request.getAttribute("cviewinfo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<script>
	
</script>
</head>
<body>t
<h1 style="text-align:center">
<a href="sdview">Student Info</a> &nbsp;&nbsp;|&nbsp;&nbsp;
<a href="cpwd">Change Password</a> &nbsp;&nbsp;|&nbsp;&nbsp;
<a href="login">Logout</a>
</h1>
<hr />


<h1>Welcome to : <%=cs.getEmailid() %></h1>
<form method="POST" action="changepwdprocess">


<table style="text-align:center">
<tr>
<td>Current Password : </td>
<td><input type="password" name="txtPresentPwd" id="txtPresentPwd" value=<%=cs.getPwd()%> readonly/></td>
</tr>

<tr>
<td>New Password : </td>
<td><input type="password" name="txtnPwd" /></td>
</tr>
<tr>
<td>Confirm Password : </td>
<td><input type="password" name="txtcPwd" /></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Change Password" /></td>
</tr>
</table>
</form>
</body>
</html>