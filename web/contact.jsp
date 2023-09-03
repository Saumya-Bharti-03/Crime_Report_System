<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Contact Us</title>
        <%@include file="all_component/allcss.jsp" %>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style type="text/css">
            .back-img{
                background: url("img/sp.jpg");
                width: 100%;
                height: 105vh;
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
        <div class="container-fluid back-img text-white">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card mt-3">
                        <div class="card-header text-center text-white">
                            <i class="fa fa-envelope-open fa-3x" aria-hidden="true"></i> 
                            <h3>Contact Form</h3></div>
                        <div class="card-body">
                            <form action="Contact" method="post">
                                <div class="form-group">
                                    <div class="input-block">
                                        <label>Full Name</label>
                                        <input type="text" name="name"class="form-control" placeholder="Enter your name..." required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-block">
                                        <label>Email</label>
                                        <input type="text" name="email" class="form-control" placeholder="Enter email id..." required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-block">
                                        <label>Message Subject</label>
                                        <input type="text" name="msgsub" class="form-control" placeholder="Enter subject..." required>
                                    </div></div>
                                <div class="form-group">
                                    <div class="input-block textarea">
                                        <label>Drop your message here</label>
                                        <textarea rows="3" name="msg" type="text" class="form-control" placeholder="Enter your message..." required></textarea>
                                    </div></div>
                                <div style="text-align: center">
                                    <button class="btn btn-primary" type="submit">Send</button></div>
                            </form>  
                        </div>
                    </div>
                </div>
            </div>   
        </div>

        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
