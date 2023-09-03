<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Page</title>
        <%@include file="all_component/allcss.jsp" %>
        <style type="text/css">
            .back-img{
                background: url("img/Murder.jpg");
                width: 100%;
                height: 87vh;
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
                            <h3>Login Page</h3></div>
                        <div class="card-body">
                            <form action="Login" method="post">
                                <div class="form-group">
                                    <label>Email id</label> 
                                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Username" required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password"  name="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password" required>
                                </div>
                                <div style="text-align: center">
                                    <button class="btn btn-primary" type="submit">Login</button>
                                    <input class="btn btn-primary" type="reset" value="Reset"></div>

                                <p>
                                    Don't have an account? <a href="register.jsp">Sign up</a>
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
            if (status == "failed") {
                swal("Sorry", "Wrong Username or Password", "error");
            }
        </script>

        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
