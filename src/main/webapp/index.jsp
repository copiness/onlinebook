<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BookBase</title>
<link rel="stylesheet" href="all_component/index.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
</style>
</head>
<body class="BookBase">

	<header class="header">
		<h1 class="logo">
			<a href="index.jsp">DigitalBookRepository</a>
		</h1>
		<div class="search-login">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2 " type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-success my-1 my-sm-2" type="submit">Search</button>
			</form>

			<a href="login.jsp" class="btn btn-success">Login</a> <a
				href="register.jsp" class="btn btn-primary text-white">Register</a>
		</div>
	</header>

	<!-- Sidebar -->
	<div class="sidebar" id="sidebar">
		<a href="#"><i class="fa-solid fa-house"></i><span> Home</span></a> <a
			href="#"><i class="fa-solid fa-book-open"></i><span> New</span></a> <a
			href="#"><i class="fa-solid fa-clock"></i><span> Recent</span></a> <a
			href="#"><i class="fa-solid fa-cog"></i><span> Settings</span></a> <a
			href="#"><i class="fa-solid fa-address-book"></i><span>
				Contact</span></a> <a href="#"><i class="fa-solid fa-sign-out-alt"></i><span>
				Logout</span></a>
	</div>


	<main class="main-content">
	<!-- Start Recent Book -->
		<section class="recommended-books">
			<h2 class="section-title">RecentBook</h2>
			<a href="#" class="see-all">See All ></a>
			<div class="book-grid">
				<div class="book-card">
					<img alt="" src="book/java.jpg" style="width: 150px; height: 200px"class="img-thublin">
					<div class="book-details">
						<h3 class="book-title">Java Programming</h3>
						<p class="book-author">Surbhi Kakar</p>
						
						   <a href="view_books.jsp" class="btn btn-primary btn-sm ml-1">ViewDetails</a> 
						
					</div>
				</div>
				<div class="book-card">
					<img alt="" src="book/c.jpg" style="width: 150px; height: 200px"class="img-thublin">
					<div class="book-details">
						<h3 class="book-title">C Programming</h3>
						<p class="book-author">R. Chopra</p>
						
							<a href="viewDetails.jsp?bookId=2"class="btn btn-primary btn-sm ml-1">View Details</a>
					</div>
				</div>
				<div class="book-card">
					<img alt="" src="book/css&html.jpg"style="width: 150px; height: 200px" class="img-thublin">
					<div class="book-details">
						<h3 class="book-title">Css&Html Programming</h3>
						<p class="book-author">R. Kakar</p>
						
						   <a href="viewDetails.jsp?bookId=3"class="btn btn-primary btn-sm ml-1">View Details</a>
					</div>
				</div>
				<div class="book-card">
					<img alt="" src="book/angular.jpg" style="width: 150px; height: 200px" class="img-thublin">
					<div class="book-details">
						<h3 class="book-title">Angular framework</h3>
						<p class="book-author">Ravi kiran</p>
						
                            <a href="viewDetails.jsp?bookId=4" class="btn btn-primary btn-sm ml-1">View Details</a>
						
						
					</div>
				</div>
				<!-- Add more book cards as needed -->
			</div>
		</section>
		<!-- End Recent Book -->
		
		<!-- Start New Book -->
		<section class="recommended-books">
			<h2 class="section-title">New Book</h2>
			<a href="#" class="see-all">See All ></a>
			<div class="book-grid">
				<div class="book-card">
					<img alt="" src="book/java.jpg" style="width: 150px; height: 200px"class="img-thublin">
					<div class="book-details">
						<h3 class="book-title">Java Programming</h3>
						<p class="book-author">Surbhi Kakar</p>
						
						   <a href="view_books.jsp" class="btn btn-primary btn-sm ml-1">ViewDetails</a> 
						
					</div>
				</div>
				<div class="book-card">
					<img alt="" src="book/c.jpg" style="width: 150px; height: 200px"class="img-thublin">
					<div class="book-details">
						<h3 class="book-title">C Programming</h3>
						<p class="book-author">R. Chopra</p>
						
							<a href="viewDetails.jsp?bookId=2"class="btn btn-primary btn-sm ml-1">View Details</a>
					</div>
				</div>
				<div class="book-card">
					<img alt="" src="book/css&html.jpg"style="width: 150px; height: 200px" class="img-thublin">
					<div class="book-details">
						<h3 class="book-title">Css&Html Programming</h3>
						<p class="book-author">R. Kakar</p>
						
						   <a href="viewDetails.jsp?bookId=3"class="btn btn-primary btn-sm ml-1">View Details</a>
					</div>
				</div>
				<div class="book-card">
					<img alt="" src="book/angular.jpg" style="width: 150px; height: 200px" class="img-thublin">
					<div class="book-details">
						<h3 class="book-title">Angular framework</h3>
						<p class="book-author">Ravi kiran</p>
						
                            <a href="viewDetails.jsp?bookId=4" class="btn btn-primary btn-sm ml-1">View Details</a>
						
						
					</div>
				</div>
				<!-- Add more book cards as needed -->
			</div>
		</section>
		
<!-- End New Book -->
		
	</main>


</body>
</html>
