<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Team 06:ROMS-Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        
        
    </head>
    <body>

<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
                           
                            <form class="login100-form validate-form" action="userLogin" method="post">
                                   <span class="login100-form-title2 ">
						Burger Station
					</span>
                                   
					<span class="login100-form-title p-b-34">
						Account Login
					</span>
					
					<div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type user name">
						<input id="first-name" class="input100" type="text" name="username" placeholder="User name">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20" data-validate="Type password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" value="submit">
							Login
						</button>
					</div>

					
					<div class="center" style="padding-left:100px">
						<a href="register.jsp" class="txt3">
							<br>Sign Up
						</a>
					</div>
                                 <div  style="padding-left:-30px;padding-bottom:50px">
						<a href="AdminLogin.jsp" class="txt3">
                                                <br>Click here for admin login 
                                                <br>||Admin Login||
                                                       
                                                </a></div>
				</form>

				<div class="login100-more" style="background-image: url('img/burger.jpg')"></div>
			</div>
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
	<script src="js/main.js"></script>


    </body>
</html>
