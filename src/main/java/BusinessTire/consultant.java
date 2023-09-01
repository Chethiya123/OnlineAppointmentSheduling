/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BusinessTire;

/**
 *
 * @author rsama
 */
public class consultant {
     private String consultantId;
    private String name;
    private String specialization;
    private String availableDates;
    private String availableTimes;

    public consultant(String consultantId, String name, String specialization, String availableDates, String availableTimes) {
        this.consultantId = consultantId;
        this.name = name;
        this.specialization = specialization;
        this.availableDates = availableDates;
        this.availableTimes = availableTimes;
    }

    public consultant() {
    }

    public String getConsultantId() {
        return consultantId;
    }

    public void setConsultantId(String consultantId) {
        this.consultantId = consultantId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getAvailableDates() {
        return availableDates;
    }

    public void setAvailableDates(String availableDates) {
        this.availableDates = availableDates;
    }

    public String getAvailableTimes() {
        return availableTimes;
    }

    public void setAvailableTimes(String availableTimes) {
        this.availableTimes = availableTimes;
    }
}
