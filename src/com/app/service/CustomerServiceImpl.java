package com.app.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.CustomerDao;
import com.app.dao.ManagerDao;
import com.app.pojos.Account;
import com.app.pojos.Customer;
import com.app.pojos.Transactions;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDao dao;
	@Autowired
	private ManagerDao mgrDao;
	
	@Override
	public List<Account> listAllAccounts(Integer custId) {
		return  dao.listAllAccounts(custId);
	}
	
	
	@Override
	public void updateCustomer(Customer c) {
		mgrDao.updateCustomer(c);
		
	}
	
	
	public Account getAccountDetail(String accNo){
		return dao.getAccountDetail(accNo);
	}
	
	
	@Override
	public void transferFund(String senderAccontNo,String receiverAccNo,String purpose,double amount) {
		
		/*String descriptionsender="Fund transfered to "+receiverAcc.getAccountNo();
		String descriptionreceiver="Fund transfered from "+senderAcc.getAccountNo();
		
		Transactions transSender=new Transactions(amount, new Date(),purpose,descriptionsender);
		Transactions transReceiver=new Transactions(amount, new Date(),purpose,descriptionreceiver);
		
		senderAcc.setAccountBalance(senderAcc.getAccountBalance()-amount);
		senderAcc.addTransaction(transSender);
		receiverAcc.setAccountBalance(receiverAcc.getAccountBalance()+amount);
		receiverAcc.addTransaction(transReceiver);*/
		
		dao.getAccountDetail(senderAccontNo).setAccountBalance(dao.getAccountDetail(senderAccontNo).getAccountBalance()-amount);
		dao.getAccountDetail(receiverAccNo).setAccountBalance(dao.getAccountDetail(receiverAccNo).getAccountBalance()+amount);
	
		String descriptionsender="Fund transfered to "+receiverAccNo;
		String descriptionreceiver="Fund transfered from "+senderAccontNo;
	
		Transactions transSender=new Transactions(amount, new Date(),"Withdrawal",descriptionsender);
		Transactions transReceiver=new Transactions(amount, new Date(),"Deposite",descriptionreceiver);
		
		dao.transferFund(dao.getAccountDetail(senderAccontNo),dao.getAccountDetail(receiverAccNo),transSender,transReceiver);
	
	}

	
	@Override
	public List<Account> getAccountById(int custId) {
		
		return dao.getAccountById(custId);
	}


	@Override
	public List<Transactions> getTransactions(int accountId) {
		
		return dao.getTransactions(accountId);
	}
}
