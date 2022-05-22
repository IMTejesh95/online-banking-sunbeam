package com.app.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Account;
import com.app.pojos.Transactions;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private SessionFactory sf;
	
	@Override
	public List<Account> listAllAccounts(Integer custId) {
		String jpql = "select a from Account a where a.accHolder.custId =:id";
		return sf.getCurrentSession().createQuery(jpql, Account.class).setParameter("id", custId).getResultList();
	}
	
	@Override
	public Account getAccountDetail(String accNo) {
		
		String jpql="select a from Account a where accountNo=:accountNo";
		return sf.getCurrentSession().createQuery(jpql, Account.class).setParameter("accountNo", accNo).getSingleResult();
	}
	
	@Override
	public void transferFund(Account senderAcc,Account receiverAcc,Transactions transSender,Transactions transReceiver) {
		
		senderAcc.addTransaction(transSender);
		receiverAcc.addTransaction(transReceiver);
		sf.getCurrentSession().update(senderAcc);
		sf.getCurrentSession().update(receiverAcc);
//		sf.getCurrentSession().save(transSender);
//		
//		sf.getCurrentSession().save(transReceiver);
	}

	@Override
	public List<Account> getAccountById(int custId) {
		
		String jpql="select a from Account a where a.accHolder.custId=:customerId";
		return sf.getCurrentSession().createQuery(jpql,Account.class).setParameter("customerId", custId).getResultList();
	}

	@Override
	public List<Transactions> getTransactions(int accountId) {
		String jpql="select t from Transactions t where t.account.accountId=:accId";
		
		return sf.getCurrentSession().createQuery(jpql,Transactions.class).setParameter("accId", accountId).getResultList();
	}


}
