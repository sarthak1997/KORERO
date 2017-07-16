/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BlogDao;
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
import model.AllBlogModel;
import model.BlogModel;
import model.FacultyModel;
import model.StudentModel;

/**
 *
 * @author rohan
 */
public class PostBlog extends HttpServlet {

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
            ServletContext context=getServletContext();
            
            FacultyModel fm;
            StudentModel sm;
            String utype=(String)session.getAttribute("utype");
            String id = null;
            
            if(utype.equals("faculty"))
            {
              fm=(FacultyModel)session.getAttribute("userModel");
              id=fm.getFid();
            }
            else if(utype.equals("student"))
            {
              sm=(StudentModel)session.getAttribute("userModel");
              id=sm.getSid();
            }
            
            int did=Integer.parseInt(request.getParameter("did"));
            String title=request.getParameter("title");
            String json=null;
            BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
            
            if(br != null)
            {
            json = br.readLine();
            }
            System.out.println("-------------"+json+"-----------------");
            BlogModel bm=new BlogModel();
            bm.setUid(id);
            bm.setBlogContent(json);
            bm.setDid(did);
            bm.setTitle(title);
            bm.setTimestamp(DateFormat.getDateInstance().format(new Date()).toString());
            
            BlogDao bd=new BlogDao();
            bd.insertBlog(bm,context);
            
            AllBlogModel abm=(AllBlogModel)session.getAttribute("myblogs");
            
            if(abm!=null)
            {
                abm.getAbm().add(bm);
            }
            else
            {
                ArrayList<BlogModel> albm=new ArrayList<>();
                albm.add(bm);
                abm=new AllBlogModel();
                abm.setAbm(albm);
            }
            session.setAttribute("myblogs",abm);
            
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
