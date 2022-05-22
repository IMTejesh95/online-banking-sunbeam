package com.app.service;

import java.util.List;

import com.app.pojos.Account;
import com.app.pojos.Customer;
import com.app.pojos.Transactions;

public interface CustomerService {
	List<Account> listAllAccounts(Integer custId);
	void updateCustomer(Customer c);
	
	public Account getAccountDetail(String accNo);
	public List<Account> getAccountById(int custId);
	public List<Transactions> getTransactions(int accountId);
	public void transferFund(String senderAccontNo,String receiverAccNo,String purpose,double amount);
}
