
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