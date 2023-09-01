package Servlet;

import BusinessTire.Appointment;
import DataAccessTire.AppointmentDBTire;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author rsama
 */
@WebService(serviceName = "AppointmentWebService")
public class AppointmentWebService {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    /**
     * Web service operation for adding an appointment
     */
    @WebMethod(operationName = "addAppointment")
    public boolean addAppointment(@WebParam(name = "appointmentId") String appointmentId, 
                                  @WebParam(name = "consultantId") String consultantId, 
                                  @WebParam(name = "jobId") String jobId,
                                  @WebParam(name = "appointmentDate") String appointmentDate, 
                                  @WebParam(name = "appointmentTime") String appointmentTime) {
        
        Appointment appointment = new Appointment(appointmentId, consultantId, jobId, appointmentDate, appointmentTime);
        AppointmentDBTire dbTire = new AppointmentDBTire();
        return dbTire.addAppointment(appointment);
    }

    /**
     * Web service operation for updating an appointment
     */
    @WebMethod(operationName = "updateAppointment")
    public boolean updateAppointment(@WebParam(name = "appointmentId") String appointmentId, 
                                     @WebParam(name = "consultantId") String consultantId, 
                                     @WebParam(name = "jobId") String jobId,
                                     @WebParam(name = "appointmentDate") String appointmentDate, 
                                     @WebParam(name = "appointmentTime") String appointmentTime) {
        
        Appointment appointment = new Appointment(appointmentId, consultantId, jobId, appointmentDate, appointmentTime);
        AppointmentDBTire dbTire = new AppointmentDBTire();
        return dbTire.editAppointment(appointment);
    }

    /**
     * Web service operation for deleting an appointment
     */
    @WebMethod(operationName = "deleteAppointment")
    public boolean deleteAppointment(@WebParam(name = "appointmentId") String appointmentId) {
        AppointmentDBTire dbTire = new AppointmentDBTire();
        return dbTire.deleteAppointment(appointmentId);
    }
}
