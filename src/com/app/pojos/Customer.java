package com.app.pojos;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="customer_details")
public class Customer{
	 
	private Integer custId;
	@NotEmpty(message="Firstname cannot be empty!")
	private String firstName;
	private String middleName;
	@NotEmpty(message="Lastname cannot be empty!")
	private String lastName;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@NotNull(message="Date of Birth is required!")
	private Date 	dateOfBirth;
	@NotEmpty(message="Please select your gender!")
	private String gender;
	@NotEmpty(message="Email cannot be empty!")
	private String email;
	@NotEmpty(message="Phone number is required!")
	@Length(min=10,max=10,message="Must contain 10 digits only!")
	private String phone;
	private byte[] photo;
	private byte[] sign;
	private String pan;
	
	private String userName;
	private String password;
	private String status;
	
	
	//One-To-Many
    private List<Account> myAccounts = new ArrayList<>();
    //One-To-One
    private Address myAddress;
    //Many-To-One
    private AccountType accType; 
    //Many-To-One
    private Branch myBranch;
    
    
	public Customer(String firstName, String middleName, String lastName, Date dateOfBirth, String gender, String email,
			String phone, byte[] photo, byte[] sign, String pan, String userName, String password, String status,
			AccountTypeEnum accType, String branchLoc) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.photo = photo;
		this.sign = sign;
		this.pan = pan;
		this.userName = userName;
		this.password = password;
		this.status = status;
		
	}

	public Customer() {
		super();
	}

	@Id
	@Column(name="cust_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getCustId() {
		return custId;
	}

	@Column(name="first_name", nullable=false)
	public String getFirstName() {
		return firstName;
	}
	
	@Column(name="middle_name", nullable=false)
	public String getMiddleName() {
		return middleName;
	}
	
	@Column(name="last_name", nullable=false)
	public String getLastName() {
		return lastName;
	}
	
//	@Temporal(TemporalType.DATE)
	@Column(name="dob", nullable=false)
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	@Column(nullable=false)
	public String getGender() {
		return gender;
	}
	
	@Column(nullable=false,unique=true)
	public String getEmail() {
		return email;
	}
	
	@Column(length=15, nullable=false,unique=true)
	public String getPhone() {
		return phone;
	}
	
	@Column(length=16)
	public String getPan() {
		return pan;
	}
	
	@Column(unique=true)
	public String getUserName() {
		return userName;
	}

	
	public String getPassword() {
		return password;
	}
	
	@Column(columnDefinition="char default 'p'")
	public String getStatus() {
		return status;
	}

	
	public void setCustId(int custId) {
		this.custId = custId;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(columnDefinition="longblob")
	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	@Column(columnDefinition="longblob")
	public byte[] getSign() {
		return sign;
	}

	public void setSign(byte[] sign) {
		this.sign = sign;
	}
	
	public void setPan(String pan) {
		this.pan = pan;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}	

	public void setPassword(String password) {
		this.password = password;
	}	

	public void setStatus(String status) {
		this.status = status;
	}

	@OneToMany(mappedBy="accHolder",cascade=CascadeType.ALL)
	public List<Account> getMyAccounts() {
		return myAccounts;
	}

	public void setMyAccounts(List<Account> myAccounts) {
		this.myAccounts = myAccounts;
	}

	public void setCustId(Integer custId) {
		this.custId = custId;
	}

	
	@OneToOne(mappedBy="owner",cascade=CascadeType.ALL)
	public Address getMyAddress() {
		return myAddress;
	}

	public void setMyAddress(Address myAddress) {
		this.myAddress = myAddress;
	}
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="type_id")
	public AccountType getAccType() {
		return accType;
	}

	public void setAccType(AccountType accType) {
		this.accType = accType;
	}
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="branch_id")
	public Branch getMyBranch() {
		return myBranch;
	}

	public void setMyBranch(Branch myBranch) {
		this.myBranch = myBranch;
	}
	
	

	@Override
	public String toString() {
		return "Customer Detail [custId=" + custId + ", firstName=" + firstName + ", middleName=" + middleName
				+ ", lastName=" + lastName + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender + ", email=" + email
				+ ", phone=" + phone + ", photo=" + Arrays.toString(photo) + ", sign=" + Arrays.toString(sign)
				+ ", pan=" + pan + ", userName=" + userName + ", password=" + password + ", status=" + status
				+  "]";
	}
	
	
	public void addAccount(Account acc)
	{
		this.myAccounts.add(acc);
		acc.setAccHolder(this);
	}
	
	public void attachAddress(Address addr)
	{
		this.myAddress = addr;
		addr.setOwner(this);
	}
	
	
    
}
	