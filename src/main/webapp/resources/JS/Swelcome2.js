function aboutUs(){
    var aboutus = '<h1 style="text-align:center;">About Us Content</h1>';
    document.getElementById("aboutus").style.display= 'none';
    document.getElementById("reportus").style.display= 'inline';
    document.getElementById("demo").innerHTML=aboutus;
}



function changePassword(){
    var cp= 
            '<div class="row justify-content-md-center" style="margin-top: 10vh;">'+
                '<div class="col-md-4 col-sm-4 col-xs-12">'+
                    
                    '<form style="border: solid 1px; padding: 50px 60px; margin-top: 3vh; box-shadow:1px 1px 20px 0px; ">'+
                        '<div class="mb-3">'+
                            '<h3 style="text-align:center; padding-bottom:20px;">Change your Password </h3>'+
                        
                            '<div class="mb-3">'+
                            
                            '<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Current Password" required/>'+
                            
                        '</div>'+
                        '<div class="mb-3">'+
                            
                            '<input type="password" class="form-control" id="exampleInputPassword1" placeholder="New Password" required/>'+
                            
                        '</div>'+
                        '<div class="mb-3">'+        
                            '<input type="password" class="form-control" id="exampleInputPassword2" placeholder="Type your new Password again" required/>'+
                        '</div>'+
                        '<div class="mb-3">'+
                            '<button type="submit" class="btn btn-success btn-block">Change Password</button>'+
                        '</div>'+
                    '</form>'+
                '</div>'+
            '</div>';

            document.getElementById("demo").innerHTML = cp;
}

