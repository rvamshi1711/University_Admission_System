<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ page import="com.try1.bean.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" />
<title>New Student</title>

</head>
<body>

<%
Credentials c = (Credentials)request.getAttribute("cviewinfo"); 
%>

<form method="POST"  action="studentdetailsprocess">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">

Student FirstName :
<input type="text" name="firstname" class="form-control" required />
<br />
Student LastName :
<input type="text" name="lastname" class="form-control" required />
<br />

Student Email ID :
<input type="email" name="emailid" class="form-control" value="<%=c.getEmailid()%>" readonly required />
<br />

Student Address: 
<textarea name="address" cols="30" rows="5" class="form-control" required>Address here</textarea>
<br />
<br />
<div class="row">
<div class="col-md-12" style="text-align:center">
<input type="submit"  value="Add details" class="btn btn-success" />
</div>
</div>

</div>
<div class="col-md-3"></div>
</div>
</form>

</body>
</html>