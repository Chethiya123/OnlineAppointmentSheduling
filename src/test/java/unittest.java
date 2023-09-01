/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import BusinessTire.JobSeeker;
import static org.junit.Assert.assertNotNull;
 import org.junit.Test;
import static org.junit.Assert.assertTrue;

public class unittest {

    private static class UserDB {

        public UserDB() {
        }

        private boolean login(String username, String password) {
            throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        }
    }

    private static class JobSeekerDB {

        public JobSeekerDB() {
        }

        private JobSeeker viewJobSeeker(String jobSeeker1) {
            throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        }
    }

    private static class ConsultantDB {

        public ConsultantDB() {
        }
    }

    private static class ConsultantDB {

        public ConsultantDB() {
        }
    }
 
public class UserLoginTest {

  @Test
  public void testUserLogin() {
    UserDB db = new UserDB();
    boolean isLoggedIn = db.login("username", "password");
    assertTrue(isLoggedIn);
  }
}

public class ViewJobSeekerTest {

  @Test
  public void testViewJobSeeker() {
    JobSeekerDB db = new JobSeekerDB();
    JobSeeker jobSeeker = db.viewJobSeeker("JobSeeker1");
    assertNotNull(jobSeeker);
  }
}

public class ViewConsultantTest {

  @Test
  public void testViewConsultant() {
    ConsultantDB db = new ConsultantDB();
    Consultant consultant = db.viewConsultant("Consultant1");
    assertNotNull(consultant);
  }
}


public class AddConsultantTest {

  @Test
  public void testAddConsultant() {
    Consultant consultant = new Consultant("Consultant1", "Expertise");
    ConsultantDB db = new ConsultantDB();
    assertTrue(db.addConsultant(consultant));
  }
}
public class AddJobSeekerTest {

  @Test
  public void testAddJobSeeker() {
    JobSeeker jobSeeker = new JobSeeker("JobSeeker1", "Skills");
    JobSeekerDB db = new JobSeekerDB();
    assertTrue(db.addJobSeeker(jobSeeker));
  }
}




    
}
