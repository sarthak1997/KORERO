/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.pollcontroller;

import dao.polldao.SetPriviledgesDao;
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
public class SetPriviledges extends HttpServlet {

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
           
                   System.out.println("set priviledgescontroller,,,,,,,,,,,,,");
            HttpSession session;
            session=request.getSession();
            int queid= ((Integer) session.getAttribute("pollquei")).intValue();
            System.out.println("quied");
            ServletContext context=getServletContext();
            String pollviewer=request.getParameter("pollviewer");
            String branch=request.getParameter("branch");
            String sem=request.getParameter("sem");
            String sec=request.getParameter("sec");
            
            System.out.println("pollviewer:"+pollviewer);
            System.out.println("sec:"+sec);
            System.out.println("sem:"+sem);System.out.println("branch:"+branch);
            
            CreateNewPollModel cpm=new CreateNewPollModel();
            cpm.setBranch(branch);
            cpm.setSec(sec);
            cpm.setSem(sem);
            cpm.setPollviewer(pollviewer);
            cpm.setPollqueid(queid);
            boolean flag;
            SetPriviledgesDao spd = new SetPriviledgesDao();
            try {
                flag=spd.insertpollpriviledge(cpm, context);
                if(flag)
                    response.sendRedirect("poll/pollhome.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(SetPriviledges.class.getName()).log(Level.SEVERE, null, ex);
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
