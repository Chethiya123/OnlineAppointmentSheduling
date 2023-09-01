package Servlet;

import BusinessTire.Appointment;
import DataAccessTire.AppointmentDBTire;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addAppointment")
public class AddAppointmentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            String appointmentId, consultantId, jobId, appointmentDate, appointmentTime;
            
            // Retrieve form parameters
            appointmentId    = request.getParameter("appointmentId");
            consultantId     = request.getParameter("consultantId");
            jobId            = request.getParameter("jobId");
            appointmentDate  = request.getParameter("appointmentDate");
            appointmentTime  = request.getParameter("appointmentTime");
            
            // Create Appointment object
            Appointment appointment = new Appointment(appointmentId, consultantId, jobId, appointmentDate, appointmentTime);
            
            // Add appointment using data access tier
            AppointmentDBTire dbTire = new AppointmentDBTire();
            boolean result = dbTire.addAppointment(appointment);
            
            // Generate response HTML
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Appointment Status</title>");
            out.println("</head>");
            out.println("<body>");
            
            if (result) {
                out.println("<h1>Successfully Added Appointment</h1>");
            } else {
                out.println("<h1>Failed to Add Appointment</h1>");
            }
            
            out.println("<h4>Click here to <input type=\"button\" value=\"Go Back\" onclick=\"history.back()\"/></h4>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
