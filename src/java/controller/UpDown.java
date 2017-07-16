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
public class UpDown extends HttpServlet {

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
           
            String uvote=request.getParameter("uvote");
            int qid=Integer.parseInt(request.getParameter("qid"));
            String uid=request.getParameter("uid");
            int index=Integer.parseInt(request.getParameter("index"));
          
            
            ServletContext context=getServletContext();
            HttpSession session=request.getSession();
            
            AnswerModel am=new AnswerModel();
            am.setQid(qid);
            am.setUid(uid);
            
           String utype=(String)session.getAttribute("utype");
           StudentModel sm;
           FacultyModel fm;
           String id="";
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
           
            
            AnswerDao ad=new AnswerDao();
            int votecount=0;
            if(uvote.equals("upvote"))
            {
            votecount=ad.incVote(am,context,id);
            }
            else
            {
            votecount=ad.decVote(am,context,id);
            }
            
            AllAnswerModel aam=(AllAnswerModel)session.getAttribute("allAns");
            ArrayList<AnswerModel> alam=aam.getAllans();
            am=alam.get(index);
            alam.remove(index);
            am.setUpvotes(votecount);
            alam.add(index, am);
            aam.setAllans(alam);
            session.setAttribute("allAns", aam);
            
            out.println(votecount);
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
