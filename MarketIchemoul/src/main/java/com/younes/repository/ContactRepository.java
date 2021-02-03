package com.younes.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.younes.model.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {

}
