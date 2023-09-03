<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Criminal Record</title>
        <%@include file="all_component/allcss.jsp" %>
        <style type="text/css">
            .back-img{
                background: url("img/2766347.jpg");
                width: 100%;
                height: 120vh;
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
        <%@include file="all_component/adminnav.jsp" %>
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <div class="container-fluid back-img text-white">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card mt-4">
                        <div class="card-header text-center text-white">
                            <h3>Add Criminal</h3></div>
                        <div class="card-body">
                            <form action="AddCriminal" method="post">
                                <h6>Fill in the data below</h6>
                                <div class="form-group">
                                    <label>Criminal Name</label>
                                    <input type="text" name="cname" class="form-control" placeholder="Full Name" required>
                                </div>
                                <div class="form-group">
                                    <label>Criminal Address</label> 
                                    <textarea rows="2" name="address" class="form-control" placeholder="Write address" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Police Station Name</label>
                                    <input type="text" name="psname" class="form-control" placeholder="Police Station Name" required>
                                </div>
                                <div class="form-group">
                                    <label>State</label>
                                    <input type="text" name="state" class="form-control" placeholder="Enter State" required>
                                </div>
                                <div class="form-group">
                                    <label>Crime Date & Time</label>
                                    <input type="datetime-local" name="date" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Gender : </label>
                                    <input type="radio" value="Male" name="gender" checked > Male   
                                    <input type="radio" value="Female" name="gender"> Female   
                                    <input type="radio" value="Other" name="gender"> Other  
                                </div>
                                <div style="text-align: center">
                                    <button class="btn btn-primary" type="submit">Save</button>
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
                swal("Congrats", "Criminal Record Added Successfully", "success");
            }
        </script>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
