/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.FacultyDao;
import dao.StudentDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.FacultyModel;
import model.StudentModel;

/**
 *
 * @author rohan
 */
public class UpdateProfile extends HttpServlet {

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
            ServletContext context=getServletContext();
            HttpSession session=request.getSession();
            
            String utype=request.getParameter("utype");
            
            
            if(utype.equals("Student"))
            {
               StudentModel sm=(StudentModel)session.getAttribute("userModel");
               
               sm.setName(request.getParameter("uname"));
               
               sm.setBranch(request.getParameter("branch"));
               sm.setSemester(request.getParameter("sem"));
               sm.setSection(request.getParameter("sec"));
               sm.setAboutme(request.getParameter("about"));
               
               StudentDao sd=new StudentDao();
               sd.updateDetails(sm,context);
               
               session.setAttribute("userModel", sm);
               response.sendRedirect("MyProfile");
            }
            else if(utype.equals("Faculty"))
            {
                FacultyModel fm=(FacultyModel)session.getAttribute("userModel");
               
               fm.setName(request.getParameter("uname"));
               fm.setDepartment(request.getParameter("dept"));
               fm.setAboutme(request.getParameter("about"));
               
               FacultyDao fd=new FacultyDao();
               fd.updateDetails(fm,context);
               
               session.setAttribute("userModel", fm);
               response.sendRedirect("MyProfile");
            }
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
