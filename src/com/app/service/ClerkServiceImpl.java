package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.ClerkDao;
import com.app.pojos.Account;

@Service
@Transactional
public class ClerkServiceImpl implements ClerkService {

	@Autowired
	ClerkDao dao;
	
	@Override
	public Account getACustomerDetail(String accNo) {
		return dao.getACustomerDetail(accNo);
	}
	
	@Override
	public void updateCustomerDetail(Account acc,Account accDetail){
		accDetail.getAccHolder().setEmail(acc.getAccHolder().getEmail());
		accDetail.getAccHolder().setPhone(acc.getAccHolder().getPhone());
		dao.updateCustomerDetail(accDetail);
	}
}
