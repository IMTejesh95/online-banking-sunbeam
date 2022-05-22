package com.app.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Account;
import com.app.pojos.AccountType;
import com.app.pojos.Customer;

@Repository
public class ManagerDaoImpl implements ManagerDao {
	
	@Autowired
	private SessionFactory sf;

	@Override
	public List<Customer> listPendingCustomers(Integer branchId) {
		String hql="select c from Customer c where c.myBranch.branchId=:bId and c.status='P' ";
		return sf.getCurrentSession().createQuery(hql, Customer.class).setParameter("bId", branchId).getResultList();
	}

	@Override
	public Customer getCustomerDetails(Integer custId) {
		return sf.getCurrentSession().get(Customer.class, custId);
	}

	@Override
	public void updateCustomer(Customer cust) {
		sf.getCurrentSession().update(cust);
	}

	@Override
	public Account createNewAccount(Account newAcc) {
		 sf.getCurrentSession().save(newAcc);
		 return newAcc;
	}

	@Override
	public List<Account> listAllAccounts(Integer branchId) {
		String jpql = "select a from Account a where a.accBranch.branchId=:id";
		return sf.getCurrentSession().createQuery(jpql, Account.class).setParameter("id", branchId).getResultList();
	}


	
}
