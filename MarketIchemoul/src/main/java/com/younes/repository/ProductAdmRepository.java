package com.younes.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.younes.model.Product;

public interface ProductAdmRepository extends JpaRepository<Product, Long> {
}
