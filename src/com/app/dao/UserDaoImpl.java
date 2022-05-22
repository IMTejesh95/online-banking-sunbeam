package com.app.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.AccountType;
import com.app.pojos.Branch;
import com.app.pojos.Customer;
import com.app.pojos.Employee;
import com.app.pojos.Role;
import com.app.pojos.User;
import com.app.pojos.UserRole;


@Repository
public class UserDaoImpl implements UserDao
{
	@Autowired
	private SessionFactory sf;
	
	@Override
	public Employee validateEmployee(String uName, String pass) 
	{
		String str = "select e from Employee e where e.username=:uName and e.password=:pass";
		return sf.getCurrentSession().createQuery(str,Employee.class).setParameter("uName", uName)
				.setParameter("pass", pass).getSingleResult();
		
	}
	
	

	@Override
	public Customer validateCustomer(String uName, String pass) {
		String str = "select c from Customer c where c.userName=:uName and c.password=:pass";
		return sf.getCurrentSession().createQuery(str,Customer.class).setParameter("uName", uName)
				.setParameter("pass", pass).getSingleResult();
	}
	

	@Override
	public Integer registerCustomer(Customer c) 
	{	
		
		c.attachAddress(c.getMyAddress());
		getAccountType(c.getAccType().getTypeId()).addCustomer(c);	
		getBranch(c.getMyBranch().getBranchId()).addCustomer(c);
		return (Integer) sf.getCurrentSession().save(c);
		
	}
	
	@Override
	public List<AccountType> listAccTypes() {
		String hql = "select at from AccountType at";
		return sf.getCurrentSession().createQuery(hql, AccountType.class).getResultList();
	}


	@Override
	public List<Branch> listBraches() {
		String hql = "select b from Branch b";
		List<Branch> bl=sf.getCurrentSession().createQuery(hql, Branch.class).getResultList();
		sf.getCurrentSession().flush();
		return bl;
	}
	
	
	@Override
	public AccountType getAccountType(Integer typeId) {
		AccountType type = sf.getCurrentSession().get(AccountType.class, typeId);
		type.getHolders().size();
		return type;
	}
	
	

	@Override
	public Branch getBranch(Integer branchId) 
	{
		Branch b = sf.getCurrentSession().get(Branch.class, branchId);
		b.getCustomers().size();
		return b;
	}
	
	@Override
	public List<Role> listRoles() {
		String hql = "select er from Role er";
		return sf.getCurrentSession().createQuery(hql, Role.class).getResultList();
	}

	
	
	@Override
	public Customer getCustByEmail(String email){
		String hql = "select c from Customer c where c.email=:em";
		return sf.getCurrentSession().createQuery(hql, Customer.class).setParameter("em", email).getSingleResult();
	}


}
