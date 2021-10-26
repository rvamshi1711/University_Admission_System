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

<title>Insert title here1</title>



    
        <style>
        #roundimage{
            border-radius: 50%;
        }
        .btn-block {
            display: block;
            min-width: 100%;
        }

    </style>

</head>
<body>


	


	    <div class="container ">
        <div class="row">
            <div class="col-12">
        
            <!--Navbar Section Starts-->
       
            <!--Navbar Section Ends-->
			
			<div id="demo">
			
			<% 
			try
			{
				String emailid = session.getAttribute("emailid").toString();
				Class.forName("com.mysql.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uas","root","1234");
			    String ss= "SELECT * from student_details2 where emailid = '"+emailid+"';";
			    System.out.println(ss);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(ss);
				int n=0;
				if(rs.next())
				{
					%>
					
					<div class="row justify-content-md-evenly">
        <div class="col-md-8" style="border: solid 0px; padding: 20px 30px; ">
        	<div style="border: solid 1px; padding: 50px 60px; margin-top: 3vh; box-shadow:1px 1px 20px 0px;">
            <form  >
            <h3 style="text-align:center; padding-bottom:18px;">Student Details</h3>
            
            	
                <div class="row g-2 justify-content-md-around">
                    
                <div class="col-md-6">
                <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput ff" placeholder="First Name" name="firstname" value="<%=rs.getString("firstname")%>" readonly required>
                <label for="floatingInput">First Name</label>
                </div>
                </div>
                <div class="col-md-4">
                <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="Last Name" name="lastname" value="<%=rs.getString("lastname")%>" readonly required>
                <label for="floatingInput">Last Name</label>
                </div>
                </div>
                
                </div>
    
                
    
                <div class="row g-2 justify-content-md-around">
                    
                <div class="col-md-3">
                <div class="form-floating mb-3">
                <input type="date" class="form-control" id="floatingInput" placeholder="Date of Birth" name="DOB" value="<%=rs.getDate("DOB")%>" readonly required>
                <label for="floatingInput">Date of Birth</label>
                </div>
                </div>
                <div class="col-md-3">
                <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingInput" placeholder="Mobile Number" maxlength="10" name="mn" value="<%=rs.getString("mn")%>" readonly required>
                <label for="floatingInput">Mobile Number</label>
                </div>
                </div>
                <div class="col-md-3">
                <div class="form-floating mb-3">
                <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="gender" value="<%=rs.getString("gender")%>" disabled required>
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
                <input type="text" class="form-control" id="floatingInput" placeholder="Father Name" name="fathername" value="<%=rs.getString("fathername")%>" readonly required>
                <label for="floatingInput">Father Name</label>
                </div>
                </div>
                <div class="col-md-4">
                <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingInput" placeholder="Father Mobile Number" name="fmn" maxlength="10" value="<%=rs.getString("fmn")%>" readonly required> 
                <label for="floatingInput">Father Mobile Number</label>
                </div>
                </div>
                
                </div>
    
                <div class="row g-2 justify-content-md-around">
                    
                <div class="col-md-6">
                <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="Mother Name" name="mothername" value="<%=rs.getString("mothername")%>" readonly required>
                <label for="floatingInput">Mother Name</label>
                </div>
                </div>  
                <div class="col-md-4">
                <div class="form-floating mb-3">
                            <input type="tel" class="form-control" id="floatingInput" placeholder="Mother Mobile Number" name="mmn" value="<%=rs.getString("mmn")%>" maxlength="10" readonly >
                            <label for="floatingInput">Mother Mobile Number</label>
                            </div>
                        </div>
                
                </div>
    
                <div class="row g-2 justify-content-md-center"> 
                    <div class="col-md-11">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Address Line 1" name="add1" value="<%=rs.getString("add1")%>" required readonly>
                            <label for="floatingInput">Address Line 1</label>
                            </div>
                        </div>
                    </div>
    
                <div class="row g-2 justify-content-md-around"> 
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Address Line 2" value="<%=rs.getString("add2")%>" name="add2"readonly>
                            <label for="floatingInput">Address Line 2</label>
                            </div>
                        </div>
    
                    <div class="col-md-4">
                    <div class="form-floating mb-3">
                        <input type="tel" class="form-control" id="floatingInput" placeholder="Mother Name" maxlength="6" name="pincode" value="<%=rs.getString("pincode")%>" required readonly>
                            <label for="floatingInput">PIN Code</label>
                            </div>
                        </div>
                    </div>
                    
                    
                    
    			</form>
    			
    			
    			</div>
    			
    		</div>
    	</div>
    	<%
	}
	
	else
	{
		%>
		  
  	
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