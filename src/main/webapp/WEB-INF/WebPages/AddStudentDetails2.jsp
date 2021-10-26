<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page isELIgnored="false" %>
    <%@ page import="com.try1.bean.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <style>
        #try{
            position: absolute;
            left: 150px;
            top: 100px;
            color: black;
        }
    </style>

<title>Insert title here</title>
</head>
<body>

<%
Credentials c = (Credentials)request.getAttribute("cviewinfo"); 
%>

    <div class="container">
        <div class="row">
            <div class="col-12">
	
	    <div id="try">
        <a href="sdview">
            <button type="button" class="btn btn-dark">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-backspace-fill" viewBox="0 0 16 16">
                    <path d="M15.683 3a2 2 0 0 0-2-2h-7.08a2 2 0 0 0-1.519.698L.241 7.35a1 1 0 0 0 0 1.302l4.843 5.65A2 2 0 0 0 6.603 15h7.08a2 2 0 0 0 2-2V3zM5.829 5.854a.5.5 0 1 1 .707-.708l2.147 2.147 2.146-2.147a.5.5 0 1 1 .707.708L9.39 8l2.146 2.146a.5.5 0 0 1-.707.708L8.683 8.707l-2.147 2.147a.5.5 0 0 1-.707-.708L7.976 8 5.829 5.854z"/>
                </svg>
                Back</button>
            
        </a>
        
    </div>


    <div class="row justify-content-md-evenly">
        <div class="col-md-8" style="border: solid 0px; padding: 20px 30px; ">
        
            <form style="border: solid 1px; padding: 50px 60px; margin-top: 3vh; box-shadow:1px 1px 20px 0px;" method="POST" action="studentdetailsprocess2" >
            <h3 style="text-align:center; padding-bottom:18px;">My Profile</h3>
            
            	<input type="hidden" name="emailid" class="form-control" value="<%=c.getEmailid()%>" readonly required />
                <div class="row g-2 justify-content-md-around">
                    
                <div class="col-md-6">
                <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="First Name" name="firstname" required>
                <label for="floatingInput">First Name</label>
                </div>
                </div>
                <div class="col-md-4">
                <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="Last Name" name="lastname" required>
                <label for="floatingInput">Last Name</label>
                </div>
                </div>
                
                </div>
    
                
    
                <div class="row g-2 justify-content-md-around">
                    
                <div class="col-md-3">
                <div class="form-floating mb-3">
                <input type="date" class="form-control" id="floatingInput" placeholder="Date of Birth" name="DOB" required>
                <label for="floatingInput">Date of Birth</label>
                </div>
                </div>
                <div class="col-md-3">
                <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingInput" placeholder="Mobile Number" maxlength="10" name="mn" required>
                <label for="floatingInput">Mobile Number</label>
                </div>
                </div>
                <div class="col-md-3">
                <div class="form-floating mb-3">
                <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="gender" required>
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
                <input type="text" class="form-control" id="floatingInput" placeholder="Father Name" name="fathername" required>
                <label for="floatingInput">Father Name</label>
                </div>
                </div>
                <div class="col-md-4">
                <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingInput" placeholder="Father Mobile Number" name="fmn" maxlength="10" required> 
                <label for="floatingInput">Father Mobile Number</label>
                </div>
                </div>
                
                </div>
    
                <div class="row g-2 justify-content-md-around">
                    
                <div class="col-md-6">
                <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="Mother Name" name="mothername" required>
                <label for="floatingInput">Mother Name</label>
                </div>
                </div>  
                <div class="col-md-4">
                <div class="form-floating mb-3">
                            <input type="tel" class="form-control" id="floatingInput" placeholder="Mother Mobile Number" name="mmn" maxlength="10">
                            <label for="floatingInput">Mother Mobile Number</label>
                            </div>
                        </div>
                
                </div>
    
                <div class="row g-2 justify-content-md-center"> 
                    <div class="col-md-11">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Address Line 1" name="add1" required>
                            <label for="floatingInput">Address Line 1</label>
                            </div>
                        </div>
                    </div>
    
                <div class="row g-2 justify-content-md-around"> 
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Address Line 2" name="add2">
                            <label for="floatingInput">Address Line 2</label>
                            </div>
                        </div>
    
                    <div class="col-md-4">
                    <div class="form-floating mb-3">
                        <input type="tel" class="form-control" id="floatingInput" placeholder="Mother Name" maxlength="6" name="pincode" required>
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
    </div>
</div> 
            

     <!--Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
	
</body>
</html>


