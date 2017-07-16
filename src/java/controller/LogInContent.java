/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AnswerDao;
import dao.BlogDao;
import dao.KeyWordDao;
import dao.QuestionDao;
import dao.UserDao;
import dao.bookdao.BookDao;
import dao.polldao.PollDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rohan
 */
public class LogInContent extends HttpServlet {

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
          
          String cat=request.getParameter("cat");
          
          UserDao ud=new UserDao();
          QuestionDao qd=new QuestionDao();
          BlogDao bd=new BlogDao();
          KeyWordDao kwd=new KeyWordDao();
          AnswerDao ad=new AnswerDao();
          BookDao bod=new BookDao();
          PollDao pd=new PollDao();
          
          long userCount=ud.getUserCount(context);
          long questionCount=qd.getQuestionCount(context);
          long upvoteCount=ud.getUpvoteCount(context);
          long tagCount=kwd.getTagsCount(context);
          long blogCount=bd.getBlogCount(context);
          long ansCount=ad.getAnsCount(context);
          long bookCount=bod.getBookCount(context);
          long pollCount=pd.getPollCount(context);
          
          
          response.sendRedirect("LogInPage.jsp?uc="+userCount+"&qc="+questionCount+"&uvc="+upvoteCount+"&tc="+tagCount+"&bc="+blogCount+"&ac="+ansCount+"&boc="+bookCount+"&pc="+pollCount+"&cat="+cat);
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
