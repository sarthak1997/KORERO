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
import mailmodule.SendMailSSL2;
import model.FacultyModel;
import model.StudentModel;

/**
 *
 * @author rohan
 */
public class CheckDetails extends HttpServlet {

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
            ServletContext context=getServletContext();
            
            String uid=request.getParameter("id");
            String sans=request.getParameter("sans");
            String sque=request.getParameter("sque");
            boolean flag=false;
            String mail="",pwd="";
            
            if(uid.toLowerCase().startsWith("s"))
            {
                StudentModel sm=new StudentModel();
                sm.setSid(uid);
                sm.setSecurityque(sque);
                sm.setSecurityans(sans);
                
                StudentDao sd=new StudentDao();
                flag=sd.checkVerification(sm,context);
                mail=sm.getEmail();
                pwd=sm.getPassword();
            }
            else if(uid.toLowerCase().startsWith("f"))
            {
                FacultyModel fm=new FacultyModel();
                fm.setFid(uid);
                fm.setSecurityque(sque);
                fm.setSecurityans(sans);
                
                FacultyDao fd=new FacultyDao();
                flag=fd.checkVerification(fm,context);
                mail=fm.getEmail();
                pwd=fm.getPassword();
            }
            
            if(flag)
            {
                SendMailSSL2 sms=new SendMailSSL2();
           sms.verification(mail, pwd);
           response.sendRedirect("LogInContent?cat=mailsent");
            }
            else
                response.sendRedirect("LogInContent?cat=invalid");
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
