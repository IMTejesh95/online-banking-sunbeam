package com.app.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Account;

@Repository
public class ClerkDaoImlp implements ClerkDao {
	@Autowired
	SessionFactory sf;
	
	@Override
	public Account getACustomerDetail(String accNo) {
		
		String jpql="select a from Account a where a.accountNo=:accountNo and a.accHolder.status=:status";
		return sf.getCurrentSession().createQuery(jpql, Account.class).setParameter("accountNo", accNo).setParameter("status", "A").getSingleResult();	
	}
	
	
	@Override
	public void updateCustomerDetail(Account acc) {

		
		
		sf.getCurrentSession().update(acc);
		sf.getCurrentSession().update(acc.getAccHolder());
		sf.getCurrentSession().update(acc.getAccType());
	}

}
