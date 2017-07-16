/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AnswerDao;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import model.StudentModel;

/**
 *
 * @author rohan
 */
public class PostAnswer extends HttpServlet {

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
          HttpSession session=request.getSession();
          
          //String answer=request.getParameter("answer");
          int ansindex=Integer.parseInt(request.getParameter("ansindex"));
          String btnvalue=request.getParameter("btnvalue");
          //String btnval[]=request.getParameterValues("submit"); 
          //String json=request.getParameter("json");
          String json=null;
          BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
            if(br != null){
          json = br.readLine();}
            System.out.println(json);
          
          QuestionModel qm=(QuestionModel)session.getAttribute("currQues");
         
          AnswerModel am=(AnswerModel)session.getAttribute("currAns");
          AllAnswerModel aam=(AllAnswerModel)session.getAttribute("allAns");
          ArrayList<AnswerModel> answers = null;
          if(aam!=null)
          answers=aam.getAllans();
         
          
          am.setText(json);
          am.setAnswer(json);
        //am.setQid(qm.getQid());
          am.setAnsDate(DateFormat.getDateInstance().format(new Date()).toString());
          
          AnswerDao ad=new AnswerDao();
          if(btnvalue.equals("POST ANSWER"))
          {
              ad.insertAnswer(am,context);
              answers.add(am);
              
          }
          else
          {System.out.println("//////////////////////"+ansindex+"//////////////////");
              if(!(am.getReportAbuseCount()>=5))
              { 
                answers.remove(ansindex);
                ad.updateAnswer(am,context);
                answers.add(ansindex,am);
              }
              else
              {
                ad.updateAnswer(am,context);
                answers.add(am);
              }
                  
          }
          aam.setAllans(answers);
          session.setAttribute("allAns",aam);
          session.setAttribute("currAns",am);
          response.getWriter().write(json);
         //response.sendRedirect("QuestionPage.jsp?flag=true");
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
