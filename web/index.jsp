<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome</title>
        <style type="text/css">
            .back-img{
                background: url("img/crime.jpg");
                width: 100%;
                height: 87vh;
            }
        </style>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
       <%@include file="all_component/navbar.jsp" %> 
       
       <div class="container-fluid back-img">
           <div style="text-align:center">
            <h1 style="padding: 10px; font-weight: 500; text-shadow: 2px 2px 5px yellow; color: black; ">Crime Report System</h1>
           </div>
       </div>
       
       <%@include file="all_component/footer.jsp" %>
    </body>
</html>
