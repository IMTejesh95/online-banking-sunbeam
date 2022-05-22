package com.app.service;

import java.util.Date;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.ManagerDao;
import com.app.dao.UserDao;
import com.app.pojos.Account;
import com.app.pojos.Customer;

@Service
@Transactional
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	private ManagerDao mgrDao;


	@Override
	public List<Customer> listPendingCustomers(Integer branchId) {
		// TODO Auto-generated method stub
		return mgrDao.listPendingCustomers(branchId);
	}
	

	private String generateAccountNum(String phNo) {
		Random random = new Random();
		String accNo = phNo + random.nextInt(10);
		return accNo;
	}
	
	private String generatePassword(String custFirstName) {
		Random random = new Random();
		String pass = custFirstName +"@"+ random.nextInt(50);
		return pass;
	}

	private String generateUsername(String custFirstName) {
		String userName = "i_"+custFirstName;
		return userName;
	}


	@Override
	public Account createNewAccount(int custId) {
		Customer cust = mgrDao.getCustomerDetails(custId);
		
		//Generate Account No
		String accNo = generateAccountNum(cust.getPhone());
		
		//provide new Username and password
		String uName=generateUsername(cust.getFirstName());
		String pass=generatePassword(cust.getFirstName());
		cust.setUserName(uName);
		cust.setPassword(pass);
		cust.setStatus("A");
		mgrDao.updateCustomer(cust);
		
		Account newAcc = new Account(accNo, new Date(), 0);
		cust.addAccount(newAcc);
		cust.getAccType().addAccount(newAcc);
		cust.getMyBranch().addAccount(newAcc);
		return mgrDao.createNewAccount(newAcc);
	}


	@Override
	public void rejectPendingAppl(Integer custId) {
		Customer cust = mgrDao.getCustomerDetails(custId);
		cust.setStatus("R");
		mgrDao.updateCustomer(cust);
	}


	@Override
	public List<Account> listAllAccounts(Integer branchId) {
		return mgrDao.listAllAccounts(branchId);
	}

}
