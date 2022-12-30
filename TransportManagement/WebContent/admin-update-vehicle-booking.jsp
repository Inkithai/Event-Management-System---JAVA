<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="css/universal_style.css">
	<title>Update Booked Vehicles</title>
</head>
<body>

	<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

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
			<h2 style="color:#9b45b2;" ><i class="fas fa-folder-plus"></i>Update of Transport</h2>
		</div>

	
	
	
	<div class="container" style="max-width: 800px; box-shadow: 5px 10px 18px #888888;">
		
		<br>
		
		<div>
			<form action="VehicleController" method="get">
			
				<input type="hidden" name="COMMAND" value="UPDATE">
				<input type="hidden" name="id" value="${VEHICLE.id}">
				
			
				<div class="form-group">
					<label for="inputName">Vehicle Name: </label>
					<input type="text" id="inputName" name="vehicleName" placeholder="Full Name" class="form-control" value="${VEHICLE.vehicleName}" required="required">	
				</div>
				
				
				
				<div class="form-group">
					<label for="inputNIC">Vehicle Number: </label>
					<input type="text" id="NIC" name="vehicleNumber" placeholder="Enter Your NIC Number" class="form-control" value="${VEHICLE.vehicleNumber}" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputEmail">Facilities: </label>
					<input type="text" id="Email" name="facilities" placeholder="Enter Email Address" class="form-control" value="${VEHICLE.facilities}" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputMobile">Cost: </label>
					<input type="number" id="tot_amount" name="cost"  class="form-control" type="number" pattern="[0-9]" required="required" value="${VEHICLE.cost}">
				</div>
				
				<div class="form-group">
					<label for="inputnoOfKm">Vehicle Type: </label>
					<input type="text" id="VT" name="vehicleType" placeholder=" Total KM" class="form-control" value="${VEHICLE.vehicleType}" required="required">
				</div>
										
				
				
			
				
					<br>
				
				
				<div class="row">
					<div class="col text-center">
						<input type="submit" value="Update" class="btn btn-success btn-block" style="background:#9b45b2 !important; border:#9b45b28c !important;">
					</div>
				</div>
					
			</form>
			
			<br><br>
			
			<div style="text-align:center; margin-bottom: 20px;">
				
				<button  class="btn btn-link" type="submit"><a href="transport-home.jsp">Back to Home</a></button>
			</div>
			
			<br>
		</div>
		
	</div>
	
	<footer class="page-footer font-small navbar-dark bg-dark" style="color:#ffffff;position: fixed; left: 0; bottom: 0; width: 100%; margin-top: 20px;background:#49075C !important;">
		<div class="footer-copyright text-center py-3">© 2022 Copyright</div>
	</footer>
	
	
	
</body>
</html>