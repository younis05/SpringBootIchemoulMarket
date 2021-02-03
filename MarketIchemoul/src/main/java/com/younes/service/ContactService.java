package com.younes.service;

import javax.mail.MessagingException;

import com.younes.model.Contact;


public interface ContactService {
	
	void saveContacts(Contact contact) throws MessagingException;

}
