function manage(exampleInputPassword234){
		var bt = document.getElementById('signupid');
		var bt1 = document.getElementById('exampleInputEmail123').value;
		var bt4 = document.getElementById('exampleInputEmail234').value;
		var bt2 = document.getElementById('exampleInputPassword123').value;
		var bt3 = document.getElementById('exampleInputPassword234').value;
		if(bt1==bt4)
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




       

                
                                       
              

       
        
        

        function showpassword(){
            var pswd = document.getElementById("exampleInputPassword1");
            if(pswd.type==="password"){
                pswd.type="text";
            }
            else{
                pswd.type = "password";
            }
        }
        
	

        