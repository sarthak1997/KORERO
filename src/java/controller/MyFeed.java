/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.KeyWordDao;
import dao.QuestionDao;
import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.FacultyModel;
import model.QuestionModel;
import model.RelatedQuestionModel;
import model.StudentModel;

/**
 *
 * @author rohan
 */
public class MyFeed extends HttpServlet {

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
          
          HttpSession session=request.getSession();
          ServletContext context=getServletContext();
          
          String utype=(String)session.getAttribute("utype");
          StudentModel sm;
          FacultyModel fm;
          String id="",name;
          
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
          
          RelatedQuestionModel rlqm=new RelatedQuestionModel();
          RelatedQuestionModel rlqm1=new RelatedQuestionModel();
          
          ArrayList<Integer> alqid;
          
          QuestionDao qd=new QuestionDao();
          alqid = qd.getTheFeed(rlqm,id,context);
          qd.questionsForYou(rlqm1,id,alqid,context);
          
          UserDao ud=new UserDao();
          long uvc=ud.getMyUpvotes(id,context);
          KeyWordDao kwd=new KeyWordDao();
          long tc=kwd.getMyTagsCount(id,context);
          
          session.setAttribute("relques",rlqm);
          session.setAttribute("relques1",rlqm1);
          
          response.sendRedirect("Feed_Page.jsp?uvc="+uvc+"&tc="+tc);
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
