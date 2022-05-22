package com.app.pojos;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="T_USER")
public class User 
{
	private Integer userId;
	private String name;
	private String email;
	private String password;
	private String mobNo;
	private UserRole userRole;
	private byte[] userImg;
	
	public User() {
		this.userRole = new UserRole();
	}


	public User(String name, String email, String password, String mobNo, UserRole userRole) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.mobNo = mobNo;
		this.userRole = userRole;
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="user_id", nullable = false, unique = true)
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name="name", nullable = false, length = 50)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name="email", nullable = false, length = 50,unique=true)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "password", nullable = false, length = 120)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name="mob_no", nullable = false, length = 50,unique=true)
	public String getMobNo() {
		return mobNo;
	}

	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}
	
	
	@Column(name="usr_img",columnDefinition="longblob")
	public byte[] getUserImg() {
		return userImg;
	}


	public void setUserImg(byte[] userImg) {
		this.userImg = userImg;
	}


	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="role_id")
	public UserRole getUserRole() {
		return userRole;
	}


	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}


	@Override
	public String toString() {
		return "UserPojo [userId=" + userId + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", mobNo=" + mobNo + ", userRole=" + userRole + "]";
	}

}
