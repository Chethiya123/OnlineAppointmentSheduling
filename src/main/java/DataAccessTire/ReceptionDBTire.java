/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccessTire;

import BusinessTire.Appointment;
import java.sql.*;
public class ReceptionDBTire {
    
    
    public boolean takeAppointmentRequest(Appointment appointmentObj) {
        try {
            Connection cons = DBConnection.connect();
            String insertQuery = "INSERT INTO appointments(appointmentId, consultantId, date, time, patientId) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = cons.prepareStatement(insertQuery);
            ps.setString(1, appointmentObj.getAppointmentId());
            ps.setString(2, appointmentObj.getConsultantId());
           
           

            ps.executeUpdate();
            ps.close();
            cons.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean checkConsultantAvailability(String consultantId, String date, String time) {
        // Implement the logic here to check consultant availability by querying the database
        // For now, returning true as a placeholder
        return true;
    }

    public boolean cancelAppointment(String appointmentId) {
        try {
            Connection cons = DBConnection.connect();
            String deleteQuery = "DELETE FROM appointments WHERE appointmentId = ?";
            PreparedStatement ps = cons.prepareStatement(deleteQuery);
            ps.setString(1, appointmentId);

            ps.executeUpdate();
            ps.close();
            cons.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
}
