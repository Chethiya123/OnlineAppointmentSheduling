package Servlet;

import BusinessTire.consultant;
import DataAccessTire.ConsultantDBTire;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addConsultant")
public class AddConsultantServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            String consultantId, name, specialization, availableDates, availableTimes;
            
            // Retrieve form parameters
            consultantId     = request.getParameter("consultantId");
            name             = request.getParameter("name");
            specialization   = request.getParameter("specialization");
            availableDates   = request.getParameter("availableDates");
            availableTimes   = request.getParameter("availableTimes");
            
            // Create Consultant object
            consultant newConsultant = new consultant(consultantId, name, specialization, availableDates, availableTimes);
            
            // Add consultant using data access tier
            ConsultantDBTire dbTire = new ConsultantDBTire();
            boolean result = dbTire.addConsultant(newConsultant);
            
            // Generate response HTML
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Consultant Status</title>");
            out.println("</head>");
            out.println("<body>");
            
            if (result) {
                out.println("<h1>Successfully Added Consultant</h1>");
            } else {
                out.println("<h1>Failed to Add Consultant</h1>");
            }
            
            out.println("<h4>Click here to <input type=\"button\" value=\"Go Back\" onclick=\"history.back()\"/></h4>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}