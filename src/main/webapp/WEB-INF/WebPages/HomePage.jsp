<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!--Bootstrap Icons
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
    -->
    <!--
    <link href="Home.css" type="text/css" rel="stylesheet">
    -->
    <style>
        .bg{
    /*
    background-image: linear-gradient(-225deg, #F4f4f4 0%, #D7FFFE 100%);
    
    background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);
    
    background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
    
    background-color: 	#FFFFFF;
    background-image: url("loginbg3.jpg");
    */
    background-color: 	#FFFFFF;
    width: 100%;
    height: 100vh;
    background-size: cover;
}

.btn-block {
    display: block;
    min-width: 100%;
    }
    </style> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/JS/HomePage.js">
    
    	    
    </script>
    <script type="text/javascript">
    
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
  	    	document.getElementById("login").style.display = 'inline';
  	            document.getElementById("signup").style.display = 'inline';
  	    }
    
    function signup(){
        
    	var signup1 = 
			'<div class="container">'+
                    '<div class="row">'+
                        '<div class="col-12">'+        	
    	  '<div style="margin-top:1vh; text-align:center;"><h1>Sign Up</h1></div>'+
                    '<div style="padding-bottom:20px; text-align:center; ">Already have an account?'+ 
                        '<button class="bg-transparent" type="button" onclick="myFun()" style="border: 0px; color:blue; font-weight:bold;"> Log In</button>'+
                    '</div>'+
                    '<div class="row justify-content-md-center">'+
                        '<div class="col-md-4 col-sm-4 col-xs-12">'+
                            
                            '<form style="border: solid 1px; padding: 50px 60px; margin-top: 3vh; box-shadow:1px 1px 20px 0px;" method="POST" action="signup">'+
                                '<div class="mb-3">'+
                                    '<h2 style="text-align:center; padding-bottom:20px;">Welcome</h2>'+
                                
                                    '<input type="email" class="form-control" id="exampleInputEmail123" name="txtnEmail" aria-describedby="emailHelp" placeholder="Email" required/>'+
                                '</div>'+
                                '<div class="mb-3">'+
                                    '<input type="email" class="form-control" id="exampleInputEmail234" name="txtcEmail" aria-describedby="emailHelp" placeholder="Type your email again" required/>'+
                                '</div>'+
                                '<div class="mb-3">'+
                                    
                                    '<input type="password" class="form-control" id="exampleInputPassword123" name="txtnPwd" placeholder="Password" data-toggle="password" required/>'+
                                     
                                '</div>'+
                                '<div class="mb-3">'+        
                                    '<input type="password" class="form-control" id="exampleInputPassword234" name="txtcPwd" placeholder="Type your password again" onkeyup="manage(this)" required/>'+
                                '</div>'+
                                '<div class="mb-3">'+
                                    '<button type="submit" class="btn btn-success btn-block" id="signupid" disabled>Sign Up</button>'+
                                '</div>'+
                            '</form>'+
                        '</div>'+
                    '</div>'
                    ;  
    
       
        
        
        document.getElementById("demo").innerHTML = signup1;
    }
    
    
    function myFun(){
        
    	var login =
            '<div class="container">'+
                    '<div class="row">'+
                        '<div class="col-12">'+
              '<div style="margin-top:4vh; text-align:center;"><h1>Log In</h1></div>'+
                '<div style="padding-bottom:20px; text-align:center; ">Don\'t have an account?'+ 
                    '<button class="bg-transparent" type="button" onclick="signup()" style="border: 0px; color:blue; font-weight:bold;"> Sign Up</button>'+
                '</div>'+
                '<div class="row justify-content-md-center">'+
                    '<div class="col-md-4 col-sm-4 col-xs-12">'+
                        
                        '<form style="border: solid 1px; padding: 50px 60px; margin-top: 3vh; box-shadow:1px 1px 20px 0px; " method="POST" action="loginprocess">'+
                            '<div class="mb-3">'+
                            '<h2 style="text-align:center; padding-bottom:20px;">Welcome, Student!</h2>'+
                            '<input type="email" class="form-control" id="exampleInputEmail1" name="Lusername" aria-describedby="emailHelp" style="margin-bottom:20px;" placeholder="Email Id" required/>'+
                            
                            '<div class="mb-3 input-group">'+
                            
                                '<input type="password" class="form-control" id="exampleInputPassword1" name="Lpassword" placeholder="Password" required/>'+

                                '</div>'+
                            '<div class="mb-3 form-check">'+
                            '<input type="checkbox" class="form-check-input" id="exampleCheck1" onclick="showpassword()">'+
                            '<label class="form-check-label" for="exampleCheck1">Show Password</label>'+
                            '</div>'+
                            '<button type="submit" class="btn btn-success btn-block">Log In</button>'+
                            '</div>'+
                        '</form>'+
                    '</div>'+
                '</div>'
                ; 
        
       
        
        document.getElementById("reportus").style.display = 'inline';
        document.getElementById("demo").innerHTML=login;
    }

	function howtoreachus(){
		
		var how= '<h1 id="how" style="text-align:center;">How To Reach</h1>'+
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
		
    function reportUs(){
        
    	var contactus = 
    			'<div class="container">'+
                    '<div class="row">'+
                        '<div class="col-12">'+
    			'<div style="margin-top:4vh; text-align:center;"><h1>Report Us</h1></div>'+
                    '<div class="row justify-content-md-center">'+
                        '<div class="col-md-6 col-sm-6 col-xs-6">'+
                            '<form style="border: solid 1px; padding: 50px 60px; margin-top: 3vh; box-shadow:1px 1px 20px 0px;" method="POST"  action="reportusas" enctype="multipart/form-data">'+
                                '<div class="mb-3">'+
                                    '<input type="email" name="emailid" class="form-control" id="exampleFormControlInput1" placeholder="Your email" required/>'+
                                    '<div id="emailHelp" class="form-text">Edit this.</div>'+
                                '</div>'+
                                '<div class="mb-3">'+
                                    '<input type="tel" name="phoneno" class="form-control" id="exampleFormControlInput1" placeholder="Your mobile number" maxlength="10" pattern="[6789]{1}[0-9]{9}" title="Number should starts with either 6/7/8/9" required/>'+
                                '</div>'+
                                '<div class="mb-3">'+
                                    '<input type="text" name="title" class="form-control" id="exampleFormControlInput1" placeholder="What\'s this about?" required/>'+
                                '</div>'+
                                '<div class="mb-3">'+
                                    '<textarea class="form-control" name="description" id="exampleFormControlTextarea1" rows="3" placeholder="Go ahead, we\'re listening...."  required></textarea>'+
                                '</div>'+
                                
                                '<button type="submit" class="btn btn-success btn-block">Submit</button>'+
                            '</form>'+
                        '</div>'+
                    '</div>';
        
       	
        document.getElementById("login").style.display = 'inline';
        document.getElementById("signup").style.display = 'inline';
        document.getElementById('demo').innerHTML = contactus;
    }
    
    </script>
<title>Home Page</title>
</head>
<body class="bg">
	<div class="container ">
        <div class="row">
            <div class="col-12">
        
            <!--Navbar Section Starts-->
                <nav class="navbar navbar-expand-lg navbar-light white">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="home">
                            <img src="${pageContext.request.contextPath}/resources/Images/Logo.png" alt="" width="300" height="70">
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
					          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            Contacts Us
					          </a>
					          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					            <li><a class="dropdown-item" role="button" onclick="contact()">Contacts</a></li>
					            <li><a class="dropdown-item" role="button" onclick="howtoreachus()">How to Reach Us</a></li>
					            
					            
					          </ul>
					        </li>
                            
                            <li class="nav-item">
                                <button class="btn bg-transparent" type="button" id="reportus" onclick="reportUs()"style="margin-right: 1.5em;">Report Us</button>
                            </li>
                            </ul>
                            
                            <button class="btn btn-outline-success " type="button" id="signup" onclick="signup()"style="margin-right: 1.5em;">Sign Up</button>

                            <button class="btn btn-outline-success" id="login" type="button" onclick="myFun()" style="margin-right: 1.5em;">Login</button>
                            
                        </div>
                    </div>
                </nav>
            <!--Navbar Scetion Ends-->
                <div id="demo">

                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img src="https://source.unsplash.com/F8t2VGnI47I/1400x575" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                          <h5>Admissions Open</h5>
                          <p>Scroll down for information about courses offered.</p>
                          <a class="btn btn-outline-light" onclick="signup()" role="button">Apply Now</a>
                        </div>
                      </div>
                      <div class="carousel-item">
                        <img src="https://source.unsplash.com/PBNbMX6jtBM/1400x575" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Admissions Open</h5>
                            <p>Scroll down for information about courses offered.</p>
                            <a class="btn btn-outline-light" onclick="signup()" role="button">Apply Now</a>
                        </div>
                      </div>
                      <div class="carousel-item">
                         <img src="https://source.unsplash.com/paSLTZpHCdo/1400x575" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Admissions Open</h5>
                            <p>Scroll down for information about courses offered.</p>
                            <a class="btn btn-outline-light" onclick="signup()" role="button">Apply Now</a>
                        </div>
                      </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Next</span>
                    </button>
                  </div>
                  
                  <div class="alert alert-secondary d-flex justify-content-center align-items-center" role="alert">
                        <strong>Courses Offered</strong>
                        
                  </div>
                      <!-- START THE FEATURETTES -->

                      <div class="container">
                        <div class="row">
                            <div class="col-12">
                  <div class="container my-5">
                      <hr class="featurette-divider">
                  
                      <div class="row featurette d-flex justify-content content align-items center">
                        <div class="col-md-5">
                          <h2 class="featurette-heading">Computer Science and Engineering </h2>
                          <p class="lead my-4">Computer Science & Engineering deals with the theoretical foundations of information and computation along with practical techniques for implementation and application. Computer Science engineers can contribute as Software Developers, Hardware Engineers, Database Analysts (SQL), System analysts or System Engineers, Security analysts, Business System Database Developer, Data Modeller, Software Quality Assurance (QA) apart from multi-disciplinary research.</p>
                        </div>
                        <div class="col-md-7">
                            <img src="https://source.unsplash.com/zE007SNgcdE/700x500"  alt="...">
                         
                  
                        </div>
                      </div>
                    
                  
                      <hr class="featurette-divider">
                  
                      <div class="row featurette">
                        <div class="col-md-5 order-md-2">
                            <h2 class="featurette-heading my-4">Electronics and Communication Engineering </h2>
                          <p class="lead">E&C Engineering is a combination of classic Electronics Engineering and Communication Engineering. This course focuses on electronics equipment, circuits and networks and their use in transmission of information.The course deals with design, testing, manufacturing, analysis and research of electronic and communication circuits.</p>
                        </div>
                        <div class="col-md-7 order-md-1">
                            <img src="https://source.unsplash.com/FO7JIlwjOtU/700x500"  alt="...">
                  
                        </div>
                      </div>
                  
                      <hr class="featurette-divider">
                   
                      <div class="row featurette">
                        <div class="col-md-5">
                            <h2 class="featurette-heading my-4">Mechanical Engineering </h2>
                          <p class="lead">Mechanical engineering is the study, design, development, construction, and testing of mechanical and thermal sensors and devices, including tools, engines, and machines. Mechanical engineering careers center on creating technologies to meet a wide range of human needs.
            
                            Mechanical engineering subjects include automobile engineering, manufacturing engineering, power plant engineering, thermal engineering, and mechatronics engineering, which is a combination of electrical, computer, and mechanical engineering.</p>
                        </div>
                        <div class="col-md-7">
                            <img src="https://source.unsplash.com/qy27JnsH9sU/700x500"  alt="...">
                  
                        </div>
                      </div>
                  
                      <hr class="featurette-divider">
                    </div>
                  </div>
                      <!-- /END THE FEATURETTES -->
                  
                    </div><!-- /.container -->
            
  
                
                <!-- START THE FEATURETTES -->
            <div class="container my-3">
            
            
            
            
             
              
            
               
            
                <div class="row featurette">
                  <div class="col-md-5 order-md-2">
                      <h2 class="featurette-heading my-3">Electrical & Electronics Engineering </h2>
                    <p class="lead">Electrical & Electronics Engineering provides students with a wide range of fundamental knowledge in core disciplines such as communications, control systems, signal processing, radio frequency design, micro-processors, micro-electronics, power generation and electrical machines. The discipline focuses on design and manufacture of electrical, electronic devised, computers and their component parts, as well as on the integration of components into complex systems.</p>
                  </div>
                  <div class="col-md-7 order-md-1">
                      <img src="https://source.unsplash.com/maXnRLszYY0/700x500"  alt="...">
            
                  </div>
                </div>
            
                <hr class="featurette-divider">
                
                <div class="row featurette d-flex justify-content content align-items center">
                    <div class="col-md-5">
                      <h2 class="featurette-heading my-4">Civil Engineering </h2>
                      <p class="lead my-4"> Civil Engineering involves planning, designing, constructing, maintaining and supervising infrastructures which include facilities essential to modern life like highways, bridges and tunnels, schools, hospitals, airports and other buildings, sewage systems and water treatment facilities. Subsequently, the course also involves protecting the public and environmental health as well as improving existing infrastructure.</p>
                    </div>
                    <div class="col-md-7">
                        <img src="https://source.unsplash.com/9cnzCy4YsNE/700x500"  alt="...">
                     
              
                    </div>
                  </div>
                
            
            
            
              
              </div>
            </div> 
              
                <!-- /END THE FEATURETTES -->
            
              </div>


            </div>
        </div>
    </div>
</div>

                
            </div>
        </div>
    </div>
    <!---->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>