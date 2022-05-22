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
@Table(name="emp_roles")
public class Role 
{
	private Integer roleId;
	private String roleName;
	
	private List<Employee> employees = new ArrayList<>();
	
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Role(String roleName) {
		super();
		this.roleName = roleName;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="role_id")
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	
	@Column(name="role_name",length=15,nullable=false)
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	
	@OneToMany(mappedBy="role")
	public List<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", roleName=" + roleName + "]";
	}
	
	//convinience method
	public void addEmployee(Employee e)
	{
		this.employees.add(e);
		e.setRole(this);
	}
	
	
	

}
