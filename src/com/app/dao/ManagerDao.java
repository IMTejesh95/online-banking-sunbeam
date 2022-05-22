package com.app.dao;

import java.util.List;

import com.app.pojos.Account;
import com.app.pojos.Customer;

public interface ManagerDao 
{
	List<Customer> listPendingCustomers(Integer branchId); 
	Customer getCustomerDetails(Integer custId);
	void updateCustomer(Customer cust);
	Account createNewAccount(Account newAcc);
	List<Account> listAllAccounts(Integer branchId);

}
