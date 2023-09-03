<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Show Crime List</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
        <%@include file="all_component/usernav.jsp" %> 
        
            <h1 class="text-center">List of Crimes</h1>


            <%
                String id = request.getParameter("userId");
                String driverName = "com.mysql.cj.jdbc.Driver";
                String connectionUrl = "jdbc:mysql://localhost:3306/crs?useSSL=false";
                String userId = "root";
                String password = "saumya1234";

                try {
                    Class.forName(driverName);
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }

                Connection connection = null;
                Statement statement = null;
                ResultSet resultSet = null;
            %>
            
            <table class="table table-striped" border="3">
                <thead>
                    <tr>
                        <th scope="col">S.No.</th>
                        <th scope="col">Crime Name</th>
                        <th scope="col">Description</th>
                    </tr>
                </thead>
                <%
                    try {
                        connection = DriverManager.getConnection(connectionUrl, userId, password);
                        statement = connection.createStatement();
                        String sql = "SELECT * FROM crimecategory";

                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                %>

                <tbody>
                    <tr>
                        <td><%=resultSet.getString("id")%></td>
                        <td><%=resultSet.getString("crimename")%></td>
                        <td><%=resultSet.getString("description")%></td>

                    </tr>
                </tbody>
                <%
                        }

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </table>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>