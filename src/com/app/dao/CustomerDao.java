package com.app.dao;

import java.util.List;
import com.app.pojos.Account;
import com.app.pojos.Transactions;
public interface CustomerDao {
	List<Account> listAllAccounts(Integer custId);
	
	public Account getAccountDetail(String accNo);
	public List<Account> getAccountById(int custId);
	public List<Transactions> getTransactions(int accountId);
	public void transferFund(Account senderAcc,Account receiverAcc,Transactions transSender,Transactions transReceiver);
}
