<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-Homepage</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    </head>
    <body>
        
         <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #010101">
  <a class="navbar-brand" href="index.jsp">
      <img src="img/header.png" width="220" height="50" class="d-inline-block align-top" >
      </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp" style="color:white;">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="profile.jsp" style="color:white;">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="menu.jsp" style="color:white;">Menu</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="viewCart.jsp" style="color:white;">Cart</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="MyOrder.jsp" style="color:white;">MyOrder</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="foodReview.jsp" style="color:white;">FoodReview</a>
      </li>
    </ul>
      
      <ul class="nav navbar-nav" style="padding-left: 600px">
        <li><a href="login.jsp" style="color:white;"><img border="0" alt="login" src="img/logout.png" width="30" height="25"> Login</a></li>
      </ul>
  </div>
            
</nav>
        
      <div class="carousel slide" data-ride="carousel" id="carouselExampleIndicators">
		<ol class="carousel-indicators">
			<li class="active" data-slide-to="0" data-target="#carouselExampleIndicators"></li>
			<li data-slide-to="1" data-target="#carouselExampleIndicators"></li>
			
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img alt="First slide" class="d-block w-100" src="img\img5.jpg">
			
			</div>
			<div class="carousel-item">
				<img alt="Second slide" class="d-block w-100" src="img\img6.jpg">
				
			</div>
			
		</div><a class="carousel-control-prev" data-slide="prev" href="#carouselExampleIndicators" role="button"><span aria-hidden="true" class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" data-slide="next" href="#carouselExampleIndicators" role="button"><span aria-hidden="true" class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
	</script> 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
	</script> 
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">
    </script>
    <footer class="container-fluid text-center" style="height:30px;background-color: black;color: white;">
        <p>Copyright &copy; Burger Station[BS]</p>
      </footer>
    </body>
</html>
