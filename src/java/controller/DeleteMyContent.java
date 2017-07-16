/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AnswerDao;
import dao.BlogDao;
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
import model.AllBlogModel;
import model.AnswerModel;
import model.BlogModel;
import model.QuestionAnswerModel;
import model.QuestionModel;
import model.RelatedQuestionModel;

/**
 *
 * @author rohan
 */
public class DeleteMyContent extends HttpServlet {

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
            //System.out.println("innnnnnnnnnnnnnnnnnnn");
            ServletContext context = getServletContext();
            HttpSession session=request.getSession();
            
            String type=request.getParameter("type");
            if(type.equals("ans"))
            {
                int qid=Integer.parseInt(request.getParameter("qid"));
                String uid=request.getParameter("uid");
                int index=Integer.parseInt(request.getParameter("index"));
                
                QuestionAnswerModel qam=(QuestionAnswerModel)session.getAttribute("myanswers");
                ArrayList<QuestionModel> alqm=qam.getAlqm();
                ArrayList<AnswerModel> alam=qam.getAlam();
                
                alqm.remove(index);
                alam.remove(index);
                
                qam.setAlam(alam);
                qam.setAlqm(alqm);
                
                session.setAttribute("myanswers",qam);
                
                AnswerModel am=new AnswerModel();
                am.setQid(qid);
                am.setUid(uid);
                
                AnswerDao ad=new AnswerDao();
                ad.deleteMyAnswer(am,context);
                
                out.println("Deleted Successfully");
                       
            }
            else if(type.equals("que"))
            {
                int qid=Integer.parseInt(request.getParameter("qid"));
                int index=Integer.parseInt(request.getParameter("index"));
                
                RelatedQuestionModel rqm=(RelatedQuestionModel)session.getAttribute("myquestions");
                ArrayList<QuestionModel> alqm=rqm.getRelatedque();
                alqm.remove(index);
                rqm.setRelatedque(alqm);
                session.setAttribute("myquestions", rqm);
                
                QuestionModel qm=new QuestionModel();
                qm.setQid(qid);
                
                QuestionDao qd=new QuestionDao();
                qd.deleteMyQuestion(qm,context);
                
                out.println("Deleted Successfully");
            }
            else if(type.equals("blog"))
            {
                int bid=Integer.parseInt(request.getParameter("bid"));
                int index=Integer.parseInt(request.getParameter("index"));
                
                AllBlogModel abm=(AllBlogModel)session.getAttribute("myblogs");
                ArrayList<BlogModel> albm=abm.getAbm();
                albm.remove(index);
                abm.setAbm(albm);
                session.setAttribute("myblogs", abm);
                
                BlogModel bm=new BlogModel();
                bm.setBlogId(bid);
                
                BlogDao bd=new BlogDao();
                bd.deleteBlog(bm,context);
                
                out.println("Deleted Successfully");
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
