<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome User</title>
        <style type="text/css">
            .back-img{
                background: url("img/police.jpg");
                width: 10%;
                height: 87vh;
            }
        </style>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
       <%@include file="all_component/usernav.jsp" %> 
       <div class="container-fluid back-img"></div>
       
       <%@include file="all_component/footer.jsp" %>
    </body>
</html>
