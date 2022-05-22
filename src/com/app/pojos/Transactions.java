package com.app.pojos;
import java.util.Date;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Transactions {

	public Integer transactionId;
	//ManyToOne
	private Account account;
	
	public double amount;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	public Date date;
	public String transactionType;
	public String descrption;
	
	public Transactions() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Transactions(double amount, Date date, String transactionType,
			String descrption) {
		super();
	
		this.amount = amount;
		this.date = date;
		this.transactionType = transactionType;
		this.descrption = descrption;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getTransactionId() {
		return transactionId;
	}


	@Column(nullable=false)
	public double getAmount() {
		return amount;
	}
	
	@Temporal(TemporalType.DATE)
	@Column(nullable=false)
	public Date getDate() {
		return date;
	}

	@Column(name="txn_type", nullable=false)
	public String getTransactionType() {
		return transactionType;
	}

	@Column(name="description", nullable=false)
	public String getDescrption() {
		return descrption;
	}

	
	
	
	public void setTransactionId(Integer transactionId) {
		this.transactionId = transactionId;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}

	public void setDescrption(String descrption) {
		this.descrption = descrption;
	}

	
	@ManyToOne
	@JoinColumn(name="account_id")
	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@Override
	public String toString() {
		return "Transactions [transactionId=" + transactionId +  ", amount=" + amount + ", date="
				+ date + ", transactionType=" + transactionType + ", descrption=" + descrption + "]";
	}
	
	
	
}
