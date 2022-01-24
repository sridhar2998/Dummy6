package com.dummy6.dao;

import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.dummy6.model.Customer;

@Repository
public class SalDaoImpl implements SalDao
{
	private JdbcTemplate jdbcTemplate;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate)
	{
	this.jdbcTemplate=jdbcTemplate;
	}
	@Override
	public int save(Customer cus) {
		java.sql.Date sqlDoj=new java.sql.Date(cus.getDoj().getTime());
		String sql="insert into cus(id, name,city,creditLimit, salesDone, doj) values(?, ?, ?, ?, ?,?)";
		return jdbcTemplate.update(sql, new Object[] {cus.getId(), cus.getName(),cus.getCity(),cus.getCreditLimit(), 
		cus.getSalesDone(), sqlDoj});
		//return 0;
	}

	@Override
	public List<Customer> getCustomers() {
		String sql="select id, name,city,creditLimit, salesDone, doj from cus order by id";
		List<Customer> list=jdbcTemplate.query(sql, 
		BeanPropertyRowMapper.newInstance(Customer.class));
		return list;
		//return null;
	}

	@Override
	public int delete(int id) {
		String sql="delete from cus where id=?";
		return jdbcTemplate.update(sql, new Object[] {id});
		//return 0;
	}

}