package com.dummy6.dao;

import java.util.List;
import com.dummy6.model.Customer;

public interface SalDao 
{
int save(Customer cus);
List<Customer> getCustomers();
int delete(int id);
}