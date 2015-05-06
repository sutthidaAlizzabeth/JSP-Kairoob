/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Photo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.TreeSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Alizzabeth
 */
public class PhotoListServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String search = request.getParameter("photosearchkey");
        String keys[] = null;

        //ถ้าไม่ได้ใส่ key ในการค้นหา ให้ดึงข้อมูลทุกอย่างออกมา
        if (search == null || search.length() == 0 || search.equals("")) {
            keys = new String[1];
            keys[0] = "%";
            
        } else {
            keys = search.split(" ");
        }
        

        //เรียกใช้ method searchPhoto ใน Photo Model เพื่อค้นหา/ดึงรูปภาพจาก database
        TreeSet<Photo> photoList = null;
        try {
            for(String key : keys){
                if(photoList == null){
                    photoList = new TreeSet<Photo>();
                }
                photoList.addAll(Photo.searchPhoto("%"+key+"%"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        
        request.setAttribute("photoList", photoList);
        
        getServletContext().getRequestDispatcher("/PhotoList.jsp").forward(request, response);

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
