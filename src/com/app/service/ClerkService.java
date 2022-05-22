package com.app.service;

import com.app.pojos.Account;

public interface ClerkService {
	public Account getACustomerDetail(String accNo);
	 void updateCustomerDetail(Account acc,Account accDetail);
}
