/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.pollcontroller;

import dao.polldao.QueVotedDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.pollmodel.CreateNewPollModel;

/**
 *
 * @author rohan
 */
public class QueVotedController extends HttpServlet {

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
            
            
            System.out.println(" QUE VOTED CONTROLLER");
            
            System.out.println(" optid "+request.getParameter("opt") );
           // int queid=Integer.parseInt(request.getParameter("queid"));
            String optque=request.getParameter("opt");
            String[] optque1 = optque.split(",");
            int optid=Integer.parseInt(optque1[0]);
            int queid=Integer.parseInt(optque1[1]);
            //System.out.println(" QUEid "+ queid);
            System.out.println(" optid "+ optid);
            
            HttpSession session;
            session=request.getSession();
            CreateNewPollModel cm=new CreateNewPollModel();
            cm.setPollqueid(queid);
             cm.setOptid(optid);
             
             boolean flag;
             QueVotedDao qd=new QueVotedDao();
             flag=qd.insertvote(cm,context, session);
             if(flag)
                 response.sendRedirect("VotePollController");
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
