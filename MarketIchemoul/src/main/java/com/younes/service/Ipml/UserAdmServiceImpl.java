package com.younes.service.Ipml;

import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.younes.model.Customer;
import com.younes.repository.UserAdmRepository;
import com.younes.service.UserAdmService;

@Service
@Transactional
public class UserAdmServiceImpl implements UserAdmService
{
	@Autowired
	UserAdmRepository userAdmRepo;

	@Override
	public Optional<Customer> getCustomerId(Long pid)
	{
		
		return userAdmRepo.findById(pid);
	}

	@Override
	public List<Customer> getAllCustomer()
	{

		return userAdmRepo.findAll();
	}

	@Override
	public void deleteCustomer(Long pid) 
	{
		userAdmRepo.deleteById(pid);
		
	}

	@Override
	public void deleteAll(List<Customer> ids) 
	{
		
		
	}
	
}
