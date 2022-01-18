package com.app.OnlineFIRsystem.emergencyComplaint;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.OnlineFIRsystem.Notification_service;
import com.app.OnlineFIRsystem.people.People;
import com.app.OnlineFIRsystem.people.PeopleServiceImpl;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

@Controller
public class EmergencyComplaintController {

	@Autowired
    private Notification_service service;
	
	@Autowired
	private EmergencyComplaint ememergencyComplaint;
	
    @Autowired
    EmergencyComplaintServiceImpl emergencyComplaintService;

    @Autowired
    private PeopleServiceImpl peopleService;

    @GetMapping("/emergency-complaint")
    public String emergencyComplaintIndex(Model model) {
        model.addAttribute("people", new People());
        return "emergency-complaint/index";
    }

    @Valid
    @PostMapping("/emergency-complaint")
    public String emergencyComplaintIndexPost(Model model, @Valid People people, BindingResult result) {
        if (result.hasErrors()) {
            model.addAttribute("validationError", true);
            return "emergency-complaint/index";
        }
        People savedPeople = peopleService.addSinglePeopleDetail(people);
        model.addAttribute("savedPeople", savedPeople);
        return "emergency-complaint/submission";
    }

    @PostMapping("/emergency-complaint-status")
    public String emergencyComplaintStatus(@RequestParam("emergency-complaint-status") long id, Model model) {
        if (emergencyComplaintService.findComplaintDetailsById(id) == null) {
            model.addAttribute("emergencyComplaintId", id);
            return "emergency-complaint/page-404";
        }
        model.addAttribute("peopleComplaint", emergencyComplaintService.findComplaintDetailsById(id));
        return "emergency-complaint/status";
    }

    @GetMapping("/emergency-complaint/{complaintId}/status/edit")
    public String editComplaintStatus(Model model, @PathVariable long complaintId) {
        model.addAttribute("emergencyComplaint", emergencyComplaintService.findComplaintDetailsById(complaintId));
        return "emergency-complaint/status-form";
    }

    @PostMapping("/emergency-complaint/{complaintId}/status/edit")
    public String editComplaintStatusPost(@PathVariable long complaintId, @RequestParam("status") String status) {
        emergencyComplaintService.editComplaintStatusDetails(status, complaintId);
        
        try {
        	service.sendEmail1(ememergencyComplaint);
        	 System.out.println("Email sended");
        }catch(MailException e) {
           //catch error
        }

        return "redirect:/police";
    }
}