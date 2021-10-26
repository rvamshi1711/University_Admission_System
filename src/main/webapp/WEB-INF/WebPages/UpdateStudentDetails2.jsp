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
<meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<title>Insert title here</title>
<style type="text/css">
#goBack{
	position: absolute;
  left: 150px;
  top: 80px;
}
</style>
<%
Credentials c = (Credentials)request.getAttribute("cviewinfo"); 
%>

</head>
<body>

	<div class="container ">
        <div class="row">
            <div class="col-12">
            	
            	<% 
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uas","root","1234");
			    String ss= "SELECT * from student_details2 where emailid = '"+c.getEmailid()+"';";
			    System.out.println(ss);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(ss);
				int n=0;
				if(rs.next())
				{
					%>
					<a href="sdview" id="goBack" style="text-decoration:none"><button type="button" class="btn btn-primary" sytle="vertical-align:center;"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
  <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z"/>
</svg>Home</button></a>
					<div class="row justify-content-md-evenly">
        <div class="col-md-8" style="border: solid 0px; padding: 20px 30px; ">
        
            <form style="border: solid 1px; padding: 50px 60px; margin-top: 3vh; box-shadow:1px 1px 20px 0px;" method="post" action="StdUpdateProcess2" >
            <h3 style="text-align:center; padding-bottom:18px;">My Profile</h3>
            
            	<input type="hidden" name="emailid" class="form-control" value="<%=c.getEmailid()%>"  required />
                <div class="row g-2 justify-content-md-around">
                    
                <div class="col-md-6">
                <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput ff" placeholder="First Name" name="firstname" value="<%=rs.getString("firstname")%>"  required>
                <label for="floatingInput">First Name</label>
                </div>
                </div>
                <div class="col-md-4">
                <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="Last Name" name="lastname" value="<%=rs.getString("lastname")%>"  required>
                <label for="floatingInput">Last Name</label>
                </div>
                </div>
                
                </div>
    
                
    
                <div class="row g-2 justify-content-md-around">
                    
                <div class="col-md-3">
                <div class="form-floating mb-3">
                <input type="date" class="form-control" id="floatingInput" placeholder="Date of Birth" name="DOB" value="<%=rs.getDate("DOB")%>"  required>
                <label for="floatingInput">Date of Birth</label>
                </div>
                </div>
                <div class="col-md-3">
                <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingInput" placeholder="Mobile Number" maxlength="10" name="mn" value="<%=rs.getString("mn")%>"  required>
                <label for="floatingInput">Mobile Number</label>
                </div>
                </div>
                <div class="col-md-3">
                <div class="form-floating mb-3">
                <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="gender" value="<%=rs.getString("gender")%>"  required>
                <option selected>Open this select menu</option>
                <option value="m">Male</option>
                <option value="f">Female</option>
                <option value="o">Other</option>
                </select>
                <label for="floatingSelect">Gender</label>
                </div>
                </div>
                
                </div>
    
                <div class="row g-2 justify-content-md-around">
                    
                <div class="col-md-6">
                <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="Father Name" name="fathername" value="<%=rs.getString("fathername")%>"  required>
                <label for="floatingInput">Father Name</label>
                </div>
                </div>
                <div class="col-md-4">
                <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingInput" placeholder="Father Mobile Number" name="fmn" maxlength="10" value="<%=rs.getString("fmn")%>"  required> 
                <label for="floatingInput">Father Mobile Number</label>
                </div>
                </div>
                
                </div>
    
                <div class="row g-2 justify-content-md-around">
                    
                <div class="col-md-6">
                <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="Mother Name" name="mothername" value="<%=rs.getString("mothername")%>"  required>
                <label for="floatingInput">Mother Name</label>
                </div>
                </div>  
                <div class="col-md-4">
                <div class="form-floating mb-3">
                            <input type="tel" class="form-control" id="floatingInput" placeholder="Mother Mobile Number" name="mmn" value="<%=rs.getString("mmn")%>" maxlength="10"  >
                            <label for="floatingInput">Mother Mobile Number</label>
                            </div>
                        </div>
                
                </div>
    
                <div class="row g-2 justify-content-md-center"> 
                    <div class="col-md-11">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Address Line 1" name="add1" value="<%=rs.getString("add1")%>" required >
                            <label for="floatingInput">Address Line 1</label>
                            </div>
                        </div>
                    </div>
    
                <div class="row g-2 justify-content-md-around"> 
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Address Line 2" value="<%=rs.getString("add2")%>" name="add2">
                            <label for="floatingInput">Address Line 2</label>
                            </div>
                        </div>
    
                    <div class="col-md-4">
                    <div class="form-floating mb-3">
                        <input type="tel" class="form-control" id="floatingInput" placeholder="Mother Name" maxlength="6" name="pincode" value="<%=rs.getString("pincode")%>" required >
                            <label for="floatingInput">PIN Code</label>
                            </div>
                        </div>
                    </div>
                    
                    
                    <ul style="text-align: center;">
                <button type="submit" class="btn btn-success">Submit</button>
                    </ul>
                    
    			</form>
    			
                
                
                
                
               
    		</div>
    	</div>
    	
    	 <%
	}
}
catch (Exception e)
{
	System.out.println(e);
}

%> 
            	
      		</div>
      	</div>
     </div>	
     
     
     <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->

</body>
</html>