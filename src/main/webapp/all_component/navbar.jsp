<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BookBase</title>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <!-- Embedded CSS for Navbar -->
    <style>
        /* Ensure header is fixed at the top */
        .header {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #fff; /* or any background color you prefer */
            z-index: 1000; /* Ensure it's on top of other elements */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Optional: adds a shadow for depth */
            padding: 10px 0; /* Adjust padding as needed */
        }

        .sidebar {
            margin-top: 10px;
            /*width: 200px; /* Add margin so that the sidebar doesn't overlap with the fixed navbar */
        }

        .main-content {
            margin-top: 80px; /* Pushes down the main content so it doesn't overlap with the fixed navbar */
        }

        .form-inline input {
            margin-right: 5px;
        }
        
        .btn {
            margin-left: 5px;
        }

        .sidebar a {
            display: inline;
            padding: 90px;
            text-decoration: none;
            color: #333;
        }

        .sidebar a:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body class="BookBase">

    <header class="header">
        <h1 class="logo">
            <a href="index.jsp">DigitalBookRepository</a>
        </h1>
        <div class="search-login">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <a href="setting.jsp"class="btn btn-success my-1 my-sm-2" type="submit">Search</a>
            </form>

            <a href="login.jsp" class="btn btn-success">Login</a> 
            <a href="register.jsp" class="btn btn-primary text-white">Register</a>
        </div>
    

    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <a href="#"><i class="fa-solid fa-house"></i><span> Home</span></a>
        <a href="#"><i class="fa-solid fa-book-open"></i><span> New</span></a>
        <a href="#"><i class="fa-solid fa-clock"></i><span> Recent</span></a>
        <a href="setting.jsp"><i class="fa-solid fa-cog"></i><span> Settings</span></a>
        <a href="#"><i class="fa-solid fa-address-book"></i><span> Contact</span></a>
        <a href="#"><i class="fa-solid fa-sign-out-alt"></i><span> Logout</span></a>
    </div>
    
    </header>

    <main class="main-content">
        <!-- Your main content here -->
    </main>

</body>
</html>
