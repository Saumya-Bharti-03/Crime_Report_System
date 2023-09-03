<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Write FIR</title>
        <%@include file="all_component/allcss.jsp" %>
        <style type="text/css">
            .back-img{
                background: url("img/2766379.jpg");
                width: 100%;
                height: 160vh;
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
        <%@include file="all_component/usernav.jsp" %>
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <div class="container-fluid back-img text-white">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card mt-4">
                        <div class="card-header text-center text-white">
                            <h3>FIR Register</h3></div>
                        <div class="card-body">
                            <form action="UserFir" method="post">
                                <h6>Fill in the data below</h6>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" name="name" class="form-control" placeholder="Full Name" required>
                                </div>
                                <div class="form-group">
                                    <label>Father Name</label>
                                    <input type="text" name="fathername" class="form-control" placeholder="Father's Name" required>
                                </div>
                                <div class="form-group">
                                    <label>Mother Name</label>
                                    <input type="text" name="mothername" class="form-control" placeholder="Mother's Name" required>
                                </div>
                                <div class="form-group">
                                    <label>Address</label> 
                                    <textarea rows="2" name="address" class="form-control" placeholder="Write your address" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Date & Time</label>
                                    <input type="datetime-local" name="date" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Information</label>
                                    <textarea rows="3" name="info" class="form-control" placeholder="Write your information" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Gender : </label>
                                    <input type="radio" value="Male" name="gender" checked > Male   
                                    <input type="radio" value="Female" name="gender"> Female   
                                    <input type="radio" value="Other" name="gender"> Other  
                                </div>
                                <div class="form-group">
                                    <label>Crime Category</label>
                                    <select class="form-control" name="crime" id="exampleFormControlSelect1">
                                        <option>Select</option>
                                        <option>Offenses Against the Human Body</option>
                                        <option>Offenses Against Property</option>
                                        <option>Offenses Relating to Public Tranquillity</option>
                                        <option>Offenses Relating to Document</option>
                                        <option>Offenses Against Women and Children</option>
                                        <option>Offenses Against the State and Terrorism</option>
                                        <option>Offenses Relating to Elections</option>
                                    </select>
                                </div>

                                <input type="hidden" value="<%=session.getAttribute("uid")%>" name="uid">
                                <div style="text-align: center">
                                    <button class="btn btn-primary" type="submit">Submit</button>
                                    <input class="btn btn-primary" type="reset" value="Reset"></div>
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
                swal("Congrats", "FIR Added Successfully", "success");
            }
        </script>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
