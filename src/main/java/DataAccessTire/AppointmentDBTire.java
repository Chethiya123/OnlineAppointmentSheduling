/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccessTire;
import BusinessTire.Appointment;
import java.sql.*;
/**
 *
 * @author rsama
 */
public class AppointmentDBTire {
    
    public boolean addAppointment(Appointment appointmentObj) {
        try {
            Connection cons = DBConnection.connect();
            String insertQuery = "INSERT INTO appointments(appointmentId, consultantId, jobId, appointmentDate, appointmentTime) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = cons.prepareStatement(insertQuery);
            ps.setString(1, appointmentObj.getAppointmentId());
            ps.setString(2, appointmentObj.getConsultantId());
            ps.setString(3, appointmentObj.getJobId());
            ps.setString(4, appointmentObj.getAppointmentDate());
            ps.setString(5, appointmentObj.getAppointmentTime());

            ps.executeUpdate();
            ps.close();
            cons.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean editAppointment(Appointment appointmentObj) {
        try {
            Connection cons = DBConnection.connect();
            String updateQuery = "UPDATE appointments SET consultantId = ?, jobId = ?, appointmentDate = ?, appointmentTime = ? WHERE appointmentId = ?";
            PreparedStatement ps = cons.prepareStatement(updateQuery);
            ps.setString(1, appointmentObj.getConsultantId());
            ps.setString(2, appointmentObj.getJobId());
            ps.setString(3, appointmentObj.getAppointmentDate());
            ps.setString(4, appointmentObj.getAppointmentTime());
            ps.setString(5, appointmentObj.getAppointmentId());

            ps.executeUpdate();
            ps.close();
            cons.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean deleteAppointment(String appointmentId) {
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
