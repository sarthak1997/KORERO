/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AnswerDao;
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
import model.StudentModel;

/**
 *
 * @author rohan
 */
public class ReportAnswer extends HttpServlet {

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
            ServletContext context= getServletContext();
            
            int qid=Integer.parseInt(request.getParameter("qid"));
            String type=request.getParameter("type");
            String uid=request.getParameter("uid");
            int answerindex=Integer.parseInt(request.getParameter("index"));
            
            AnswerModel am=new AnswerModel();
            am.setQid(qid);
            am.setUid(uid);
            
            AnswerDao ad=new AnswerDao();
            if(type.equals("faculty"))
            {
            FacultyModel fm=(FacultyModel)session.getAttribute("userModel");
            int d=ad.deleteAnswer(am,context);
            
            AllAnswerModel aam=(AllAnswerModel)session.getAttribute("allAns");
            ArrayList<AnswerModel> answers=aam.getAllans();
            answers.remove(answerindex);
            aam.setAllans(answers);
            session.setAttribute("allAns",aam);
            
           if(am.getUid().equals(fm.getFid()))
            {
               AnswerModel am1=(AnswerModel)session.getAttribute("currAns");
               am1.setReportAbuseCount(5);
               session.setAttribute("currAns",am1);
            }
            
            out.println("DELETED"+answerindex);
            }
            else
            {
            StudentModel sm=(StudentModel)session.getAttribute("userModel");
            int d=ad.incReportCount(am,context,sm.getSid());
            if(d==1)
                out.println("Reported Successfully");
            else
                out.println("Already Reported");
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
