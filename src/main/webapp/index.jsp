<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BookBase</title>
<link rel="navbar" href="all_component/navbar.jsp">
<link rel="stylesheet" href="all_component/index.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
</style>
</head>
<body>
      
        <!-- Include Navbar -->
      <jsp:include page="all_component/navbar.jsp" />
     
	<main class="main-content">
	<!-- Start Recent Book -->
		<section class="recommended-books">
			<h2 class="section-title">RecentBook</h2>
			<a href="#" class="see-all">See All ></a>
			<div class="book-grid">
				<div class="book-card">
					<img alt="" src="book/image.jpg" style="width: 150px; height: 200px"class="img-thublin">
					<div class="book-details">
						<h3 class="book-title">Java Programming</h3>
						<p class="book-author">Surbhi Kakar</p>
						
						   <a href="view_books.jsp" class="btn btn-primary btn-sm ml-1">ViewDetails</a> 
						
					</div>
				</div>
				<div class="book-card">
					<img alt="" src="book/pic.jpg" style="width: 150px; height: 200px"class="img-thublin">
					<div class="book-details">
						<h3 class="book-title">C Programming</h3>
						<p class="book-author">R. Chopra</p>
						
							<a href="viewDetails.jsp?bookId=2"class="btn btn-primary btn-sm ml-1">View Details</a>
					</div>
				</div>
				<div class="book-card">
					<img alt="" src="book/photo.jpeg"style="width: 150px; height: 200px" class="img-thublin">
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
