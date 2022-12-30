<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Transport</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="css/universal_style.css">
   <link rel="stylesheet" href="css/dashboard.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     
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
	
	<div class="container" style="text-align:center; padding-top: 10px;">
	
		<div class="row">
			<div class="col-sm-6">
				<form action="VehicleController" method="get" class="form-horizontal" style="padding: 10px 0 10px 0;">
					<div class="input-group">
						<input type="hidden" class="form-control" name="COMMAND" value="SEARCH"/>			    
						<input type="text" class="form-control" placeholder="Search" name="theSearchName">
						<div class="input-group-append">
							<c:url var="searchLink" value="VehicleController">
								<c:param name="COMMAND" value="SEARCH"/>
							</c:url>
							<button type="submit" class="btn btn-success" value="Search"  style="background:#9b45b2 !important; border:#9b45b28c !important;"><a href="${searchLink}" style="color: #ffffff; text-decoration: none;">Go</a></button> 
						</div>
					</div>
				</form>	
			</div>
			
			<div class="col-sm-6" style="padding: 10px 15px 10px 15px;">
				<c:url var="checkLink" value="VehicleController">
					<c:param name="COMMAND" value="CHECK"/>
				</c:url>
				<a href="${checkLink}" class="btn btn-success btn-block" style="background:#9b45b2 !important; border:#9b45b28c !important;">Book Transport</a>
			</div>
		</div>  
	  	
	    <br>
		
		<div class="table-responsive">
			<table id="tab-01" class="table table-striped table-hover">
				<thead style="background-color: #9b45b2; color:#ffffff;">
					<tr>
						<th>Vehicle Name</th>			
						<th>Vehicle Number</th>
						<th>Facilities</th>
						
						<th>Cost</th>					
						<th>Vehicle Type</th>
						
						<th>Action</th>
						
						
					</tr>
				</thead>
				
				<tbody>
				
					<c:forEach var="tempItem" items="${ VEHICLE_LIST }">
						<c:url var="updateLink" value="VehicleController">
							<c:param name="COMMAND" value="LOAD"/>
							<c:param name="id" value="${tempItem.id}"/>
						</c:url>
						<c:url var="deleteLink" value="VehicleController">
							<c:param name="COMMAND" value="DELETE"/>
							<c:param name="id" value="${tempItem.id}"/>
						</c:url>
						<tr>
							<td> ${tempItem.vehicleName} </td>
							<td> ${tempItem.vehicleNumber} </td>
							<td> ${tempItem.facilities} </td>						
							
							<td> ${tempItem.cost} </td>
							<td> ${tempItem.vehicleType} </td>
							
							
							<td>
								<a href="${updateLink}" style="color:green;">Update</a>
								|
								<a href="${deleteLink}" style="color:red;">Delete</a>
							</td>
							
						</tr>
					</c:forEach>
				</tbody>

				</table>
				</div>
				
				<br><br>
			</div>
     
  <footer class="page-footer font-small navbar-dark bg-dark" style="color:#ffffff;position: fixed; left: 0; bottom: 0; width: 100%; margin-top: 20px;background:#49075C !important;">
		<div class="footer-copyright text-center py-3">© 2022 Copyright</div>
	</footer>
  
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    <script type="text/javascript">
        $("body").on("click", "#btnExport", function () {
            html2canvas($('#tab-01')[0], {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Booked-Transport-details.pdf");
                }
            });
        });
    </script>
  

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