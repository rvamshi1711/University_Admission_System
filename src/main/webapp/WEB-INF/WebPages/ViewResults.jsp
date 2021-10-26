<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ page import="com.try1.bean.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
Credentials c = (Credentials)request.getAttribute("cviewinfo"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<style>
        #roundimage{
            border-radius: 50%;
        }
        .btn-block {
            display: block;
            min-width: 100%;
        }

</style>
<script type="text/javascript">



</script>
<title>UAS-Admin Panel</title>

</head>


<body>

    <div class="container ">
        <div class="row">
            <div class="col-12">
            	
            	<!--Navbar Section Starts-->
                <nav class="navbar navbar-expand-lg navbar-light white">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="adminHome">
                            <img src="${pageContext.request.contextPath}/resources/Images/Logo.png" alt="pic" width="300" height="70">
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li><a class="btn bg-transparent" href="adminHome" role="button">Home</a></li>
                             <li class="nav-item dropdown">
					          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            Courses
					          </a>
					          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					            <li><a class="dropdown-item" href="addCourse">Add Course</a></li>
					            <li><a class="dropdown-item" href="AViewCourse">View Courses</a></li>
					            
					            
					          </ul>
					          <li><a class="btn bg-transparent" href="ViewApplications2" role="button">View Applications</a></li>
					          <li><a class="btn bg-transparent" href="ViewAllReports" role="button">View All Reports</a></li>
					          <li><a class="btn bg-transparent" href="ViewResults" role="button">View Results</a></li>
					          
					        </li>
                            
                            
                            </ul>
                            
                            <ul class="nav-item dropdown">
                                <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="${pageContext.request.contextPath}/resources/Images/img_avatar.png" alt="Avatar" id="roundimage" style="width:70px;">
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    

                                 <%-- <li style="text-align: center;"><a class="dropdown-item" ><button type="button" class="btn bg-transparent" onclick="changePassword()">Change Password</button></a></li> --%>
                                  
                                  <li id="logoutid" style="text-align: center;"><a class="dropdown-item"  style="text-align: center;" href="home"><button type="button" class="btn bg-transparent">Logout</button></a></li>
                                  
                                </ul>
                              </ul>
                        </div>
                    </div>
                </nav>
            <!--Navbar Section Ends-->

                <div id="demo">
                    <table class="table table-striped table-hover">
					        <thead>
					            <tr>
					              <th scope="col">Email Id</th>
					              <th scope="col">Branch</th>
					               
					            </tr>
					        </thead>
					        <c:forEach var="cs" items="${vr}"> 
					           		  <tbody>
										    <tr>
										      
										      <td>
										      <form method="get" action="viewstudentfromadmin" target="_blank">
										      <input type="hidden" name="emailid" value="${cs.emailid}" />
										      <button type ="submit" style="border:0px;"> ${cs.emailid}</button>
										      </form>
										      
										      </td>
										      <td>${cs.branch}</td>
										      
										      
										     
										    </tr>
										
										</tbody>
							</c:forEach>  
					
					    </table>
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