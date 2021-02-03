package com.younes.service;

import com.younes.model.Customer;

public interface CustomerService {
	void saveCustomer(Customer customer);	
	boolean loginCustomer(String email, String password);
	Customer findCustomerByEmail(String email);
	String findCustomerPassword(String email);
	void updateCustomerById(Long id, String firstname,String lastname,String phone, String address);
	void sendMail(Customer user);
	void updatePassword(String email, String password);
	Customer findCustomerByPhone(String phone);
	Long getCustomerId(String customerEmail);
}
