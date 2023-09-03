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
public class UserFir extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String name = request.getParameter("name");
        String fname = request.getParameter("fathername");
        String mname = request.getParameter("mothername");
        String add = request.getParameter("address");
        String dt = request.getParameter("date");
        String inf = request.getParameter("info");
        String gen = request.getParameter("gender");
        String crime = request.getParameter("crime");
        int uid = Integer.parseInt(request.getParameter("uid"));
        RequestDispatcher dis = null;
        Connection con = null;
        try{
           Class.forName("com.mysql.cj.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crs?useSSL=false","root","saumya1234");
            PreparedStatement pst = con.prepareStatement("insert into fir(name,fathername,mothername,address,date,info,gender,crime,uid) values(?,?,?,?,?,?,?,?,?)");
            pst.setString(1, name);
            pst.setString(2, fname);
            pst.setString(3, mname);
            pst.setString(4, add);
            pst.setString(5, dt);
            pst.setString(6, inf);
            pst.setString(7, gen);
            pst.setString(8, crime);
            pst.setInt(9, uid);
            
            int rowCount = pst.executeUpdate();
            dis = request.getRequestDispatcher("ufir.jsp");
            if(rowCount > 0)
            {
                request.setAttribute("status", "success");
            }
            else{
                request.setAttribute("status", "failed");
            }
            dis.forward(request, response);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(UserFir.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

}
