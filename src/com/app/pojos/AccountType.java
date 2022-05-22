package com.app.pojos;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="account_types")
public class AccountType 
{
	private Integer typeId;
	private AccountTypeEnum accTypeName;
	private double intRate;
	private double maxBal;
	
	//One-To-Many
	private List<Account> accounts = new ArrayList<>();

	//One-To-Many
	private List<Customer> holders = new ArrayList<>();
	
	public AccountType() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AccountType(AccountTypeEnum accType, double intRate, double maxBal) {
		super();
		this.accTypeName = accType;
		this.intRate = intRate;
		this.maxBal = maxBal;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="type_id")
	public Integer getTypeId() {
		return typeId;
	}
	
	@Enumerated(EnumType.STRING)
	@Column(name="type_name",length=7,nullable=false)
	public AccountTypeEnum getAccTypeName() {
		return accTypeName;
	}
	
	@Column(name="interest_rate",columnDefinition="double")
	public double getIntRate() {
		return intRate;
	}
	
	@Column(name="max_bal_limit",columnDefinition="double",nullable=false)
	public double getMaxBal() {
		return maxBal;
	}
	
	
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public void setAccTypeName(AccountTypeEnum accTypeName) {
		this.accTypeName = accTypeName;
	}
	public void setIntRate(double intRate) {
		this.intRate = intRate;
	}
	public void setMaxBal(double maxBal) {
		this.maxBal = maxBal;
	}
	
	@OneToMany(mappedBy="accType",fetch=FetchType.LAZY)
	public List<Account> getAccounts() {
		return accounts;
	}
	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}
	
	@OneToMany(mappedBy="accType",cascade=CascadeType.ALL)
	public List<Customer> getHolders() {
		return holders;
	}
	
	public void setHolders(List<Customer> holders) {
		this.holders = holders;
	}
	
	@Override
	public String toString() {
		return "AccountType [typeId=" + typeId + ", accType=" + accTypeName + ", intRate=" + intRate + ", maxBal=" + maxBal
				+ "]";
	}
	
	public void addAccount(Account a)
	{
		this.accounts.add(a);
		a.setAccType(this);
	}
	
	public void addCustomer(Customer c)
	{
		this.holders.add(c);
		c.setAccType(this);
	}
	

}
