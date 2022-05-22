package com.app.service;

import java.util.List;

import com.app.pojos.Account;
import com.app.pojos.Customer;

public interface ManagerService {
	List<Customer> listPendingCustomers(Integer branchId);
	Account createNewAccount(int custId);
	void rejectPendingAppl(Integer custId);
	List<Account> listAllAccounts(Integer branchId);
}
