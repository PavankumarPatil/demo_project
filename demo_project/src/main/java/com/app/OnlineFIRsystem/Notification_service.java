package com.app.OnlineFIRsystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;


import com.app.OnlineFIRsystem.complaint.Complaint;
import com.app.OnlineFIRsystem.emergencyComplaint.EmergencyComplaint;


@Service
public class Notification_service {

	
	@Autowired
    private JavaMailSender javaMailSender;
	

	public void sendEmail(Complaint complaint) throws MailException {
		String[] str = {"Submitted", "Under Investigation", "Registered As FIR","Case Resolved"};  
		
		if(complaint.getStatus().equals(str[0])||complaint.getStatus().equals(str[1])||complaint.getStatus().equals(str[2])||complaint.getStatus().equals(str[3])) {

        SimpleMailMessage msg = new SimpleMailMessage();
 
        msg.setTo(complaint.getEmail());
        msg.setFrom("pavankumarpatilnaruto@gmail.com");

        msg.setSubject("Complaint progress");
        msg.setText(complaint.getName()+" "+complaint.getLastname()+"Comaplaint Status is "+complaint.getStatus());

        javaMailSender.send(msg);
		}
		
    }
	
	
	public void sendEmail1(EmergencyComplaint ememergencyComplaint) throws MailException {
		String[] str = {"Submitted", "Under Investigation", "Registered As FIR","Case Resolved"};  
		
		if(ememergencyComplaint.getStatus().equals(str[0])||ememergencyComplaint.getStatus().equals(str[1])||ememergencyComplaint.getStatus().equals(str[2])||ememergencyComplaint.getStatus().equals(str[3])) {

        SimpleMailMessage msg = new SimpleMailMessage();
 
        msg.setTo(ememergencyComplaint.getEmailid());
        msg.setFrom("pratikmahalle@gmail.com");

        msg.setSubject("Complaint progress");
        msg.setText(ememergencyComplaint.getName()+"Comaplaint Status is "+ememergencyComplaint.getStatus());

        javaMailSender.send(msg);
		}
		
    }

}
