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
import model.AnswerModel;
import model.QuestionAnswerModel;
import model.QuestionModel;

/**
 *
 * @author rohan
 */
public class UpdateMyAnswer extends HttpServlet {

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
            
            int ansindex=Integer.parseInt(request.getParameter("ansindex"));
            String json=null;
            
             BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
            if(br != null){
          json = br.readLine();}
            
            System.out.println(json+ansindex);
            QuestionAnswerModel qam=(QuestionAnswerModel)session.getAttribute("myanswers");
            ArrayList<AnswerModel> alam=qam.getAlam();
            
            AnswerModel am=alam.get(ansindex);
            am.setText(json);
            am.setAnswer(json);
            am.setAnsDate(DateFormat.getDateInstance().format(new Date()).toString());
            
            AnswerDao ad=new AnswerDao();
            alam.remove(ansindex);
            ad.updateAnswer(am,context);
            alam.add(ansindex,am);
            
            qam.setAlam(alam);
            session.setAttribute("myanswers",qam);
            response.getWriter().write(json);
            
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
