package com.app.service;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.UserDao;
import com.app.pojos.AccountType;
import com.app.pojos.Branch;
import com.app.pojos.Customer;
import com.app.pojos.Employee;
import com.app.pojos.Role;
import com.app.pojos.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao dao;

	@Override
	public Employee validateEmployee(String uName, String pass) {
		return dao.validateEmployee(uName, pass);
	}

	@Override
	public int registerCustomer(Customer cust) {
			return dao.registerCustomer(cust);
	}

	@Override
	public List<AccountType> listAccTypes() {
		return dao.listAccTypes();
	}

	@Override
	public AccountType getAccountType(Integer typeId) {
		return dao.getAccountType(typeId);
	}

	@Override
	public List<Branch> listBraches() {
		// TODO Auto-generated method stub
		return dao.listBraches();
	}

	@Override
	public Branch getBranch(int branchId) {
		return dao.getBranch(branchId);
	}
	
	
	@Override
	public List<Role> listRoles() {
		// TODO Auto-generated method stub
		return dao.listRoles();
	}

	/*
	 * =========================================================================
	 * ======================
	 */

	

	@Override
	public Customer validateCustomer(String uName, String pass) {

		return dao.validateCustomer(uName, pass);
	}

	

}
