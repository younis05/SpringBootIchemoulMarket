package com.younes.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
@Entity
@Table(name = "customer")
public class Customer {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, unique = true)
	private Long id;
	
	@Length(min = 2, max = 50)
	@NotNull(message = "Customer firstname is required.")
	@Size(min = 2, max = 50, message = "Customer name must be between 2 and 50 characters.")
	@Column(name = "firstname", nullable = false)
	private String firstname;
	
	@Length(min = 2, max = 50)
	@NotNull(message = "Customer lastname is required.")
	@Size(min = 2, max = 50, message = "Customer name must be between 2 and 50 characters.")
	@Column(name = "lastname", nullable = false)
	private String lastname;
	
	
	@NotNull(message = "Customer password is required.")
	@Pattern(regexp = "((?=.*\\d)(?=.*[a-z]).{6,})") 
	@Column(name = "password", nullable = false)
	private String password;
	
	@Email
	@NotNull(message = "Customer email is required.")
	@Size(min = 11, max = 100, message = "Email must be between 11 and 100 characters.")
	@Column(name = "email", nullable = false, unique = true)
	private String email;
	
	@Pattern(regexp = "([0]{1})([5-7]{1})([0-9]).{7}")
	@NotNull(message = "Customer phone is required.")
	@Size(max = 10, message = "Phone Number must be of 10 digits only.")
	@Column(name = "phone", nullable = false, unique = true)
	private String phone;
	
	@NotNull(message = "Customer address is required.")
	@Column(name = "address", nullable = false)
	private String address;
	
	@Column(name = "valid", nullable = false)
	private boolean valid;

	@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "cusdate", nullable = false)
	private Date cusdate;

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}

	public Date getCusdate() {
		return cusdate;
	}

	public void setCusdate(Date cusdate) {
		this.cusdate = cusdate;
	}

	
	
	
	
}
