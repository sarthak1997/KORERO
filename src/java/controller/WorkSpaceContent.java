/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DomainDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DomainContentModel;
import model.FacultyModel;
import model.StudentModel;

/**
 *
 * @author rohan
 */
public class WorkSpaceContent extends HttpServlet {

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
            HttpSession session=request.getSession();
            ServletContext context=getServletContext();
            
            int did=Integer.parseInt(request.getParameter("did"));
            String dname=request.getParameter("dname");
            
            DomainContentModel dcm=new DomainContentModel();
            dcm.setDid(did);
            dcm.setDname(dname);
            
           String utype=(String)session.getAttribute("utype");
           String id="";
           StudentModel sm;
           FacultyModel fm;
           
           if(utype.equals("student"))
           { 
              sm=(StudentModel)session.getAttribute("userModel");
              id=sm.getSid();
           }
           
           else if(utype.equals("faculty"))
           { 
              fm=(FacultyModel)session.getAttribute("userModel");
              id=fm.getFid();
           }
            
            DomainDao dd=new DomainDao();
            dd.getDomainContent(dcm,id,context);
            
            session.setAttribute("workspacecontent", dcm);
            response.sendRedirect("Workspace_Page.jsp");
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
