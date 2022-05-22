package com.app.pojos;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="emp_details")
public class Employee
{
	private Integer empId;
	private String empName;
	private Integer supervisor;
	private String username;
	private String password;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date joinDate;
	//An Employee has a role---Many-To-One
	private Role role;
	private Branch branch;
	
	
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Employee(String empName, Integer supervisor, String username, String password, Date joinDate) {
		super();
		this.empName = empName;
		this.supervisor = supervisor;
		this.username = username;
		this.password = password;
		this.joinDate = joinDate;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="emp_id")
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	

	@Column(name="emp_name")
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	
	public Integer getSupervisor() {
		return supervisor;
	}
	public void setSupervisor(Integer supervisor) {
		this.supervisor = supervisor;
	}
	
	@Column(length=10)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(length=15)
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Temporal(TemporalType.DATE)
	@Column(name="join_date")
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="role_id")
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	@ManyToOne
	@JoinColumn(name="branch_id")
	public Branch getBranch() {
		return branch;
	}


	public void setBranch(Branch branch) {
		this.branch = branch;
	}


	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", supervisor=" + supervisor + ", username="
				+ username + ", password=" + password + ", joinDate=" + joinDate + "]";
	}
	
	

}
