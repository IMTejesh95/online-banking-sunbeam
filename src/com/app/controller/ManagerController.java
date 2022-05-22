package com.app.controller;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Account;
import com.app.pojos.Employee;
import com.app.pojos.User;
import com.app.service.ManagerService;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	@Autowired
	private ManagerService service;

	@Autowired
	private JavaMailSender mailSender;

	@GetMapping("/pending_list")
	public String showPendingList(HttpSession hs) {
		Employee e = (Employee) hs.getAttribute("validEmployee");
		hs.setAttribute("pendingCustomers", service.listPendingCustomers(e.getBranch().getBranchId()));
		return "employee/pending_list";
	}

	@PostMapping("/pending_list")
	public String processPendingAppl(@RequestParam int custId, @RequestParam String actionBtn, HttpSession hs) {

		System.out.println("Inside pending post mapping::: " + custId + " " + actionBtn);
		if (actionBtn.equals("Approve")) {
			hs.setAttribute("account", service.createNewAccount(custId));
			return "redirect:/manager/send_email";
		} else if (actionBtn.equals("Reject")) {
			service.rejectPendingAppl(custId);
			hs.setAttribute("status", "Application rejected successfully");
			hs.setAttribute("color", "red");
			return "redirect:/manager/pending_list";
		}

		return "redirect:/manager/pending_list";
	}

	@GetMapping("/send_email")
	public String showEmailForm(Model map, HttpSession hs) {
		Account approvedAcc = (Account) hs.getAttribute("account");
		map.addAttribute("status", "Account created successfully with Account ID: " + approvedAcc.getAccountId());
		return "employee/send_email";
	}

	@PostMapping("/send_email")
	public String sendAccountDetails(RedirectAttributes map, @RequestParam String email, @RequestParam String message) {
		try {
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			mailMessage.setTo(email);
			mailMessage.setSubject("Account Registered in BOS");
			mailMessage.setText(message);
			try {
				mailSender.send(mailMessage);
			} catch (MailException e) {
				System.out.println("inside mail exception");
				e.printStackTrace();
			}
			map.addFlashAttribute("status", "Email sent Successfully!");
			map.addFlashAttribute("color", "green");
			return "redirect:pending_list";

		} catch (NoResultException e) {
			map.addFlashAttribute("status", "Please enter valid email address");
			e.printStackTrace();
		}
		map.addFlashAttribute("status", "Try again!!");
		return "redirect:send_email"; 		
	}

	
	@GetMapping("/accounts_list")
	public String showAccountsList(HttpSession hs) {
		Employee e = (Employee) hs.getAttribute("validEmployee");
		hs.setAttribute("accList", service.listAllAccounts(e.getBranch().getBranchId()));
		;
		return "employee/accounts_list";
	}

}
