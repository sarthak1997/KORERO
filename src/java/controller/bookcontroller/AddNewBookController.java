/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.bookcontroller;

import dao.bookdao.AddNewBookDao;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.bookmodel.BookAdvisoryModel;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author rohan
 */
public class AddNewBookController extends HttpServlet {

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
            System.out.println("ADD NEW BOOK CONTROLLER");
            
            DiskFileItemFactory factory=new DiskFileItemFactory();
            ServletFileUpload upload=new ServletFileUpload(factory);
            
            BookAdvisoryModel bm=new BookAdvisoryModel();
                    
                List<FileItem> item;
//              out.println("before hii");
                item = upload.parseRequest(request);
                
//                out.println("hiiiiiiiii"+item);
                for(FileItem items:item )
                {
                    String s=items.getFieldName();
                    
                    if(s.equals("bookcover"))
                    { 
//                        out.print("image");
                        int size;
                        size = (int)items.getSize();
                        byte b[]=new byte[size];
                        try (InputStream is = items.getInputStream()) {
                            is.read(b);
                        }
                        
                       String fname=items.getName();
                       String path="C:\\Users\\rohan\\Desktop\\KoreroImages\\BookCover\\"+fname;
                        try (FileOutputStream fos = new FileOutputStream(path)) {
                            fos.write(b);
                            bm.setBookcover(path);
                        }
                       
                       //out.println("<img src=\"C:\\Users\\rohan\\Desktop\\java adv\\image\\web\\images\\ComputerScience(1).png\"/><br><br>");
                      // out.println("hiii .....................................................<br><br>");
                      // out.println("<img src=\"images\\"+fname+"\"/>");
                    }else if(s.equals("bookname"))
                    {
                      bm.setBookname(items.getString());
                    }else if(s.equals("bookprice"))
                    {
                      bm.setBookprice(Integer.parseInt(items.getString()));
                    }else if(s.equals("bookdesc"))
                    {
                      bm.setBookdesc(items.getString());
                    }else if(s.equals("bookauthor"))
                    {
                      bm.setBookauthor(items.getString());
                    }
                    
                    
                }
            
              HttpSession session;
            session=request.getSession();
            AddNewBookDao ad=new AddNewBookDao();
            boolean flag;
           
            flag=ad.insertbook(bm, context, session);
            if(flag)
                response.sendRedirect("book advisory/bookhome.jsp?msg=1");
            else
                response.sendRedirect("book advisory/bookhome.jsp?msg=2");
        }   catch (FileUploadException ex) {
            Logger.getLogger(AddNewBookController.class.getName()).log(Level.SEVERE, null, ex);
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
