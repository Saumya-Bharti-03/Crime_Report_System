<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About</title>
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid" style=" background-image: linear-gradient(to right bottom, #b512e0, #ff009b, #ff5b5f, #ffa83f, #f6e35c);
          height: 600px;">
        <div style="text-align:center">
            <h1 style="padding: 10px; font-weight: 500; text-shadow: 2px 2px 5px black; color: white; ">About Us</h1>
            
            <div class="card-deck" >
        <div class="card h-50" >
            <img class="card-img-top" src="img/about.jpg" width="200px" height="320px">
        <div class="card-body">
        <h5 class="card-title">About the website</h5>
        <p class="card-text">This platform is designed to provide a reliable and efficient system for citizens to report crimes in their community.</p>
        </div>
        </div>
        <div class="card h-50 pb-4 pt-5">
        <div class="card-body">
        <h5 class="card-title">Why it is required?</h5>
        <p class="card-text">The Crime Report System is expected to improve the efficiency and accuracy of crime reporting and response, ultimately leading to a safer and more secure community. This can help keep criminal records in order.</p>
        <p>Ample work is attached to a police station, which means a lot of information is needed to be stored, for that data storage and maintenance system is required. Especially, details of criminals and their crimes. Having information stored, helps cops to stay updated and any of the details might come in handy in the future.</p>
        </div>
        </div>
        <div class="card h-50">
            <img class="card-img-top" src="img/image.jpg" width="200px" height="320px">
        <div class="card-body">
        <h5 class="card-title">About Me</h5>
        <p class="card-text">I am Saumya Bharti. Currently I am pursuing Master of Computer Applications(MCA) from National Institute of Technology, Raipur.</p>
        </div>
        </div>
        </div>
    </div> 
        </div>
            <%@include file="all_component/footer.jsp" %>
    </body>
</html>
