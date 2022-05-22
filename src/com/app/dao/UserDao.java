package com.app.dao;

import java.util.List;

import com.app.pojos.AccountType;
import com.app.pojos.Branch;
import com.app.pojos.Customer;
import com.app.pojos.Employee;
import com.app.pojos.User;
import com.app.pojos.Role;


public interface UserDao 
{
	public Employee validateEmployee(String uName,String pass);
	public Customer validateCustomer(String uName,String pass);
	public Integer registerCustomer(Customer cust);
	public List<AccountType> listAccTypes();
	public List<Branch> listBraches();
	public AccountType getAccountType(Integer typeId);
	public Branch getBranch(Integer branchId);
	public List<Role> listRoles();
	Customer getCustByEmail(String email) throws Exception; 
	
	
	/*
	public List<String> getRoles();
	public User findByEmail(String email);
	public User getUserById(int id);
	public void updatePassword(User userPojo);
	*/
}
