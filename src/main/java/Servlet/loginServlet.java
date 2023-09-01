/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BusinessTire.userBusinessTire;  // Import BusinessTire.userBusinessTire
import DataAccessTire.userDbTire;      // Import DataAccessTire.userDB tire 
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
                   try{
            userBusinessTire role=new userBusinessTire();
            role.setUsername(request.getParameter("txtuname"));
            role.setPassword(request.getParameter("txtpasswrd"));
            role=userDbTire.login(role);
          
            if(role.isValid()){
                HttpSession session=request.getSession(true);
                session.setAttribute("role", role);
                if(role.getRole().equals("consultant")){                    
                    response.sendRedirect("consultant.jsp");
                }
              
                else if(role.getRole().equals("admin")){                    
                    response.sendRedirect("admin.jsp");
                }
                
            }
            else{
                request.setAttribute("errorMessage", "No");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                //request.getRequestDispatcher("index.jsp").include(request, response);
            }
        }
        catch(Throwable  theException){
            System.out.println("Exception is"+theException);
           
        } 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
