<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ page import="com.try1.bean.*" %>
    
<%
Credentials c = (Credentials)request.getAttribute("aviewinfo"); 
CourseDetails cd = (CourseDetails)request.getAttribute("cd"); 
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
                        <a class="navbar-brand" href="../adminHome">
                            <img src="${pageContext.request.contextPath}/resources/Images/Logo.png" alt="pic" width="300" height="70">
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            
                             <li class="nav-item dropdown">
					          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            Courses
					          </a>
					          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					            <li><a class="dropdown-item" href="">Add Course</a></li>
					            <li><a class="dropdown-item" href="AViewCourse">View Courses</a></li>
					            
					            
					          </ul>
					        </li>
                            
                            
                            </ul>
                            
                            <ul class="nav-item dropdown">
                                <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="${pageContext.request.contextPath}/resources/Images/img_avatar.png" alt="Avatar" id="roundimage" style="width:70px;">
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    

                                  <li style="text-align: center;"><a class="dropdown-item" ><button type="button" class="btn bg-transparent" onclick="changePassword()">Change Password</button></a></li>
                                  
                                  <li id="logoutid" style="text-align: center;"><a class="dropdown-item"  style="text-align: center;" href="home"><button type="button" class="btn bg-transparent">Logout</button></a></li>
                                  
                                </ul>
                              </ul>
                        </div>
                    </div>
                </nav>
            <!--Navbar Section Ends-->

                <div id="demo">
                    
                    <div class="row justify-content-md-evenly">
                    <div class="col-md-8">
                        <form style="border: solid 1px; padding: 50px 50px; margin-top: 3vh; box-shadow:1px 1px 20px 0px; " method="POST" action="../editCourseProcess">

                            <div style="margin-top:0vh; text-align:center; padding-bottom: 40px;"><h1>Edit Course</h1></div>
                            <div class="row g-2 justify-content-md-around">
                                
                                <div class="col-md-5">
                                    <div class="form-floating mb-3">
                                    <input type="hidden" name="tcid" value=<%=cd.getCid() %> >
                                    <input type="hidden" name="tbranchname" value=<%=cd.getCbranch() %> >
                                        <input type="text" class="form-control" id="floatingInput" placeholder="Branch Name" name="tcbranch" value=<%=cd.getCbranch() %> required>
                                        <label for="floatingInput">Branch Name</label>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="form-floating mb-3">
                                        <input type="number" class="form-control" id="floatingInput" placeholder="No of Seats" name="tcseats" value=<%=cd.getCseats() %> required>
                                        <label for="floatingInput">No of Seats</label>
                                    </div>
                                </div>

                                
                            
                            </div>

                            <div class="row g-2 justify-content-md-around">
                                
                                <div class="col-md-5">
                                    <div class="form-floating mb-3">
                                        <input type="number" class="form-control" id="floatingInput" placeholder="Duration in Yrs" name="tcduration" value=<%=cd.getCduration() %> required>
                                        <label for="floatingInput">Duration in Yrs</label>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="form-floating mb-3">
                                        <input type="number" class="form-control" id="floatingInput" placeholder="No of Semesters" name="tcsems" value=<%=cd.getCsems() %> required>
                                        <label for="floatingInput">No of Semesters</label>
                                    </div>
                                </div>

                                
                            
                            </div>

                            <div class="row g-2 justify-content-md-evenly">
                                <div class="col-md-11">

                                    <div class="form-floating">
                                        <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px" name="tcdescription" value= required><%=cd.getCdescription()%></textarea>
                                        <label for="floatingTextarea2">Description</label>
                                    </div>

                                </div>
                                

                            </div>
                            
                            
                            <ul style="text-align: center; padding-top: 30px;">
                                <button type="submit" class="btn btn-success">Submit</button>
                            </ul>
                        </form>

                    </div>
                </div>
                    
                    
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