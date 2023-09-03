/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.crs.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Saumya
 */
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uemail = request.getParameter("email");
        String upass = request.getParameter("password");
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crs?useSSL=false","root","saumya1234");
            PreparedStatement pst = con.prepareStatement("select * from userdetails where email = ? and password = ?");
            pst.setString(1, uemail);
            pst.setString(2, upass);
            
            ResultSet rs = pst.executeQuery();
            if(rs.next()) {
                session.setAttribute("uid", rs.getInt("id"));
                session.setAttribute("fname", rs.getString("firstname"));
                session.setAttribute("lname", rs.getString("lastname"));
                session.setAttribute("uemail", rs.getString("email"));
                session.setAttribute("gen", rs.getString("gender"));
                if(uemail.equals("admin@gmail.com") && upass.equals("admin123"))
                {
                    dispatcher = request.getRequestDispatcher("adminhome.jsp");
                }
                else {
                 dispatcher = request.getRequestDispatcher("userhome.jsp");   
                }
            }
            else {
               request.setAttribute("status", "failed");
               dispatcher = request.getRequestDispatcher("login.jsp");
            }
            dispatcher.forward(request, response);
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

}
