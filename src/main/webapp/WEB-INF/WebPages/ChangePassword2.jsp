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
	function manage(txtcPwd){
		var bt = document.getElementById('btSubmit');
		var bt1 = document.getElementById('txtPresentPwd').value;
		var bt2 = document.getElementById('txtnPwd').value;
		var bt3 = document.getElementById('txtcPwd').value;
		if(bt1==<%=cs.getPwd()%>)
			{
				if(bt2==bt3)
					{
						bt.disabled = false;
					}
				else
					{
						bt.disabled = true;
					}
			}
	}
</script>
</head>
<body>
<h1 style="text-align:center">
<a href="sdview">Student Info</a> &nbsp;&nbsp;|&nbsp;&nbsp;
<a href="cpwd">Change Password</a> &nbsp;&nbsp;|&nbsp;&nbsp;
<a href="login">Logout</a>
</h1>
<hr />


<h1>Welcome to : <%=cs.getEmailid() %></h1>
<form method="POST" action="changepwdprocess">

<input type="hidden" name="txtEmail"  value=<%=cs.getEmailid()%> />
<table style="text-align:center">
<tr>
<td>Current Password : </td>
<td><input type="password" name="txtPresentPwd" id="txtPresentPwd"/></td>
</tr>

<tr>
<td>New Password : </td>
<td><input type="password" name="txtnPwd" id="txtnPwd"/></td>
</tr>
<tr>
<td>Confirm Password : </td>
<td><input type="password" name="txtcPwd" id="txtcPwd" onkeyup="manage(this)"/></td>
</tr>
<tr>
<td colspan="2"><input type="submit" id="btSubmit" disabled value="Change Password" /></td>
</tr>
</table>
</form>
</body>
</html>