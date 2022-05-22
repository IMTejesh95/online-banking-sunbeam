package com.app.pojos;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="branch_details")
public class Branch 
{
	private Integer branchId;
	private String IFSC;
	private String branchName;
	private String branchLoc;
	
	
	//One-To-Many
	private List<Customer> customers = new ArrayList<>();
	private List<Employee> employees = new ArrayList<>();
	private List<Account> accounts = new ArrayList<>();
	
	public Branch() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Branch(String iFSC, String branchName, String branchLoc) {
		super();
		IFSC = iFSC;
		this.branchName = branchName;
		this.branchLoc = branchLoc;
	}

	@Id
	@Column(name="branch_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getBranchId() {
		return branchId;
	}

	public void setBranchId(Integer branchId) {
		this.branchId = branchId;
	}

	@Column(length=9,nullable=false)
	public String getIFSC() {
		return IFSC;
	}

	public void setIFSC(String iFSC) {
		IFSC = iFSC;
	}

	@Column(name="branch_name")
	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	@Column(name="branch_loc")
	public String getBranchLoc() {
		return branchLoc;
	}

	public void setBranchLoc(String branchLoc) {
		this.branchLoc = branchLoc;
	}
	
	@OneToMany(mappedBy="branch",cascade=CascadeType.ALL)
	public List<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
	
	@OneToMany(mappedBy="myBranch")
	public List<Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}

	@OneToMany(mappedBy="accBranch")
	public List<Account> getAccounts() {
		return accounts;
	}

	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}

	@Override
	public String toString() {
		return "Branch [branchId=" + branchId + ", IFSC=" + IFSC + ", branchName=" + branchName + ", branchLoc="
				+ branchLoc + "]";
	}
	
	
	//convinience method
	public void addEmployee(Employee e)
	{
		this.employees.add(e);
		e.setBranch(this);
	}
	public void addCustomer(Customer c)
	{
		this.customers.add(c);
		c.setMyBranch(this);
	}
	
	public void addAccount(Account a)
	{
		this.accounts.add(a);
		a.setAccBranch(this);
	}
	

}
