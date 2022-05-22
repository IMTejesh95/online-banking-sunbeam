package com.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Account;
import com.app.pojos.Customer;
import com.app.service.CustomerService;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

@Controller
@RequestMapping("/customer")
public class CustomerController
{
	@Autowired
	private CustomerService service;
	
	@GetMapping("/accounts_list")	
	public String showAccountsList(HttpSession hs,Model map) {
		Customer c = (Customer) hs.getAttribute("validCustomer");
		
		if(c == null)
		{
			map.addAttribute("status", "Sorry your session has been expired!\nYou cannot access this page.");
			map.addAttribute("link", "Please Login from here..");
			map.addAttribute("url", "http://localhost:8080/BOS/customer_login");
			return "error_page";
		}
		
		hs.setAttribute("accList", service.listAllAccounts(c.getCustId()));
		return "customer/accounts_list";
	}
	
	
	@GetMapping("/update_profile")
	public String showUpdateForm(Customer c,Model map,HttpSession hs)
	{
		Customer validCust = (Customer)hs.getAttribute("validCustomer");
		
		if(validCust == null)
		{
			map.addAttribute("status", "Sorry your session has been expired!\nYou cannot access this page.");
			map.addAttribute("link", "Please Login from here..");
			map.addAttribute("url", "http://localhost:8080/BOS/customer_login");
			return "error_page";
		}
		
		byte[]imgContent =  validCust.getPhoto();
		String url="data:image/jpeg;base64,"+Base64.encode(imgContent);
		System.out.println("------------"+url);
		hs.setAttribute("url",url);
		
		map.addAttribute("customer", validCust);
		return "/customer/update_profile";
	}
	
	@PostMapping("/update_profile")
	public String processUpdateForm(Customer c,RedirectAttributes flashMap,HttpSession hs,@RequestParam MultipartFile imageUpload,Model map)
	{
		Customer validCust = (Customer) hs.getAttribute("validCustomer");
		
		if(validCust == null)
		{
			map.addAttribute("status", "Sorry your session has been expired!\nYou cannot access this page.");
			map.addAttribute("link", "Please Login from here..");
			map.addAttribute("url", "http://localhost:8080/BOS/customer_login");
			return "error_page";
		}
		
		if(imageUpload!=null)
		{
			System.out.println(imageUpload.getOriginalFilename());
			try {
				validCust.setPhoto(imageUpload.getBytes());
			} catch (IOException e) {
				flashMap.addFlashAttribute("status", "Please Upload valid image..!!!");
				return "redirect:update_profile";
			}
		}
		System.err.println("*************"+c);
		validCust.setEmail(c.getEmail());validCust.setMyAddress(c.getMyAddress());
		service.updateCustomer(validCust);
		flashMap.addFlashAttribute("status", "Profile updated successfully!");
		return "redirect:update_profile";
	}
	
	
	/*---------------------------------------------nilesh's--------------------------------------------------------------------------------*/
	
	@GetMapping("/transactions")
	public String showTransactionForm(Account acc,HttpSession hs,Model map){
		
		
		Customer cust=(Customer) hs.getAttribute("validCustomer");
		
		if(cust == null)
		{
			map.addAttribute("status", "Sorry your session has been expired!\nYou cannot access this page.");
			map.addAttribute("link", "Please Login from here..");
			map.addAttribute("url", "http://localhost:8080/BOS/customer_login");
			return "error_page";
		}
		
		List<Account> accndsd=service.getAccountById(cust.getCustId());
		
		map.addAttribute("listAccount",accndsd);
		
		//System.out.println("ksdhcn"+accountList);
		return "/customer/transactions";
	}
	@PostMapping("/transactions")
	public String processTransactionForm(Account receiverAcc,HttpSession hs,@RequestParam String senderAccontNo,
			@RequestParam String purpose,@RequestParam int amount,RedirectAttributes flashMap){
		
		service.transferFund(senderAccontNo,receiverAcc.getAccountNo(), purpose, amount);
		flashMap.addFlashAttribute("status", "Transaction success");
		return "redirect:transactions";
		
	}
	
	@GetMapping("/accountStatement")
	public String showAccountStatementForm(Account acc,HttpSession hs,Model map)
	{

		Customer cust=(Customer) hs.getAttribute("validCustomer");
		
		if(cust == null)
		{
			map.addAttribute("status", "Sorry your session has been expired!\nYou cannot access this page.");
			map.addAttribute("link", "Please Login from here..");
			map.addAttribute("url", "http://localhost:8080/BOS/customer_login");
			return "error_page";
		}
		
		List<Account> accndsd=service.getAccountById(cust.getCustId());
		map.addAttribute("listAccount",accndsd);
		map.addAttribute("isHid", "false");
		return "customer/accountStatement";
	}
	
	@PostMapping("/accountStatement")
	public String processAccountStatement(Account acc,RedirectAttributes flashMap)
	{
		//Customer cust=(Customer) hs.getAttribute("validCustomer");
		flashMap.addFlashAttribute("listTransaction", service.getTransactions(acc.getAccountId()));
		flashMap.addFlashAttribute("isHid", "true");
		return"redirect:accountStatement";
	}

}
