/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.wmnin.wmnin;

import com.mysql.cj.xdevapi.Statement;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Aylin
 */
@WebServlet(name = "signupServlet", urlPatterns = {"/signupServlet"})
public class signupServlet extends HttpServlet {
    conexionSQL connection = new conexionSQL();
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String name = request.getParameter("nameSignup");
            String pLastname = request.getParameter("pLastnameSignup"); 
            String mLastname = request.getParameter("mLastnameSignup"); 
            String birthdate = request.getParameter("fecha"); 
            String email = request.getParameter("emailSignup");
            String profileImg = request.getParameter("profileImgSignup");
            String username = request.getParameter("userSignup"); 
            String password = request.getParameter("passSignup");  
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection.conectar();
                Connection con;
                try {
                    System.out.println("SIGNUP....ENTRO AL TRY");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"WomanIn", "root", "1234");
                    java.sql.Statement st = con.createStatement();
                    System.out.println(name + pLastname + mLastname + birthdate  + email + username  + password + profileImg);
                    ResultSet rs = st.executeQuery("INSERT INTO TB_User(first_name, p_lastname, m_lastname, birthdate, email, username, `password`, singup_date, city, state, country, occupation )\n" +
                    "VALUES('" + name + "', '" + pLastname + "', '" + mLastname + "', '" + birthdate + "', '" + email + "', '" + username + "', '" + password + "', '" + profileImg + "' current_timestamp(), 'mty', 'nl', 'mx', 'estudiante');");
                    System.out.println("SIGNUP....Paso el query");


                    if(rs.next()) {
                        System.out.println("SIGNUP....ENTRO AL NEXT");
                            response.sendRedirect("dashboard.jsp");
                    } else {
                            System.out.println("SIGNUP....ERRORsito");
                            request.setAttribute("err", "1");
                            request.setAttribute("err_message", "Credenciales Incorrectas");

                            RequestDispatcher rd = request.getRequestDispatcher("index.jsp"); 
                            rd.forward(request, response);
                            
                    }
                } catch (SQLException ex) {
                    System.out.println("SIGNUP....ENTRO AL CATCH");
                    Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                    
            } catch (ClassNotFoundException ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
            }
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
