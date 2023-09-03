<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Page</title>
        <%@include file="all_component/allcss.jsp" %>
        <style type="text/css">
            .back-img{
                background: url("img/2766379.jpg");
                width: 100%;
                height: 130vh;
                background-size: cover;
            }
            .card{
                border-radius: 5px;
                backdrop-filter: blur(5px);
                background-color: rgba(255,255,255,0.2);
            }
        </style>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <div class="container-fluid back-img text-white">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card mt-4">
                        <div class="card-header text-center text-white">
                            <i class="fa fa-user-circle fa-3x" aria-hidden="true"></i>
                            <h3>User Registration</h3></div>
                        <div class="card-body">
                            <form action="Register1" method="post">
                                <div class="form-group">
                                    <label>First Name</label>
                                    <input type="text" name="firstname" class="form-control" placeholder="Enter First Name" required>
                                </div>
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <input type="text" name="lastname" class="form-control" placeholder="Enter Last Name" required>
                                </div>
                                <div class="form-group">
                                    <label>Email id</label> 
                                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Confirm Password</label>
                                        <input type="password" name="repass" class="form-control" id="exampleInputPassword1" placeholder="Re-enter Password" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Gender : </label>
                                        <input type="radio" value="Male" name="gender" checked > Male   
                                        <input type="radio" value="Female" name="gender"> Female   
                                        <input type="radio" value="Other" name="gender"> Other  
                                    </div>
                                    <div style="text-align: center">
                                        <button class="btn btn-primary" type="submit">Register</button>
                                        <input class="btn btn-primary" type="reset" value="Reset"></div>

                                    <p>
                                        Already a member? <a href="login.jsp">Sign in</a>
                                    </p>
                            </form>  
                        </div>
                    </div>
                </div>
            </div>   
        </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">

    <script type="text/javascript">
        var status = document.getElementById("status").value;
        if (status == "success") {
            swal("Congrats", "Account Created Successfully", "success");
        }
    </script>

    <%@include file="all_component/footer.jsp" %>
</body>
</html>
