<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ page import="com.try1.bean.*" %>
    
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
        
        #backgroundimage {
    background-image: url("https://source.unsplash.com/ewGMqs2tmJI/700x700");
    width: 85vw;
    height: 75vh; 
    background-size: 100% 100%;
    background-repeat: no-repeat;
    position: relative;
    } 

    .nav
    {
    overflow: auto;
    }
}
h1{

    color: black;
    letter-spacing: 5px;
    word-spacing: 20px;
    
}
p{
    color:black;
    padding: 0;
    margin: 0;
    text-align: center;
    
    
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
                                    

                                <%--  <li id="logoutid2" style="text-align: center;"><a class="dropdown-item"  style="text-align: center;" href="changePassword"><button type="button" class="btn bg-transparent">Change Password</button></a></li> --%>
                                  
                                  <li id="logoutid" style="text-align: center;"><a class="dropdown-item"  style="text-align: center;" href="home"><button type="button" class="btn bg-transparent">Logout</button></a></li>
                                  
                                </ul>
                              </ul>
                        </div>
                    </div>
                </nav>
            <!--Navbar Section Ends-->
				<div>${added}</div>
                <div id="demo">
                    <div id="backgroundimage">
<h1 class="text-center display-4 fw-bold align-bottom my-5">WELCOME  ADMIN</h1>
<p>BSPR University strives for Achieving world-class excellence in teaching, research and knowledge transfer and making valuable contributions to the socioeconomic development of the region and country.</p></span>
<p>Imparting quality education to the students, promoting their all-round development by participation in sports, extracurricular and other socially relevant activities and including the skill of decision making and democratic values

 Providing state of the art facilities and opportunities for academic growth and to carry out research in the modern areas, particularly of applied nature and technology</p>
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