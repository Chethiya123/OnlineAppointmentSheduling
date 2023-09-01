/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccessTire;
import BusinessTire.consultant;
import java.sql.*;


public class ConsultantDBTire {
    

    public boolean addConsultant(consultant consultantObj) {
        try {
            Connection cons = DBConnection.connect();
            String insertQuery = "INSERT INTO consultants(consultantId, name, specialization, availableDates, availableTimes) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = cons.prepareStatement(insertQuery);
            ps.setString(1, consultantObj.getConsultantId());
            ps.setString(2, consultantObj.getName());
            ps.setString(3, consultantObj.getSpecialization());
            ps.setString(4, consultantObj.getAvailableDates());
            ps.setString(5, consultantObj.getAvailableTimes());

            ps.executeUpdate();
            ps.close();
            cons.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean editConsultant(consultant consultantObj) {
        try {
            Connection cons = DBConnection.connect();
            String updateQuery = "UPDATE consultants SET name = ?, specialization = ?, availableDates = ?, availableTimes = ? WHERE consultantId = ?";
            PreparedStatement ps = cons.prepareStatement(updateQuery);
            ps.setString(1, consultantObj.getName());
            ps.setString(2, consultantObj.getSpecialization());
            ps.setString(3, consultantObj.getAvailableDates());
            ps.setString(4, consultantObj.getAvailableTimes());
            ps.setString(5, consultantObj.getConsultantId());

            ps.executeUpdate();
            ps.close();
            cons.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean deleteConsultant(String consultantId) {
        try {
            Connection cons = DBConnection.connect();
            String deleteQuery = "DELETE FROM consultants WHERE consultantId = ?";
            PreparedStatement ps = cons.prepareStatement(deleteQuery);
            ps.setString(1, consultantId);

            ps.executeUpdate();
            ps.close();
            cons.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
}
