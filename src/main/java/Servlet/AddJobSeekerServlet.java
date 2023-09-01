package Servlet;

import BusinessTire.JobSeeker;
import DataAccessTire.JobSeekerDBTire;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addJobSeeker")
public class AddJobSeekerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            String jobId, name, contactInfo, desiredCountry, desiredJobType;
            
            // Retrieve form parameters
            jobId           = request.getParameter("jobId");
            name            = request.getParameter("name");
            contactInfo     = request.getParameter("contactInfo");
            desiredCountry  = request.getParameter("desiredCountry");
            desiredJobType  = request.getParameter("desiredJobType");
            
            // Create JobSeeker object
            JobSeeker jobSeeker = new JobSeeker(jobId, name, contactInfo, desiredCountry, desiredJobType);
            
            // Add JobSeeker using data access tier
            JobSeekerDBTire dbTire = new JobSeekerDBTire();
            boolean result = dbTire.addJobSeeker(jobSeeker);
            
            // Generate response HTML
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Job Seeker Status</title>");
            out.println("</head>");
            out.println("<body>");
            
            if (result) {
                out.println("<h1>Successfully Added Job Seeker</h1>");
            } else {
                out.println("<h1>Failed to Add Job Seeker</h1>");
            }
            
            out.println("<h4>Click here to <input type=\"button\" value=\"Go Back\" onclick=\"history.back()\"/></h4>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}