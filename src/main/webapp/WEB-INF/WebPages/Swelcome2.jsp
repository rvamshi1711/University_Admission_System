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

<%
Credentials c = (Credentials)request.getAttribute("cviewinfo"); 
%>
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
    
    <script type="text/javascript">
    <%String str = c.getEmailid();%>
	var email = "<%=str%>";
	
	<%String str2 = c.getEmailid();%>
	var phn = "<%=str2%>";
	
	<%String pwd = c.getPwd();%>
	var pwd = "<%=pwd%>";
	
	function manage(txtcPwd){
		var bt = document.getElementById('btSubmit');
		var bt1 = document.getElementById('txtPresentPwd').value;
		var bt2 = document.getElementById('txtnPwd').value;
		var bt3 = document.getElementById('txtcPwd').value;
		if(bt1==pwd)
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
	

    
    function reportUs1()
    {
    	
    	
        var contactus = '<div style="margin-top:1vh; text-align:center;"><h1>Report Us</h1></div>'+
                            '<div class="row justify-content-md-center">'+
                                '<div class="col-md-6 col-sm-6 col-xs-6">'+
                                    '<form style="border: solid 1px; padding: 50px 60px; margin-top: 3vh; box-shadow:1px 1px 20px 0px; " method="POST" action="reportusas" enctype="multipart/form-data">'+
                                       '<input type="hidden" name="emailid" id="emailid" value="" />'+
                                       '<input type="hidden" name="phoneno" id="phoneno" value="" />'+
                                        '<div class="mb-3">'+
                                            '<input type="text" name="title" class="form-control" id="exampleFormControlInput1" placeholder="What\'s this about?" required/>'+
                                        '</div>'+
                                        '<div class="mb-3">'+
                                            '<textarea class="form-control" name="description" id="exampleFormControlTextarea1" rows="3" placeholder="Go ahead, we\'re listening...." required></textarea>'+
                                        '</div>'+
                                        
                                        '<button type="submit" class="btn btn-success btn-block">Submit</button>'+
                                    '</form>'+
                                '</div>'+
                            '</div>';
        
        document.getElementById("reportus").style.display = 'inline';
        
        document.getElementById('demo').innerHTML = contactus;
        document.getElementById("emailid").value = email;
        document.getElementById("phoneno").value = "2012";
    }

    function changePassword(){
        var cp= 
                '<div class="row justify-content-md-center" style="margin-top: 10vh;">'+
                    '<div class="col-md-4 col-sm-4 col-xs-12">'+
                        
                        '<form style="border: solid 1px; padding: 50px 60px; margin-top: 3vh; box-shadow:1px 1px 20px 0px; " method="POST" action="changepwdprocess">'+
                            '<div class="mb-3">'+
                                '<h3 style="text-align:center; padding-bottom:20px;">Change your Password </h3>'+
                            
                                '<div class="mb-3">'+
                                '<input type="hidden" name="txtEmail" id="txtEmail" value="" />'+
                                
                                '<input type="password" class="form-control" name="txtPresentPwd" id="txtPresentPwd" placeholder="Current Password" required/>'+
                                
                            '</div>'+
                            '<div class="mb-3">'+
                                
                                '<input type="password" class="form-control" name="txtnPwd" id="txtnPwd" placeholder="New Password" required/>'+
                                
                            '</div>'+
                            '<div class="mb-3">'+        
                                '<input type="password" class="form-control" name="txtcPwd" id="txtcPwd" onkeyup="manage(this)" placeholder="Type your new Password again" required/>'+
                            '</div>'+
                            '<div class="mb-3">'+
                                '<button type="submit" class="btn btn-success btn-block" id="btSubmit" disabled>Change Password</button>'+
                            '</div>'+
                        '</form>'+
                    '</div>'+
                '</div>';

                document.getElementById("demo").innerHTML = cp;
                document.getElementById("txtEmail").value = email;
    }
    
    function howtoreachus(){
		
		var how= '<h1 style="text-align:center;">How To Reach</h1>'+
                '<div id="textcenter">We have provided the Directions link in the Map, Please click on the Directions and enter your source location to get the directions for reaching JNTUH.</div>'+
                '<div class="row justify-content-md-evenly">'+
                    '<div class="col-md-8">'+
                        
                        '<div class="row g-2 justify-content-md-start">'+
                            '<div class="col-md-5 justify-content-md-center" style="padding-top: 26vh;">'+
                                '<h3>Campus Office</h3>'+
                                '<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">'+
                                    '<path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>'+
                                  '</svg>  Gandhi statue road Guindy, chennai-600025</div>'+
                                '<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">'+
                                    '<path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>'+
                                  '</svg>  admin1@gmail.com</div>'+
                                '<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-forward-fill" viewBox="0 0 16 16">'+
                                    '<path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zm10.761.135a.5.5 0 0 1 .708 0l2.5 2.5a.5.5 0 0 1 0 .708l-2.5 2.5a.5.5 0 0 1-.708-.708L14.293 4H9.5a.5.5 0 0 1 0-1h4.793l-1.647-1.646a.5.5 0 0 1 0-.708z"/>'+
                                  '</svg>  +91 9547892365</div>'+
                                
                                
                            '</div>'+
                            '<div class="col-md-7" style="padding-top: 4vh;">'+
                                '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15549.555944183705!2d80.2353768!3d13.0108831!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb6f3e0a8c0889229!2sAnna%20University!5e0!3m2!1sen!2sin!4v1624007589446!5m2!1sen!2sin" width="700" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>'+
                            '</div>'+

                        '</div>'+

                    '</div>'+
                '</div>';
                
              document.getElementById("demo").innerHTML = how;
              document.getElementById("login").style.display = 'inline';
            document.getElementById("signup").style.display = 'inline';
		}
	
    function contact(){
    	var con =   '<h1 style="text-align:center;">Contact Us</h1>'+
    		'<table class="table table-striped" border="5px" valign="center">'+
        
        '<thead class="thead-dark">'+
          '<tr>'+
            '<th scope="col">Sl.NO</th>'+
            '<th scope="col">Name</th>'+
            '<th scope="col">Designation</th>'+
            '<th scope="col">Email Id</th>'+
            '<th scope="col">Phone No</th>      </tr>'+
        '</thead>'+
        '<tbody>'+
          '<tr>'+
            '<th scope="row">1</th>'+
            '<td><a href="http://bspr.ac.in/vice-chancellor" target="_parent">Prof. Ravivarma shekar</a></td>'+
            '<td align="left" style="padding-left:5px;">Vice-Chancellor</td>'+
            '<td align="left" style="padding-left:5px;"><a href="mailto:vcbspr@bspr.ac.in">vc@bspr.ac.in</a></td>'+
            '<td align="left">+91 9653156109</td>'+
          '</tr>'+
          '<tr>'+
            '<th scope="row">2</th>'+
            '<td>'+
              '<a href="http://bspr.ac.in/rector" target="_parent">Dr. A Mahesh Kumar</a>	</td>  '+
              '<td align="left" style="padding-left:5px;">Rector</td>'+
              '<td align="left" style="padding-left:5px;"><a href="mailto:pa2rector@bspr.ac.in">pa2rector@bspr.ac.in</a></td>'+
              '<td align="left">+91 9254711223</td>'+
              '</td>'+
          '</tr>'+
          '<tr>'+
            '<th scope="row">3</th>'+
            '<td>'+
                '<a href="http://bspr.ac.in/directorofacademicandplanning" target="_parent">Dr. Malini Thyagrajan</a>	</td>  '+
                '<td align="left" style="padding-left:5px;">Director Of Academic and Planning </td>'+
                '<td align="left" style="padding-left:5px;"><a href="mailto:doap@bspr.ac.in">doap@bspr.ac.in</a></td>'+
                '<td align="left"style="padding-left:5px;">+91 9124898223</td>'+
          '</tr>'+
         '<tr>'+
            '<th scope="row">4</th>'+
            '<td>'+
                '<a href="http://bspr.ac.in/Directorofadmissions" target="_parent">Prof. R venkatesh Rao</a>	</td>  '+
                '<td align="left" style="padding-left:5px;">Director Of Admissions</td>'+
                '<td align="left" style="padding-left:5px;"><a href="mailto:doadm19@bspr.ac.in">doadm19@bspr.ac.in</a></td>'+
                '<td align="left">+91 8456922523</td>'+
          '</tr>'+
          '<tr>'+
            '<th scope="row">5</th>'+
            '<td>'+
                '<a href="http://bspr.ac.in/Directorofresearchanddevelopment" target="_parent">Dr. Crispin Vincent</a>	</td>  '+
                '<td align="left" style="padding-left:5px;">Director Of Research and Development</td>'+
                '<td align="left" style="padding-left:5px;"><a href="mailto:rd@bspr.ac.in">rd@bspr.ac.in</a></td>'+
                '<td align="left">+91 9456920529</td>'+
          '</tr>'+
          '<tr>'+
            '<th scope="row">6</th>'+
            '<td>'+
                '<a href="http://bspr.ac.in/administration" target="_parent">Dr. Sheela Sripathy </a>	</td>  '+
                '<td align="left" style="padding-left:5px;">Administration Officer</td>'+
                '<td align="left" style="padding-left:5px;"><a href="mailto:Ao@bspr.ac.in">Ao@bspr.ac.in</a></td>'+
                '<td align="left">+91 7456915829</td>'+
          '</tr>'+
        '</tbody>'+
      '</table>';
      
    	document.getElementById("demo").innerHTML = con;
    	
    }
    
    
    </script>
<title>Insert title here</title>
</head>
<body>



    <div class="container ">
        <div class="row">
            <div class="col-12">
        
            <!--Navbar Section Starts-->
                <nav class="navbar navbar-expand-lg navbar-light white">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="sdview">
                            <img src="${pageContext.request.contextPath}/resources/Images/Logo.png" alt="pic" width="300" height="70">
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            
                             <li class="nav-item dropdown">
					          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            Contact Us
					          </a>
					          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					            <li><a class="dropdown-item" role="button" onclick="contact()">Contacts</a></li>
					            <li><a class="dropdown-item" role="button" onclick="howtoreachus()">How to Reach Us</a></li>
					            
					            
					          </ul>
					        </li>
                            
                            
                            <li class="nav-item">
                                <button class="btn bg-transparent" type="button" id="reportus" onclick="reportUs1()"style="margin-right: 1.5em;">Report Us</button>
                            </li>
                            <li><a class="btn bg-transparent" href="EducationDetails" role="button">Education Details</a></li>
                            <li><a class="btn bg-transparent" href="ViewCourse" role="button">View Courses</a></li>
                            <li><a class="btn bg-transparent" href="ApplyAdmission" role="button">Apply for Admission</a></li>
                            
                            <li><a class="btn bg-transparent" href="resultForStudents" role="button">Results</a></li>
                            
                            </ul>
                            
                            <ul class="nav-item dropdown">
                                <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="${pageContext.request.contextPath}/resources/Images/img_avatar.png" alt="Avatar" id="roundimage" style="width:70px;">
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li style="text-align: center;"><a class="dropdown-item" href="addProfile"><button type="button"  class="btn bg-transparent">My Profile</button></a></li>

                                  <li style="text-align: center;"><a class="dropdown-item" ><button type="button" class="btn bg-transparent" onclick="changePassword()">Change Password</button></a></li>
                                  
                                  <li id="logoutid" style="text-align: center;"><a class="dropdown-item"  style="text-align: center;" href="home"><button type="button" class="btn bg-transparent">Logout</button></a></li>
                                  
                                </ul>
                              </ul>
                        </div>
                    </div>
                </nav>
            <!--Navbar Section Ends-->
                <div id="demo">
                   <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://source.unsplash.com/kcJsQ3PJrYU/1400x400" class="d-block w-100" alt="...">
            <div class="carousel-caption mb-5 ">
                <span class="align-middle"> <h1>Welcome to BSPR University</h1>
                    <p>BSPR University strives for Achieving world-class excellence in teaching, research and knowledge transfer and making valuable contributions to the socioeconomic development of the region and country.</p></span>
               <p>Imparting quality education to the students, promoting their all-round development by participation in sports, extracurricular and other socially relevant activities and including the skill of decision making and democratic values

                Providing state of the art facilities and opportunities for academic growth and to carry out research in the modern areas, particularly of applied nature and technology</p>
               
              </div>
          </div>
          
          </div>
        </div>
      


      <div class="alert alert-dark" role="alert">
        How to Apply
      </div>
      <div class="accordion" id="accordionExample">
        <div class="accordion-item">
          <h2 class="accordion-header" id="headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
              Update your profile details
            </button>
          </h2>
          <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
            <div class="accordion-body">
              Fill all the required details in the update profile section like your phone number, parents information and your address.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header" id="headingTwo">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
             Upload required documents
            </button>
          </h2>
          <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
            <div class="accordion-body">
          Choose your education board and enter the marks(in percentage) obtained in previous education. Also upload the marksheet.
            </div>
          </div>
        </div>
        <div class="accordion-item" style="margin-bottom:30px;">
          <h2 class="accordion-header" id="headingThree">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
             Select your course preferences
            </button>
          </h2>
          <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
            <div class="accordion-body">
          Submit your preference of course from the wide variety of courses we offer. You can scroll down or visit the homepage for more information about the courses  
            </div>
          </div>
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