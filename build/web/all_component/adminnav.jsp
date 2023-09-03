<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="adminhome.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    User</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="adduser.jsp">Add User</a>
                    <a class="dropdown-item" href="showuser.jsp">View User List</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Criminal Record</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="addcrirec.jsp">Add Criminal Record</a>
                    <a class="dropdown-item" href="showcriminal.jsp">View Criminal List</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    FIR</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="writefir.jsp">Add FIR</a>
                    <a class="dropdown-item" href="showfir.jsp">View FIR</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Crime Category</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="addcrime.jsp">Add Crime</a>
                    <a class="dropdown-item" href="showcc.jsp">View Crime List</a>
            </li>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="message.jsp">Message</a>
            </li>
        </ul>
        <a class="btn btn-light my-2 my-sm-0 mr-2" type="submit" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-user" aria-hidden="true"></i> Welcome <%=session.getAttribute("fname")%> (Admin)</a>
        <a class="btn btn-light my-2 my-sm-0" type="submit" href="Logout" >Logout <i class="fa fa-sign-out" aria-hidden="true"></i></a>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Profile</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <i class="fa fa-user fa-3x" aria-hidden="true"></i> 
                        <h5></h5>

                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>Id</th>
                                    <td><%=session.getAttribute("uid")%></td>
                                </tr>
                                <tr>
                                    <th>First Name</th>
                                    <td><%=session.getAttribute("fname")%></td>
                                </tr>
                                <tr>
                                    <th>Last Name</th>
                                    <td><%=session.getAttribute("lname")%></td>
                                </tr>
                                <tr>
                                    <th>Email Id</th>
                                    <td><%=session.getAttribute("uemail")%></td>
                                </tr>
                                <tr>
                                    <th>Gender</th>
                                    <td><%=session.getAttribute("gen")%></td>
                                </tr>
                            </tbody>
                        </table>
                        <div>
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>   
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</nav>