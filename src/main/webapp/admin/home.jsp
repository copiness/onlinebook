<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin: Home</title>
    <!-- Bootstrap CDN for layout and icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <link rel="stylesheet" href="../all_component/index.css">
    
    <style>
        body {
            background: linear-gradient(135deg, #89fffd, #ef32d9);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            font-family: 'Arial', sans-serif;
            position: relative;
        }
        /* Floating shapes for a fancy background effect */
        .shape {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.2);
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
            animation: float 10s ease-in-out infinite;
        }
        .shape1 {
            width: 200px;
            height: 200px;
            top: -50px;
            left: -50px;
        }
        .shape2 {
            width: 300px;
            height: 300px;
            bottom: -100px;
            right: -100px;
        }
        @keyframes float {
            0%, 100% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-20px);
            }
        }
        .container {
            text-align: center;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
            z-index: 10; /* Ensures it's above floating shapes */
        }
        h1 {
            font-weight: 600;
            color: #333;
            margin-bottom: 40px;
        }
        .card {
            border: none;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
            transition: transform 0.4s ease-in-out, box-shadow 0.4s ease-in-out;
            border-radius: 12px;
            background-color: #f8f9fa;
        }
        .card:hover {
            transform: translateY(-15px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
        }
        .card-body {
            padding: 30px;
        }
        .card-body i {
            font-size: 3rem;
            color: #6c757d;
            margin-bottom: 15px;
        }
        h4 {
            font-weight: 500;
            color: #495057;
        }
        .row {
            gap: 30px;
        }
    </style>
</head>
<body>
	<jsp:include page="../all_component/navbar.jsp" />


    <!-- Floating shapes for fancy 3D effect -->
    <div class="shape shape1"></div>
    <div class="shape shape2"></div>

    <div class="container">
        <h1 class="text-center">Welcome Admin </h1>
        <div class="row justify-content-center gy-4">

            <!-- Add Books -->
            <div class="col-md-3">
                <a href="add_books.jsp">
                    <div class="card">
                        <div class="card-body">
                            <i class="fas fa-plus-square"></i>
                            <h4>Add Books</h4>
                        </div>
                    </div>
                </a>
            </div>

            <!-- All Books -->
            <div class="col-md-3">
                <a href="all_books.jsp">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa-solid fa-book-open"></i>
                            <h4>All Books</h4>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Orders -->
            <div class="col-md-3">
                <a href="orders.jsp">
                    <div class="card">
                        <div class="card-body">
                            <i class="fas fa-box-open"></i>
                            <h4>Orders</h4>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Logout -->
            <div class="col-md-3">
                <a data-toggle="modal" data-target="#logoutModal">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa-solid fa-right-to-bracket"></i>
                            <h4>Logout</h4>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>

    <!-- Logout Modal -->
    <div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Logout</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Are you sure you want to log out?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <a href="logout.jsp" class="btn btn-primary">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS for modal functionality -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>