package com.app.service;

import java.util.List;

import com.app.pojos.AccountType;
import com.app.pojos.Branch;
import com.app.pojos.Customer;
import com.app.pojos.Employee;
import com.app.pojos.Role;
import com.app.pojos.User;


public interface UserService 
{
	public Employee validateEmployee(String uName,String pass);
	public Customer validateCustomer(String uName,String pass);
	public int registerCustomer(Customer cust);
	public List<AccountType> listAccTypes();
	public AccountType getAccountType(Integer typeId);
	public List<Branch> listBraches();
	public Branch getBranch(int branchId);
	public List<Role> listRoles();
	
	/*public List<String> getRoles();
	public User findByEmail(String email);
	public int generateOtp();
	public User getUserById(int id);
	public void updatePassword(User userPojo);*/
}
