package com.app.pojos;

import javax.persistence.*;

@Entity
@Table(name="customer_addr")
public class Address {
	
	private Integer addrId;
	private int pin;
	private String streetAddr;
	private String city;
	private String state;
    
    //One-To-One
	private Customer owner;

	public Address() {
	}

	public Address(int addrId, int pin, String streetAddr, String city, String state) {
		super();
		this.addrId = addrId;
		this.pin = pin;
		this.streetAddr = streetAddr;
		this.city = city;
		this.state = state;
		
	}
    
	@Id
	@Column(name="addr_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getAddrId() {
		return addrId;
	}

	public void setAddrId(Integer addrId) {
		this.addrId = addrId;
	}

	@Column(length=6, nullable=false)
	public int getPin() {
		return pin;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}

	@Column(name="street_addr", nullable=false)
	public String getStreetAddr() {
		return streetAddr;
	}

	public void setStreetAddr(String streetAddr) {
		this.streetAddr = streetAddr;
	}

	@Column(nullable=false)
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	@Column(nullable=false)
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	

	@OneToOne
	@JoinColumn(name="cust_id")
	public Customer getOwner() {
		return owner;
	}

	public void setOwner(Customer owner) {
		this.owner = owner;
	}

	@Override
	public String toString() {
		return "Address [addrId=" + addrId + ", pin=" + pin + ", streetAddr=" + streetAddr + ", city=" + city
				+ ", state=" + state +  "]";
	}
}
