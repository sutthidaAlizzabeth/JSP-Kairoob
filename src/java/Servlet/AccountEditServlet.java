/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Member;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alizzabeth
 */
public class AccountEditServlet extends HttpServlet {

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
        if (request.getSession().getAttribute("user") != null) {
            String uId = request.getParameter("id");
            int id = Integer.parseInt(uId);
            String idenNum = request.getParameter("idenNum");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String tel = request.getParameter("tel");
            String newPass = request.getParameter("newPass");
            String reNewPass = request.getParameter("reNewPass");
            String oldNewPass = request.getParameter("oldNewPass");
            Member user = (Member) request.getSession().getAttribute("user");
            String pass = user.getPassword();

            if (newPass != null && newPass.length() != 0 && reNewPass != null && reNewPass.length() != 0) {
                if (newPass.equals(reNewPass) && oldNewPass.equals(pass)) {
                    user = Member.editAccount(id, idenNum, firstName, lastName, tel, user);
                    user = Member.changePassword(id, newPass ,user);
                    request.getSession().setAttribute("user", user);
                    
                    
                    request.setAttribute("message", "Password was changed.");
                    getServletContext().getRequestDispatcher("/AccountShow.jsp").forward(request, response);

                } else {
                    request.setAttribute("message", "New Password and Re-New Password are not match.");
                    getServletContext().getRequestDispatcher("/AccountEdit.jsp").forward(request, response);
                }
            }else{
                user = Member.editAccount(id, idenNum, firstName, lastName, tel, user);
                String test = user.getIdenNum();
                request.getSession().setAttribute("user", user);
                getServletContext().getRequestDispatcher("/AccountShow.jsp").forward(request, response);
            }

        } else {
            getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
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
