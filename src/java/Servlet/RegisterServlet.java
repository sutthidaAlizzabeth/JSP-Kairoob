/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.Member;

/**
 *
 * @author chaiyomove
 */
public class RegisterServlet extends HttpServlet {

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

        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("repassword");

        if (userName == null && password == null && rePassword == null) {
            getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
            return;
        }

        String message = "";
        //out.println(userName);
        //out.println(password);
        //out.println(rePassword);

        if (userName != null && password != null && rePassword != null && userName.length() != 0 && password.length() != 0 && rePassword.length() != 0) {
            if (password.equals(rePassword)) {
                Member member = Member.findByEmail(userName);
                //out.println("123"+member.getEmail()+"456");
                if (member != null) {                                                        //Email is already exist
                    message = "Email '" + member.getEmail() + "' is already registered !!!";
                    //out.println("Email '" + member.getEmail() + "' is already registered !!!");
                } else {
                    Member.addMember(userName, password);
                    //out.println("Registeration complete");
                    getServletContext().getRequestDispatcher("/Authentication.jsp").forward(request, response);
                }
            }

        }

        request.setAttribute("message", message);
        getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);

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
