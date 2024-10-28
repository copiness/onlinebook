<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.company.util.DBUtil"%>
<%@page import="com.company.dao.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="all_component/index.css">
<%@include file="all_component/navbar.jsp"%>
<style type="text/css">
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
</head>
<body>

	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<c:if test="${not empty addCart }">

		<div id="toast">${addCart}</div>

		<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

		<c:remove var="addCart" scope="session" />

	</c:if>

	
	<section class="recommended-books">
		<h2 class="section-title">New Book</h2>
		<a href="#" class="see-all">See All ></a>
		<div class="book-grid">

			<%
			BookDaoImpl dao = new BookDaoImpl(DBUtil.getConn());
			List<BookDtls> list = dao.getNewBook();
			for (BookDtls b : list) {
			%>
			<div class="book-card">
				<%
				if (u == null) {
				%>
				<a href="login.jsp" class="btn btn-success btn-sm ml-2">Add Cart</a>
				<%
				} else {
				%>
				<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
					class="btn btn-sucess btn-sm ml-2">Add Cart</a>
				<%
				}
				%>
				<img alt="" src="book/<%=b.getPhotoName()%>"
					style="width: 150px; height: 200px" class="img-thublin">
				<div class="book-details">
					<h3 class="book-title"><%=b.getBookName()%></h3>
					<p class="book-author"><%=b.getAuthor()%></p>

					<a href="view_book.jsp?bid=<%=b.getBookId()%>"
						class="btn btn-primary btn-sm ml-1">ViewDetails</a>

				</div>
			</div>
			<%
			}
			%>


			<!-- Add more book cards as needed -->
		</div>
	</section>


</body>
</html>