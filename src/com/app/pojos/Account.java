package com.app.pojos;

import java.util.Date;
import java.util.List;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="account_details")
public class Account {

	private Integer accountId;
	private String accountNo;
	private Date dateOpen;
	private double accountBalance;
	
	//One-To-Many
	private List<Transactions> listTrans;
	
	//Many-To-One
	private AccountType accType;
	private Customer accHolder;
	private Branch accBranch;
	
	public Account() {
	}

	public Account(String accountNo, Date dateOpen, double accountBalance) {
		super();
		this.accountNo = accountNo;
		this.dateOpen = dateOpen;
		this.accountBalance = accountBalance;
	}

	//getter 
	
	@Id
	@Column(name="account_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getAccountId() {
		return accountId;
	}

	@Column(name="account_no",length=15, nullable=false)
	public String getAccountNo() {
		return accountNo;
	}
	
	@Column(name="date_opened", nullable=false)
	public Date getDateOpen() {
		return dateOpen;
	}
	
	@Column(name="account_bal", nullable=false)
	public double getAccountBalance() {
		return accountBalance;
	}
	
	
	
//setter 	
	@OneToMany(mappedBy="account",cascade=CascadeType.ALL)
	public List<Transactions> getListTrans() {
		return listTrans;
	}

	public void setListTrans(List<Transactions> listTrans) {
		this.listTrans = listTrans;
	}

	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public void setDateOpen(Date dateOpen) {
		this.dateOpen = dateOpen;
	}

	public void setAccountBalance(double accountBalance) {
		this.accountBalance = accountBalance;
	}

	@ManyToOne
	@JoinColumn(name="type_id")
	public AccountType getAccType() {
		return accType;
	}

	public void setAccType(AccountType accType) {
		this.accType = accType;
	}

	@ManyToOne
	@JoinColumn(name="cust_id")
	public Customer getAccHolder() {
		return accHolder;
	}

	public void setAccHolder(Customer accHolder) {
		this.accHolder = accHolder;
	}

	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="branch_id")
	public Branch getAccBranch() {
		return accBranch;
	}

	public void setAccBranch(Branch accBranch) {
		this.accBranch = accBranch;
	}

	@Override
	public String toString() {
		return "Account [accountId=" + accountId + ", accountNo=" + accountNo + ", dateOpen=" + dateOpen
				+ ", accountBalance=" + accountBalance + "]";
	}
	

	public void addTransaction(Transactions trans){
		listTrans.add(trans);
		trans.setAccount(this);
	}
	
	
}
