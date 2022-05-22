package com.app.dao;

import com.app.pojos.Account;

public interface ClerkDao {

	public Account getACustomerDetail(String accNo);
	public void updateCustomerDetail(Account acc);
}
