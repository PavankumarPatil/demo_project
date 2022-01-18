package com.app.OnlineFIRsystem.complaint;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
public class Complaint {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    
    @NotNull
    @Size(min = 2, message = "Individual's Name must have a minimum of 2 characters")
    @NotBlank(message = "Please enter name")
    private String name;
    
    @NotNull
    @Size(min = 2, message = "Individual's Name must have a minimum of 2 characters")
    @NotBlank(message = "Please enter name of the Criminal")
    private String lastname;
    
    @NotNull
    @Size(min = 6, message = "Individual's Name must have a minimum of 6 characters")
    @NotBlank(message = "Please enter name of the Email")
    private String Email;
    
    @NotNull
    @Size(min = 2, message = "Individual's Name must have a minimum of 2 characters")
    @NotBlank(message = "Please enter name of the phone number")
    private String phone;
    
    @NotNull
    @Size(min = 2, message = "Individual's Name must have a minimum of 2 characters")
    @NotBlank(message = "Please enter City")
    private String city;
    
    @NotNull
    @Size(min = 2, message = "Individual's Name must have a minimum of 2 characters")
    @Column(length = 3000)
    @NotBlank(message = "Please enter Address")
    private String address;
    
    @NotNull
    @Size(min = 2, message = "Individual's Name must have a minimum of 2 characters")
    @NotBlank(message = "Please enter Crime Type")
    private String ctype;

	@NotNull
    @NotBlank(message = "Please enter the Complaint")
    @Size(min = 2, message = "Complaint must have a minimum of 2 characters")
    @Column(length = 3000)
    private String text;

    @NotNull
    @NotBlank(message = "Please enter the Complaint Status")
    @Size(min = 2, message = "Status must have a minimum of 2 characters")
    private String status = "Investigation Pending";

    private String imagePath;
    
    @NotNull
    @Size(min = 2, message = "Individual's Name must have a minimum of 2 characters")
    @NotBlank(message = "Please enter name")
    private String police = "Not Assigned";

    @NotNull
    @Size(min = 2, message = "Individual's Name must have a minimum of 2 characters")
    @NotBlank(message = "Please enter name")
    private String police_ph = "Not Assigned";
   
    @NotNull
    @Size(min = 2, message = "Individual's Name must have a minimum of 2 characters")
    @NotBlank(message = "Please enter name")
    private String police_req = "Waiting";
    
    @NotNull
    @Size(min = 2, message = "Individual's Name must have a minimum of 2 characters")
    @NotBlank(message = "Please enter Adhar Card No.")
    private String adharno;
    
    
    
    
    
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		this.Email = email;
	}
	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCtype() {
		return ctype;
	}

	public void setCtype(String ctype) {
		this.ctype = ctype;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getPolice() {
		return police;
	}

	public void setPolice(String police) {
		this.police = police;
	}

	public String getPolice_ph() {
		return police_ph;
	}

	public void setPolice_ph(String police_ph) {
		this.police_ph = police_ph;
	}

	public String getPolice_req() {
		return police_req;
	}

	public void setPolice_req(String police_req) {
		this.police_req = police_req;
	}

	public String getAdharno() {
		return adharno;
	}

	public void setAdharno(String adharno) {
		this.adharno = adharno;
	}

	public Complaint() {
    }

	public Complaint(long id,String name,String lastname,String Email,String phone,String city,String address, String ctype, String text,String status,String imagePath,String police,String police_ph,String police_req,String adharno) {
		super();
		this.id = id;
		this.name = name;
		this.lastname = lastname;
		this.Email=Email;
		this.phone = phone;
		this.city = city;
		this.address = address;
		this.ctype = ctype;
		this.text = text;
		this.status = status;
		this.imagePath = imagePath;
		this.police = police;
		this.police_ph = police_ph;
		this.police_req = police_req;
		this.adharno = adharno;
	}

	

    
}