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
import java.util.List;
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
        String key = request.getParameter("photosearchkey");
        String kindPhoto = request.getParameter("kind");
        int kind = 0;
        String msg = null;

        //ถ้าไม่ได้ใส่ key ในการค้นหา ให้ดึงข้อมูลทุกอย่างออกมา
        if (key == null || key.length() == 0 || key.equals("")) {
            key = "%";
        } else {
            key = "%" + key + "%";
        }
        
        if(kindPhoto == null || kindPhoto.length() == 0){
            kindPhoto = "all";
        }

        //แปลงชื่อประเภทของรูป ให้กลายเป็น id ของประเภทนั้นๆ ใน database
        if (kindPhoto.equalsIgnoreCase("animals")) {
            kind = 9;
        } else if (kindPhoto.equalsIgnoreCase("blackandwhite")) {
            kind = 1;
        } else if (kindPhoto.equalsIgnoreCase("cityscape")) {
            kind = 2;
        } else if (kindPhoto.equalsIgnoreCase("food")) {
            kind = 3;
        } else if (kindPhoto.equalsIgnoreCase("landscape")) {
            kind = 4;
        } else if (kindPhoto.equalsIgnoreCase("nature")) {
            kind = 5;
        } else if (kindPhoto.equalsIgnoreCase("people")) {
            kind = 6;
        } else if (kindPhoto.equalsIgnoreCase("toy")) {
            kind = 7;
        } else if (kindPhoto.equalsIgnoreCase("transportation")) {
            kind = 8;
        } else {
            kind = 0;
        }

        //เรียกใช้ method searchPhoto ใน Photo Model เพื่อค้นหา/ดึงรูปภาพจาก database
        List<Photo> photoList = null;
        try {
            photoList = Photo.searchPhoto(key, kind);
        } catch (Exception e) {
            System.out.println(e);
        }
        
        //ถ้า photoList == null หมายถึง ค้นหาไม่เจอรูป
        if(photoList == null){
            msg = key+" does not exist!!!";
        }
        
        request.setAttribute("msg", msg);
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
