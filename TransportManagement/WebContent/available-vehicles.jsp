<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Available Vehicles</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hotel Deluxe Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script src="js/jquery.easydropdown.js"></script>
<!------ Light Box ------>
<link rel="stylesheet" href="css/swipebox.css">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

<script src="js/jquery.swipebox.min.js"></script> 
    <script type="text/javascript">
		jQuery(function($) {
			$(".swipebox").swipebox();
		});
	</script>
<!------ Eng Light Box ------>	
<script src="js/wow.min.js"></script>
<link href="css/animate.css" rel='stylesheet' type='text/css' />
<script>
	new WOW().init();
</script>
</head>
<body>
  	<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background:#49075C !important;" >
		<div style="max-width:1400px;margin:0 auto;align-items:center;
    display: flex;
    width: 100%;
    justify-content: space-between;" >
			<a class="navbar-brand" href="RoomController"><img src="images/llo.png" style="height:54px; margin-top:-12px; " > <span style="font-weight:800;">7 WINGS</span> </a>
			
			<ul class="navbar-nav">
				
				<li class="nav-item">
					<c:url var="logoutLink" value="UserController">
						<c:param name="command" value="LOGOUT"/>
					</c:url>
					
					<a class="nav-link" href="${logoutLink}" style="color: #F1F1F1;"><i class="fas fa-sign-out-alt"></i> Logout</a>
				</li>
			</ul>
		</div>
	</nav>
	
		<div  style="max-width:1200px;margin:0 auto;    margin-top: 30px;" >
			<h2 style="color:#9b45b2;" ><i class="fas fa-folder-plus"></i> Choose Your Vehicle</h2>
		</div>

  
   <div class="living_middle">
   	  <div class="container">
   	  	<h2 class="title block-title"  style="color: #9B45B2; font-weight:900;">Available Vehicles</h2>
   	   <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
   <div class="living_box"><a href="#">
			    <img src="images/car2.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label" style="background: #9B45B2;" >Car</span>
			    </span>
				</a>
				<div class="living_desc">
				<h3><a href="#" style="color: #9B45B2; font-weight:900;">aliquam volutp</a></h3>
				<p style="color: #9B45B2;">Lorem ipsum consectetuer adipiscing </p>
				<a href="book-vehicles.jsp" class="btn3" style="background: #49075C;">Book</a>
				<p class="price">$10.00</p>
				</div>
			    <table border="1" class="propertyDetails">
                <tbody style="background:#F4E5F8;" ><tr>
                   <td><img src="images/area.png" alt="" style="margin-right:7px;">1 KM</td>
                   <td><img src="" alt="" style="margin-right:7px;">$10.00</td>
                  
                    </tr>
                </tbody></table>
			</div>
		 </div>
   	     <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
   	     	<div class="living_box"><a href="#">
			    <img src="images/van.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label" style="background: #9B45B2;">Van</span>
			    </span>
				</a>
				<div class="living_desc">
				<h3><a href="#" style="color: #9B45B2; font-weight:900;">aliquam volutp</a></h3>
				<p>Lorem ipsum consectetuer adipiscing </p>
				<a href="book-vehicles.jsp" class="btn3"style="background: #49075C;">Book</a>
				<p class="price">$30.00</p>
				</div>
			    <table border="1" class="propertyDetails">
                <tbody  style="background:#F4E5F8;"><tr>
                   <td><img src="images/area.png" alt="" style="margin-right:7px;">1 KM</td>
                   <td><img src="" alt="" style="margin-right:7px;">$ 30.00</td>
                   
                    </tr>
                </tbody></table>
			</div>
   	     </div>
   	     <div class="col-md-4 wow fadeInLeft" data-wow-delay="0.4s">
   	     	<div class="living_box"><a href="#">
			    <img src="images/car1.jpg" class="img-responsive" alt=""/>
				<span class="sale-box">
				  <span class="sale-label"  style="background: #9B45B2;">Car</span>
			    </span>
				</a>
				<div class="living_desc">
				<h3><a href="#" style="color: #9B45B2; font-weight:900;">aliquam volutp</a></h3>
				<p>Lorem ipsum consectetuer adipiscing </p>
				<a href="book-vehicles.jsp" class="btn3"style="background: #49075C;">Book</a>
				<p class="price">$20.00</p>
				</div>
			    <table border="1" class="propertyDetails">
                <tbody   style="background:#F4E5F8;"><tr>
                   <td><img src="images/area.png" alt="" style="margin-right:7px;">1 KM</td>
                   <td><img src="" alt="" style="margin-right:7px;">$ 10.00</td>
                  
                    </tr>
                </tbody></table>
			</div>
   	      </div>	
     </div>
   </div>
	

   
	  <div class="footer">
   	
   	 
	 <footer class="page-footer font-small navbar-dark bg-dark" style="color:#ffffff;position: fixed; left: 0; bottom: 0; width: 100%; margin-top: 20px;background:#49075C !important;">
		<div class="footer-copyright text-center py-3">© 2022 Copyright</div>
	</footer>
      </div>
</body>
</html>		