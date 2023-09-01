/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessTire;


public class userBusinessTire {
    
     private int uid;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
   
     private String username;
     private String password;
     private String role;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }    

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    private String lastName;

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }
    public boolean valid;
}
