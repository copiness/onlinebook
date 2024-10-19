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
</head>
<body>
 <%@include file="all_component/navbar.jsp" %>
 <div class="container-fluid">
   <div class="row">
   		<div class="col-md-3">
   		<%
				BookDaoImpl dao2 = new BookDaoImpl(DBUtil.getConn());
				List<BookDtls> list2 =dao2.getAllRecentBook();
				for(BookDtls b:list2){
					
					
					
				}
				%>
   		</div>
   </div>
 </div>
</body>
</html>