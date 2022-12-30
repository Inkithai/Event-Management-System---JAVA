<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">

  <head>
  <title>Admin Add New Transport</title>
    <meta charset="UTF-8">
    <!--<title> Responsiive Admin Dashboard | CodingLab </title>-->
    <link rel="stylesheet" href="css/dashboard.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="css/universal_style.css">
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
			<h2 style="color:#9b45b2;" ><i class="fas fa-folder-plus"></i>List of Transport</h2>
		</div>

 
    
<div class="container" style="max-width: 600px; max-height:630px; box-shadow: 5px 10px 18px #888888;">
		
		<br>
		
		<div>
			<form action="VehicleController" method="get">
			
			<input type="hidden" name="COMMAND" value="ADD">
				
			
				<div class="form-group">
					<label for="inputNumber">Vehicle Name: </label>
					<input type="text" id="inputName" name="vehicleName" placeholder="Vehicle Name" class="form-control" required="required">	
				</div>
				<div class="form-group">
					<label for="inputNumber">Vehicle Number: </label>
					<input type="text" id="inputNumber" name="vehicleNumber" placeholder="Vehicle Number" class="form-control" required="required">	
				</div>
				
				
				<div class="form-group">
					<label for="inputFacilities">Facilities: </label>
					<input type="text" id="Facilities" name="facilities" placeholder="Enter Vehicle Facilities" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputEmail">Cost Per Day: </label>
					<input type="text" id="Cost" name="cost" placeholder="Enter Cost" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputType">Vehicle Type: </label>
					<input type="text" id="inputype" name="vehicleType" placeholder="Enter Vehicle Type" class="form-control" required="required">
				</div>
				
				
		
				
					<br>
				
				
				<div class="row">
					<div class="col text-center">
						<input type="submit" value="Add" class="btn btn-success btn-block" style="background:#9b45b2 !important; border:#9b45b28c !important;">
					</div>
				</div>
					
			</form>
			
			<br>
			<div style="text-align:center; margin-bottom: 20px;">
				
				<button  class="btn btn-link" type="submit"><a href="transport-home.jsp">Back to Home</a></button>
			</div>
			
			<br>
		</div>
		<footer class="page-footer font-small navbar-dark bg-dark" style="color:#ffffff;position: fixed; left: 0; bottom: 0; width: 100%; margin-top: 20px;background:#49075C !important;">
		<div class="footer-copyright text-center py-3">© 2022 Copyright</div>
	</footer>	
	</div>
 
 
  

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>

