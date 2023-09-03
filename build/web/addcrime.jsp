<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Add Crimes</title>
    <%@include file="all_component/allcss.jsp" %>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <style type="text/css">
            .back-img{
                background: url("img/2766347.jpg");
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
    <%@include file="all_component/adminnav.jsp" %>
    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <div class="container-fluid back-img text-white">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card mt-5">
                        <div class="card-header text-center text-white">
                            <h3>Add Crime</h3></div>
                        <div class="card-body">
                            <form action="AddCrime" method="post">
                                <div class="form-group">
                                    <div class="input-block">
                                    <label>Crime Name</label>
                                    <input type="text" name="crimename" class="form-control" placeholder="Enter crime name..." required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-block textarea">
                                    <label>Description</label>
                                    <textarea rows="3" name="description" type="text" class="form-control" placeholder="Write the description" required></textarea>
                                    </div></div>
                                <div style="text-align: center">
                                    <button class="btn btn-primary" type="submit">Save</button></div>
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
            swal("Congrats", "Crime Added Successfully", "success");
        }
    </script>
    
    <%@include file="all_component/footer.jsp" %>
</body>
</html>
