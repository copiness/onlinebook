<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Book</title>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_component/navbar.jsp"%>

<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="text-center text-primary p-1">Sell Old Book</h5>

                    <form action="" method="post">
                        enctype="multipart/form-data">
                        
                        <div class="form-group">
                            <label for="exampleInputEmail1">Book Name*</label> <input
                                name="bname" type="text" class="form-control"
                                id="exampleInputEmail1" aria-describedby="emailHelp" >
                        </div>
                        
                        <div class="form-group">
                            <label for="authorName">Author Name*</label> <input
                                name="author" type="text" class="form-control"
                                id="authorName" aria-describedby="emailHelp">
                        </div>
                        
                        <div class="form-group">
                            <label for="exampleInputPassword1">Price*</label><input
                                name="Price" type="number" class="form-control" 
                                id="exampleInputPassword1">
                        </div>
 

                        <div class="form-group">
                            <label for="exampleFormControlField1">Upload photo</label><input
                                name="bimg" type="file" class="form-control-file" 
                                id="exampleFormControlField1">
                        </div>

                        <button type="submit" class="btn btn-primary">Sell</button>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>