<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Show FIR Record</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
        <%@include file="all_component/adminnav.jsp" %> 
        
            <h1 class="text-center">FIR Record</h1>


            <%
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
                        <th scope="col">Name</th>
                        <th scope="col">Father's Name</th>
                        <th scope="col">Mother's Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">Date & Time</th>
                        <th scope="col">Information</th>
                        <th scope="col">Gender</th>
                        <th scope="col">Crime</th>
                        <th scope="col">User ID</th>
                    </tr>
                </thead>
                <%
                    try {
                        connection = DriverManager.getConnection(connectionUrl, userId, password);
                        statement = connection.createStatement();
                        String sql = "SELECT * FROM fir";

                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                %>
                <tbody>
                    <tr>
                        <td><%=resultSet.getString("id")%></td>
                        <td><%=resultSet.getString("name")%></td>
                        <td><%=resultSet.getString("fathername")%></td>
                        <td><%=resultSet.getString("mothername")%></td>
                        <td><%=resultSet.getString("address")%></td>
                        <td><%=resultSet.getString("date")%></td>
                        <td><%=resultSet.getString("info")%></td>
                        <td><%=resultSet.getString("gender")%></td>
                        <td><%=resultSet.getString("crime")%></td>
                        <td><%=resultSet.getString("uid")%></td>

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