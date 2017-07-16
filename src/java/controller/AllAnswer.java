/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AnswerDao;
import dao.QuestionDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AllAnswerModel;
import model.AnswerModel;
import model.FacultyModel;
import model.QuestionModel;
import model.RelatedQuestionModel;
import model.StudentModel;

/**
 *
 * @author rohan
 */
public class AllAnswer extends HttpServlet {

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
           int indexOfAlqm=Integer.parseInt(request.getParameter("id"));
           String cat=request.getParameter("cat");
           
           RelatedQuestionModel rqm;
           if(cat.equals("cat1"))
           rqm=(RelatedQuestionModel)session.getAttribute("relques");
           
           else if(cat.equals("cat3"))
           rqm=(RelatedQuestionModel)session.getAttribute("RelatedQuestions");
           
           else
           rqm=(RelatedQuestionModel)session.getAttribute("relques1");    
               
           ArrayList<QuestionModel> alqm=rqm.getRelatedque();
           QuestionModel qm=alqm.get(indexOfAlqm);
           
           session.setAttribute("currQues",qm);
           
           AnswerModel am=new AnswerModel();
           am.setQid(qm.getQid());
           
           String utype=(String)session.getAttribute("utype");
           StudentModel sm;
           FacultyModel fm;
           
           if(utype.equals("student"))
           { 
               sm=(StudentModel)session.getAttribute("userModel");
               am.setUid(sm.getSid());
               am.setUname(sm.getName());
           }
           
           else if(utype.equals("faculty"))
           { 
               fm=(FacultyModel)session.getAttribute("userModel");
               am.setUid(fm.getFid());
               am.setUname(fm.getName());
           }
           AnswerDao ad=new AnswerDao();
           boolean flag=ad.isAnswered(am,context);
           
           AllAnswerModel alm=new AllAnswerModel();
           ad.getAllAnswers(alm,qm.getQid(),context);
           
           session.setAttribute("allAns", alm);
           session.setAttribute("currAns", am);
           
           QuestionDao qd=new QuestionDao();
           RelatedQuestionModel rqm1=new RelatedQuestionModel();
           qd.getQuestionSuggestion(qm, rqm1, context);
           session.setAttribute("RelatedQuestions",rqm1);
           
           response.sendRedirect("Question_Page.jsp?flag="+flag);
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
