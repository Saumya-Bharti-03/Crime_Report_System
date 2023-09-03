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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Saumya
 */
@MultipartConfig(maxFileSize = 16177215)
public class AddCriminal extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String cname = request.getParameter("cname");
        String add = request.getParameter("address");
        String psn = request.getParameter("psname");
        String state = request.getParameter("state");
        String dt = request.getParameter("date");
        String gen = request.getParameter("gender");
        //InputStream img;
        //img = getInputStream("image");
        //FileInputStream fis;
        //fis = new FileInputStream("image");
        RequestDispatcher dis = null;
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crs?useSSL=false", "root", "saumya1234");
            PreparedStatement pst = con.prepareStatement("insert into criminalinfo(name,address,psname,state,date,gender) values(?,?,?,?,?,?)");
            pst.setString(1, cname);
            pst.setString(2, add);
            pst.setString(3, psn);
            pst.setString(4, state);
            pst.setString(5, dt);
            pst.setString(6, gen);
            //pst.setBlob(7, img);
            //pst.setBinaryStream(7, fis, fis.available());

            int rowCount = pst.executeUpdate();
            dis = request.getRequestDispatcher("addcrirec.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            dis.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(AddCriminal.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

}
