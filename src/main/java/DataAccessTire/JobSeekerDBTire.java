/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccessTire;
import java.sql.*;
import BusinessTire.JobSeeker;
/**
 *
 * @author rsama
 */
public class JobSeekerDBTire {
     public boolean addJobSeeker(JobSeeker jobSeekerObj) {
        try {
            Connection cons = DBConnection.connect();
            String insertQuery = "INSERT INTO jobSeekers(jobId, name, contactInfo, desiredCountry, desiredJobType) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = cons.prepareStatement(insertQuery);
            ps.setString(1, jobSeekerObj.getJobId());
            ps.setString(2, jobSeekerObj.getName());
            ps.setString(3, jobSeekerObj.getContactInfo());
            ps.setString(4, jobSeekerObj.getDesiredCountry());
            ps.setString(5, jobSeekerObj.getDesiredJobType());

            ps.executeUpdate();
            ps.close();
            cons.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean editJobSeeker(JobSeeker jobSeekerObj) {
        try {
            Connection cons = DBConnection.connect();
            String updateQuery = "UPDATE jobSeekers SET name = ?, contactInfo = ?, desiredCountry = ?, desiredJobType = ? WHERE jobId = ?";
            PreparedStatement ps = cons.prepareStatement(updateQuery);
            ps.setString(1, jobSeekerObj.getName());
            ps.setString(2, jobSeekerObj.getContactInfo());
            ps.setString(3, jobSeekerObj.getDesiredCountry());
            ps.setString(4, jobSeekerObj.getDesiredJobType());
            ps.setString(5, jobSeekerObj.getJobId());

            ps.executeUpdate();
            ps.close();
            cons.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean deleteJobSeeker(String jobId) {
        try {
            Connection cons = DBConnection.connect();
            String deleteQuery = "DELETE FROM jobSeekers WHERE jobId = ?";
            PreparedStatement ps = cons.prepareStatement(deleteQuery);
            ps.setString(1, jobId);

            ps.executeUpdate();
            ps.close();
            cons.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
}
