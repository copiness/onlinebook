<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart page</title>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_component/navbar.jsp" %>
<div class="container">
	<div class="row p-2">
	<div class="col-md-6">
	
	<div class="card bg-white">
	<div class="card-body">
	<h3 class="text-center text-success">Your Selected Item</h3>
	<table class="table table-striped">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">First</th>
	      <th scope="col">Last</th>
	      <th scope="col">Handle</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">1</th>
	      <td>Mark</td>
	      <td>Otto</td>
	      <td>@mdo</td>
	    </tr>
	    <tr>
	      <th scope="row">2</th>
	      <td>Jacob</td>
	      <td>Thornton</td>
	      <td>@fat</td>
	    </tr>
	    <tr>
	      <th scope="row">3</th>
	      <td colspan="2">Larry the Bird</td>
	      <td>@twitter</td>
	    </tr>
	  </tbody>
	</table>
	
	</div>
	</div>
	</div>
	</div>
	</div>
	
	<div class="col-md-6" >
	<div class="card">
	<div class="card-body">
	<h3 class="text-center text-success"></h3>
	<form>
	<div class ="form-row">
	<div class ="form-group col-md-6">
		<label for="inputName4">Name</label>
		<input type="text" class ="form-control" id ="inputpassword4">
		
	</div>
	 <div class ="form-group col-md-6">
		<label for="inputEmail4">Email</label>
		<input type="text" class ="form-control" id ="inputPassword4" >
		
	</div>	
	
	</div>
	
	<div class ="form-row">
	<div class ="form-group col-md-6">
		<label for="inputName4">Phone Number</label>
		<input type="number" class ="form-control" id ="inputPassword4">
		
	</div>
	 <div class ="form-group col-md-6">
		<label for="inputEmail4">Address</label>
		<input type="text" class ="form-control" id ="inputpassword4">
		
	</div>	
	
	 <div class ="form-group col-md-6">
		<label for="inputName4">Landmark</label>
		<input type="text" class ="form-control" id ="inputpassword4">
		
	</div>	
	
	 <div class ="form-group col-md-6">
		<label for="inputEmail4">City</label>
		<input type="text" class ="form-control" id ="inputpassword4">
		
	</div>	
	
	</div>
	
	
	</form>
	
	</div>
	</div>
	</div>
	
	
	


</body>
</html>