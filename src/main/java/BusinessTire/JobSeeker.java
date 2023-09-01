/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BusinessTire;

/**
 *
 * @author rsama
 */
public class JobSeeker {
    
    

    private String jobId;
    private String name;
    private String contactInfo;
    private String desiredCountry;
    private String desiredJobType;

    public JobSeeker(String jobId, String name, String contactInfo, String desiredCountry, String desiredJobType) {
        this.jobId = jobId;
        this.name = name;
        this.contactInfo = contactInfo;
        this.desiredCountry = desiredCountry;
        this.desiredJobType = desiredJobType;
    }

    public JobSeeker() {
    }

    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        this.jobId = jobId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContactInfo() {
        return contactInfo;
    }

    public void setContactInfo(String contactInfo) {
        this.contactInfo = contactInfo;
    }

    public String getDesiredCountry() {
        return desiredCountry;
    }

    public void setDesiredCountry(String desiredCountry) {
        this.desiredCountry = desiredCountry;
    }

    public String getDesiredJobType() {
        return desiredJobType;
    }

    public void setDesiredJobType(String desiredJobType) {
        this.desiredJobType = desiredJobType;
    }
}
