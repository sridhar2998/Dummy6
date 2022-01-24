package com.dummy6.services;

import java.util.List;
import org.springframework.stereotype.Service;

import com.dummy6.dao.SalDao;
import com.dummy6.model.Customer;

@Service
public class SalServicesImpl implements SalServices
{
	private SalDao dao;
	public void setDao(SalDao dao)
	{
	this.dao=dao;
	}
	@Override
	public int save(Customer cus) {
		// TODO Auto-generated method stub
		return dao.save(cus);
	}

	@Override
	public List<Customer> getCustomers() {
		// TODO Auto-generated method stub
		return dao.getCustomers();
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

}