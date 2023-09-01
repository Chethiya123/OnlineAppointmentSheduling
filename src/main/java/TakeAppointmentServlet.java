import BusinessTire.Appointment;
import BusinessTire.Reception;
import DataAccessTire.ReceptionDBTire;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/takeAppointment")
public class TakeAppointmentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            
            String appointmentId, consultantId, date, time, patientId;
            
            // Retrieve form parameters
            appointmentId   = request.getParameter("appointmentId");
            consultantId    = request.getParameter("consultantId");
            date            = request.getParameter("date");
            time            = request.getParameter("time");
            patientId       = request.getParameter("patientId");
            
            // Create Appointment object
            Appointment appointment = new Appointment(appointmentId, consultantId, date, time, patientId);
            
            // Create Reception object and take appointment request
            Reception reception = new Reception();
            boolean businessResult = reception.takeAppointmentRequest(appointment);
            
            // Add to database using ReceptionDBTire
            ReceptionDBTire dbTire = new ReceptionDBTire();
            boolean dbResult = dbTire.takeAppointmentRequest(appointment);
            
            // Generate HTML response
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Appointment Status</title>");
            out.println("</head>");
            out.println("<body>");
            
            if (businessResult && dbResult) {
                out.println("<h1>Successfully Taken Appointment</h1>");
            } else {
                out.println("<h1>Failed to Take Appointment</h1>");
            }
            
            out.println("<h4>Click here to <input type=\"button\" value=\"Go Back\" onclick=\"history.back()\"/></h4>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
