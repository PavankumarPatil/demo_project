package com.app.OnlineFIRsystem.emergencyComplaint;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Service;

@Service
@Entity
public class EmergencyComplaint {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    long id;

    @NotNull
    @NotBlank(message = "Please enter Emergency Complainant name")
    @Size(min = 20, message = "Emergency must have a minimum of 20 characters")
    private String Name;


	@NotNull
    @NotBlank(message = "Please enter Emergency Complaint")
    @Size(min = 2, message = "Emergency must have a minimum of 2 characters")
    private String complaint;
    
    @NotNull
    @NotBlank(message = "Please enter Emergency Complaint Status")
    @Size(min = 2, message = "Emergency must have a minimum of 2 characters")
    private String status = "Investigation Pending";
    

	@NotNull
    @NotBlank(message = "Please enter EmailID")
    @Size(min = 5, message = "Emergency must have a minimum of 5 characters")
    private String Emailid;
    
    
    @NotNull
    @NotBlank(message = "Please enter Adhar Card")
    @Size(min = 12, message = "Emergency must have a minimum of 12 characters")
    private String Adharcard;

    
    public String getName() {
  		return Name;
  	}

  	public void setName(String name) {
  		Name = name;
  	}
  	
    public String getComplaint() {
        return complaint;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setComplaint(String complaint) {
        this.complaint = complaint;
    }

    public EmergencyComplaint(long id, String complaint, String status) {
        this.id = id;
        this.complaint = complaint;
        this.status = status;
    }

    public EmergencyComplaint(String complaint, String status) {
        this.complaint = complaint;
        this.status = status;
    }
    
    public String getEmailid() {
		return Emailid;
	}

	public void setEmailid(String emailid) {
		this.Emailid = emailid;
	}

	public String getAdharcard() {
		return Adharcard;
	}

	public void setAdharcard(String adharcard) {
		this.Adharcard = adharcard;
	}

    public EmergencyComplaint() {
    }


}