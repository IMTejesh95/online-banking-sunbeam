package com.app.controller;

import java.io.IOException;
import java.util.List;
import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.AccountType;
import com.app.pojos.Branch;
import com.app.pojos.Customer;
import com.app.pojos.Employee;
import com.app.pojos.Role;
import com.app.pojos.User;
import com.app.service.UserService;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
//import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;


@Controller
public class UserController 
{
	@Autowired
	private UserService service;
	@Autowired
	private JavaMailSender mailSender;
	

	public UserController() {
		System.out.println("Inside User Controller");
	}
	
/*=================================EMPLOYEE LOGIN=====================================*/
	@GetMapping("/employee_login")
	public String showEmpLoginForm(Employee e,Model map)
	{
//		map.addAttribute("roles", service.listRoles());
		return "employee_login";
	}

	@PostMapping("/employee_login")
	public String processEmpLoginForm(Employee emp,HttpSession hs,Model map)
	{
		Employee validEmp;
		try {
			validEmp = service.validateEmployee(emp.getUsername(),emp.getPassword());
			/*byte[]imgContent =  validEmp.getUserImg();
			String url="data:image/jpeg;base64,"+Base64.encode(imgContent);
			System.out.println("------------"+url);
			map.addAttribute("url",url);
			hs.setAttribute("url",url);*/
			if(validEmp != null)
			{
				
				hs.setAttribute("validEmployee", validEmp);
				return "redirect:/dashboard";
			}
		} 
		catch (NoResultException e) {
			map.addAttribute("msg","Invaid login credentials");
			e.printStackTrace();
		}
		return "employee_login";
	}
	/*======================================================================================*/
	
	
	/*===================================CUSTOMER LOGIN=======================================*/
	@GetMapping("/customer_login")
	public String showLoginForm(Customer cust)
	{
		return "customer_login";
	}

	@PostMapping("/customer_login")
	public String processLoginForm(Customer cust,HttpSession hs,Model map)
	{
		Customer validCust;
		try {
			validCust = service.validateCustomer(cust.getUserName(),cust.getPassword());
			byte[]imgContent =  validCust.getPhoto();
			String url="data:image/jpeg;base64,"+Base64.encode(imgContent);
			System.out.println("------------"+url);
			hs.setAttribute("url",url);
			
			if(validCust != null)
			{
				hs.setAttribute("validCustomer", validCust);
				return "redirect:customer_dashboard";
			}
		} 
		catch (NoResultException e) {
			map.addAttribute("status","Invaid login credentials");
			e.printStackTrace();
		}
		return "customer_login";
	}
	/*======================================================================================*/
	
	
	@GetMapping("/employee_logout")
	public String logoutEmp(HttpSession hs)
	{
		
		hs.invalidate();
		return "redirect:employee_login";
	}
	
	@GetMapping("/customer_logout")
	public String logoutCustomer(HttpSession hs)
	{
		
		hs.invalidate();
		return "redirect:customer_login";
	}

	
	
	@GetMapping("/register")
	public String showRegisterForm(Customer c,Model map)
	{
		map.addAttribute("accTypes",service.listAccTypes());
		map.addAttribute("branches",service.listBraches());
		return "/customer/register";
	}
	
	@PostMapping("/register")
	public String processRegisterForm(@Valid Customer c,BindingResult result,Model map,RedirectAttributes flashMap,@RequestParam MultipartFile imageUpload) throws IOException
	{	
		if(result.hasFieldErrors())
		{
			System.out.println("There are some errors....!");
			return "/customer/register";
		}
		
		if(imageUpload!=null)
		{
			System.out.println(imageUpload.getOriginalFilename());
			c.setPhoto(imageUpload.getBytes());
		}
		c.setStatus("P");
		int retId;
		retId = service.registerCustomer(c);
		map.addAttribute("status", "You have been registered successfully with ID: "+retId);
		map.addAttribute("details", "It will take some time to approve your account.\nYou will be notified for the same via your\nregistered Email-"+c.getEmail());
		return "success_page";
	}
	
	
	
	
	/*========================================DASHBOARDS====================*/
	@GetMapping("/dashboard")
	public String showEmpDashboard(HttpSession hs,Model map)
	{
		
		Employee empPojo = (Employee) hs.getAttribute("validEmployee");
		
		if(empPojo == null)
		{
			map.addAttribute("status", "Sorry your session has been expired!\nYou cannot access this page.");
			map.addAttribute("link", "Please Login from here..");
			map.addAttribute("url", "http://localhost:8080/BOS/employee_login");
			return "error_page";
		}
		
		System.out.println("*********************************"+empPojo);
		String role = empPojo.getRole().getRoleName(); //"MANAGER";
		if(role.equals("Manager"))
			return "employee/manager_dashboard";
		else if(role.equals("Clerk"))
			return "employee/clerk_dashboard";
		else if(role.equals("Admin")) 
			return "employee/admin_dashboard";
		else
			return "employee/error_page";
	}
	
	@GetMapping("/customer_dashboard")
	public String showCustDashboard(HttpSession hs)
	{
		
		/*Customer custPojo = (Customer) hs.getAttribute("validCustomer");
		System.out.println("*********************************"+custPojo);*/
		return "customer/customer_dashboard";
	}
	
	
}




