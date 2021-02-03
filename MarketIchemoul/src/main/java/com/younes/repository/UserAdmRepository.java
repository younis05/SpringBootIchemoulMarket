package com.younes.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.younes.model.Customer;

public interface UserAdmRepository extends JpaRepository<Customer,Long>
{

}
