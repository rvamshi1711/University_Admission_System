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

    <title>Student Info</title>
    <style>
        #roundimage{
            border-radius: 50%;
        }
        .btn-block {
            display: block;
            min-width: 100%;
        }

    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/JS/Swelcome2.js">
    
	
    </script>
<title>Insert title here</title>
</head>
<body>
<%
Credentials c = (Credentials)request.getAttribute("cviewinfo"); 
%>


    <div class="container ">
        <div class="row">
            <div class="col-12">
        
            <!--Navbar Section Starts-->
                <nav class="navbar navbar-expand-lg navbar-light white">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">
                            <img src="${pageContext.request.contextPath}/resources/Images/Logo.png" alt="pic" width="300" height="70">
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            
                            <li class="nav-item">
                                <button class="btn bg-transparent" type="button" id="aboutus" onclick="aboutUs()"style="margin-right: 1.5em;">About Us</button>
                            </li>
                            <li class="nav-item">
                                <button class="btn bg-transparent" type="button" id="reportus" onclick="reportUs()"style="margin-right: 1.5em;">Report Us</button>
                            </li>
                            </ul>
                            
                            <ul class="nav-item dropdown">
                                <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="${pageContext.request.contextPath}/resources/Images/img_avatar.png" alt="Avatar" id="roundimage" style="width:70px;">
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li style="text-align: center;"><a class="dropdown-item" href="D:/vamshi"><button type="button"  class="btn bg-transparent">My Profile</button></a></li>

                                  <li style="text-align: center;"><a class="dropdown-item" ><button type="button" onclick="changePassword()" class="btn bg-transparent">Change Password</button></a></li>
                                  
                                  <li id="logoutid" style="text-align: center;"><a class="dropdown-item"  style="text-align: center;" href="home"><button type="button" class="btn bg-transparent">Logout</button></a></li>
                                   <!--
                                    <li id="logoutid" style="text-align: center;"><button type="button" class="btn bg-transparent">Logout</button></li>
                                     -->
                                </ul>
                              </ul>
                        </div>
                    </div>
                </nav>
            <!--Navbar Section Ends-->
                <div class="row justify-content-md-center" style="margin-top: 10vh;">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    
                    <form style="border: solid 1px; padding: 50px 60px; margin-top: 3vh; box-shadow:1px 1px 20px 0px; ">
                        <div class="mb-3">
                            <h3 style="text-align:center; padding-bottom:20px;">Change your Password </h3>
                        
                            <div class="mb-3">
                            
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Current Password" required/>
                            
                        </div>
                        <div class="mb-3">
                            
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="New Password" required/>
                            
                        </div>
                        <div class="mb-3">        
                            <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Type your new Password again" required/>
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-success btn-block">Change Password</button>
                        </div>
                    </form>
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