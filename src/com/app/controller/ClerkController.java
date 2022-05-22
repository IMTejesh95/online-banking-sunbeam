package com.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Account;
import com.app.service.ClerkService;

@Controller
@RequestMapping("/clerk")
public class ClerkController {

	@Autowired
	ClerkService service;
	

	@GetMapping("/search")
	public String showClerkDashboard(Account acc){
		
		return "employee/search";
	}
	
	@PostMapping("/search")
	public String processCustomerSearch(Account acc,HttpSession hs){
		
		hs.setAttribute("account", service.getACustomerDetail(acc.getAccountNo()));
		
		return "redirect:/clerk/updateAccount";
		
	}
	
	
	@GetMapping("/updateAccount")
	public String showCustomerDetailForm(Account acc,Model map,HttpSession hs){
		
		map.addAttribute("account", hs.getAttribute("account"));
		return "employee/updateAccount";
	}
	
	@PostMapping("/updateAccount")
	public String processUpdateForm(Account acc,@RequestParam String btn,@RequestParam double amount,HttpSession hs1)
	{
		Account accDetail=new Account();
		accDetail=(Account) hs1.getAttribute("account");
		
		System.out.println(acc);
		if(btn.equals("Withdraw"))
		{
			accDetail.setAccountBalance(acc.getAccountBalance()-amount);
		}
		else if(btn.equals("Deposit")){
			accDetail.setAccountBalance(acc.getAccountBalance()+amount);
		}
		else if(btn.equals("Update")){
			accDetail.setAccountBalance(acc.getAccountBalance());
			service.updateCustomerDetail(acc,accDetail);
		}
		else if(btn.equals("GoBack"))
		{
			//hs1.invalidate();
			return "redirect:/clerk/search";
		}
		service.updateCustomerDetail(acc,accDetail);
		
		return "redirect:/clerk/updateAccount";
	}
}
