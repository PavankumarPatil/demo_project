package com.app.OnlineFIRsystem.complaint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.OnlineFIRsystem.Notification_service;

@Controller
public class ComplaintController {
	
	@Autowired
    private Notification_service service;
	
    @Autowired
    ComplaintServiceImpl complaintService;

    @GetMapping("/complaint/{complaintId}/status/edit")
    public String editComplaintStatus(Model model, @PathVariable long complaintId) {
        model.addAttribute("complaint", complaintService.findComplaintDetailsById(complaintId));
        return "complaint/status-form";
    }

    @PostMapping("/complaint/{complaintId}/status/edit")
    public String editComplaintStatusPost(@PathVariable long complaintId, 
    		@RequestParam("status") String status,
    		@RequestParam("police") String police,
    		@RequestParam("police_ph") String police_ph,
    		@RequestParam("police_req") String police_req)
//    		@RequestParam("adharno") String adharno)
    
    	{
        Complaint complaint = complaintService.findComplaintDetailsById(complaintId);
        complaint.setStatus(status);
        complaint.setPolice(police);
        complaint.setPolice_ph(police_ph);
        complaint.setPolice_req(police_req);
//        complaint.setAdharno(adharno);
      
        
        complaintService.saveComplaintDetails(complaint);
        try {
        	service.sendEmail(complaint);
        	 System.out.println("Email sended");
        }catch(MailException e) {
           //catch error
        }

        System.out.println(status);
        return "redirect:/police";
    }
    
    
    @PostMapping("/complaint/{complaintId}/status/xxx")
    public String editComplaintStatusPostt(@PathVariable long complaintId, 
    		@RequestParam("status") String status,
    		@RequestParam("police") String police,
    		@RequestParam("police_ph") String police_ph,
    		@RequestParam("police_req") String police_req)
//    		@RequestParam("adharno") String adharno) 
    {
        Complaint complaint = complaintService.findComplaintDetailsById(complaintId);
        complaint.setStatus(status);
        complaint.setPolice(police);
        complaint.setPolice_ph(police_ph);
        complaint.setPolice_req(police_req);
//        complaint.setAdharno(adharno);
        
        complaintService.saveComplaintDetails(complaint);
        System.out.println(status);
        System.out.println(police);
       
        
        return "redirect:/police";
    }
}