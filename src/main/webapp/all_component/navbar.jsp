 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BookBase</title>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <style>
        .header {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #fff;
            z-index: 1000;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 10px 0;
        }

        .form-inline input {
            margin-right: 5px;
        }
        
        .btn {
            margin-left: 5px;
        }
    </style>
</head>
<body class="BookBase">
         <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <a href="#"><i class="fa-solid fa-house"></i><span> Home</span></a>
        <a href="#"><i class="fa-solid fa-book-open"></i><span> New</span></a>
        <a href="#"><i class="fa-solid fa-clock"></i><span> Recent</span></a>
        <a href="#"><i class="fa-solid fa-cog"></i><span> Settings</span></a>
        <a href="#"><i class="fa-solid fa-address-book"></i><span> Contact</span></a>
        <!-- Only show logout link when logged in -->
         <c:if test="${not empty userobj}">
            <a href="logout.jsp"><i class="fa-solid fa-sign-out-alt"></i><span> Logout</span></a>
        </c:if> 
    </div>

    <header class="header">
        <h1 class="logo">
            <a href="index.jsp">DigitalBookRepository</a>
        </h1>
        <div class="search-login">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success my-1 my-sm-2" type="submit">Search</button>
            </form>
               </div>
            
            
            <!-- Show user details if logged in -->
            <c:if test="${not empty userobj}">
            <div class ="col-md-3">
            
            <a href="cart.jsp"><i class="fa-solid fa-cart-shopping fa-1x mt-1"></i></a>
              
                <a href="profile.jsp" class="btn btn-success">${userobj.name}</a> 
                <a href="logout" class="btn btn-primary text-white">Logout</a>
                </div>
            </c:if>  
            
   
            
               
            
            <!-- Show login/register options if not logged in -->
            <c:if test="${empty userobj}">
              <div class ="col-md-3">
            
                <a href="login.jsp" class="btn btn-success">Login</a> 
                <a href="register.jsp" class="btn btn-primary text-white">Register</a>
                   </div>
            </c:if>
            
           



    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <a href="index.jsp"><i class="fa-solid fa-house"></i><span> Home</span></a>
        <a href="all_new_book.jsp"><i class="fa-solid fa-book-open"></i><span> New</span></a>
        <a href="all_recent_book.jsp"><i class="fa-solid fa-clock"></i><span> Recent</span></a>
        <a href="#"><i class="fa-solid fa-cog"></i><span> Settings</span></a>
        <a href="#"><i class="fa-solid fa-address-book"></i><span> Contact</span></a>
        <!-- Only show logout link when logged in -->
        <%-- <c:if test="${not empty userobj}">
            <a href="logout.jsp"><i class="fa-solid fa-sign-out-alt"></i><span> Logout</span></a>
        </c:if> --%>
    </div>


            
     
    </header>
    
     <main class="main-content">
        <!-- Your main content here -->
         
    </main>
    
</body>
</html>
 