<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>
 <link rel="navbar" href="all_component/navbar.jsp">
<link rel="stylesheet" href="all_component/index.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">  

</head>
<!-- Include Navbar -->
<jsp:include page="all_component/navbar.jsp" /> 

<body style="background-color: #f0f1f2 ">

<div class="container d-flex justify-content-center align-items-center" >
    <!-- Row with first column centered and second to the right -->
    <div class="row w-100 justify-content-center">
        <!-- First Column (Centered Table) -->
        <div class="col-md-6" >
      
            <div class="card bg-white">
                <div class="card-body" style="height: 300px; width: 900px" >
                    <h3 class="text-center text-success">Item Details</h3>
                    <table class="table table-striped" style="height: 200px; width: 200px">
                        <thead>
                            <tr>
                                <th scope="col">Book Name</th>
                                <th scope="col">Author</th>
                                <th scope="col">Price</th>
                                <th scope="col">Action</th>
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

        <!-- Second Column (To the Right, Form) -->
        <div class="col-md-6" style="height: 300px; width: 900px">
            <div class="card bg-white">
                <div class="card-body">
                    <h3 class="text-center text-success">Your Selected Item</h3>
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputName4">Name</label>
                                <input type="text" class="form-control" id="inputName4">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Email</label>
                                <input type="text" class="form-control" id="inputEmail4">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputPhone4">Phone Number</label>
                                <input type="number" class="form-control" id="inputPhone4">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputAddress4">Address</label>
                                <input type="text" class="form-control" id="inputAddress4">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputLandmark4">Landmark</label>
                                <input type="text" class="form-control" id="inputLandmark4">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputCity4">City</label>
                                <input type="text" class="form-control" id="inputCity4">
                            </div>
                            <div class="form-group">
                            <label>payment mode</label>
                            <section class="form-control">
                            <option>---select---</option>
                            <option>cash on dlivary</option>
                            </section>
                            <div class="text-center">
                            <button class="btn btn-warning">order Now</button>
                            <a href="index.jsp" class="btn btn-warning">Continue Shopping</a>
                            
                            </div>
                            
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
