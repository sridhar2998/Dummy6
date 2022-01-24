package com.dummy6.services;

import java.util.List;
import com.dummy6.model.Customer;
public interface SalServices 
{
int save(Customer cus);
List<Customer> getCustomers();
int delete(int id);
}