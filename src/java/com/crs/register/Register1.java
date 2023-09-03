/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.crs.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Saumya
 */
public class Register1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String fname = request.getParameter("firstname");
        String lname = request.getParameter("lastname");
        String uemail = request.getParameter("email");
        String upass = request.getParameter("password");
        String gen = request.getParameter("gender");
        RequestDispatcher dispatcher = null;
        Connection con = null;
        try{
           Class.forName("com.mysql.cj.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crs?useSSL=false","root","saumya1234");
            PreparedStatement pst = con.prepareStatement("insert into userdetails(firstname,lastname,email,password,gender) values(?,?,?,?,?)");
            pst.setString(1, fname);
            pst.setString(2, lname);
            pst.setString(3, uemail);
            pst.setString(4, upass);
            pst.setString(5, gen);
            
            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("register.jsp");
            if(rowCount > 0)
            {
                request.setAttribute("status", "success");
            }
            else{
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(Register1.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

}
