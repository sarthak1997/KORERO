/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.google.gson.Gson;
import dao.DomainDao;
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
import model.QuestionModel;
import model.RelatedQuestionModel;

/**
 *
 * @author rohan
 */
public class SearchAutoComplete extends HttpServlet {

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
        response.setContentType("application/json");
        try (PrintWriter out = response.getWriter()) {
            
            ServletContext context=getServletContext();
            HttpSession session=request.getSession();
            String term=request.getParameter("term");
            
            if(term.startsWith("#"))
            {
               DomainDao dd=new DomainDao();
               ArrayList<String> dlist=dd.getAllWorkSpaces(term,context);
               String searchList = new Gson().toJson(dlist);
               response.getWriter().write(searchList);
            }
            else if(term.startsWith("@"))
            {
               UserDao ud=new UserDao();
               ArrayList<String> allUserList=ud.getAllUsers(term,context);
               String userList=new Gson().toJson(allUserList);
               response.getWriter().write(userList);
            }
            else
            {     
            QuestionModel qm=new QuestionModel();
            qm.setQue(term);
            
            QuestionDao qd=new QuestionDao();
            RelatedQuestionModel rqm=new RelatedQuestionModel();
            ArrayList<String> suggestions=qd.getQuestionSuggestion(qm,rqm,context);
            String searchList = new Gson().toJson(suggestions);
            response.getWriter().write(searchList);
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
