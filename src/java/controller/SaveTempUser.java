/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mailmodule.OtpGenerator;
import mailmodule.SendMailSSL;
import model.TempUserModel;

/**
 *
 * @author rohan
 */
public class SaveTempUser extends HttpServlet {

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
           
           String utype=request.getParameter("utype");
           TempUserModel tum=new TempUserModel();
           OtpGenerator og=new OtpGenerator();
           Integer otp=og.generateOtp();
           
           if(utype.equals("Student"))
           {
               String uname=request.getParameter("namevalidate");
               String branch=request.getParameter("branch");
               String sem=request.getParameter("sem");
               String sec=request.getParameter("sec");
               String uid=request.getParameter("idvalidate");
               String sque=request.getParameter("sque");
               String email=request.getParameter("emailcontrol");
               String sans=request.getParameter("securityvalidate");
               
               tum.setBranch(branch);
               tum.setEmail(email);
               tum.setSans(sans);
               tum.setSec(sec);
               tum.setSem(sem);
               tum.setSque(sque);
               tum.setUid("S"+uid);
               tum.setUname(uname);
               tum.setUtype(utype);
               tum.setOtp(otp.intValue());
               
               UserDao ud=new UserDao();
               ud.saveTempUser(tum,context);
           }
           
           else if(utype.equals("Faculty"))
           {
               String uname=request.getParameter("namevalidate");
               String branch=request.getParameter("branch");
               String uid=request.getParameter("idvalidate");
               String sque=request.getParameter("sque");
               String email=request.getParameter("emailcontrol");
               String sans=request.getParameter("securityvalidate");
               
               tum.setBranch(branch);
               tum.setEmail(email);
               tum.setSans(sans);
               tum.setSque(sque);
               tum.setUid("F"+uid);
               tum.setUname(uname);
               tum.setUtype(utype);
               tum.setOtp(otp.intValue());
               
               UserDao ud=new UserDao();
               ud.saveTempUser(tum,context);
           }
           SendMailSSL sms=new SendMailSSL();
           sms.verification(tum.getEmail(),tum.getUid() ,otp.toString());
           response.sendRedirect("OtpPage.jsp");
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
