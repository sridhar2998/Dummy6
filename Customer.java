package com.dummy6.model;

import java.util.Date;

//import java.sql.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
//import javax.persistence.Temporal;
//import javax.persistence.TemporalType;

public class Customer 
{
	@NotNull(message = "Customer id must not be empty")
	@Min(value=10, message="Customer  id starts from 10")
	@Max(value=500, message="Customer  id should be less than 500")
	private int id;
	@NotNull(message = "Customer name must not be empty")
	@Size(min=3, max=15, message="Between 3 and 15 characters")
	private String name;
	@NotNull(message = "Customer city must not be empty")
	@Size(min=3, max=15, message="Between 3 and 25 characters")
	private String city;
	@NotNull(message = "creditLimit must not be empty")
	@Min(value=10000, message="Minimum creditLimit is 10000")
	@Max(value=100000, message="Maximum creditLimit is 100000")
	//@Digits(integer=5, fraction=2, message="Salary must be greater than 99999
	private double creditLimit;
	@NotNull(message = "salesDone must not be empty")
	@Min(value=10000, message="Minimum salesDone is 10000")
	@Max(value=75000, message="Maximum salesDone is 75000")
	//@Digits(integer=5, fraction=2, message="Salary must be greater than 99999
	private double salesDone;
	@NotNull(message = "Date of joining must not be empty")
	private Date doj;
	public Customer() 
	{
		super();
	}
	public Customer(int id, String name, String city, double creditLimit, double salesDone, Date doj) 
	{
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.creditLimit = creditLimit;
		this.salesDone = salesDone;
		this.doj = doj;
	}
	public Customer(String name, String city, double creditLimit, double salesDone, Date doj) 
	{
		super();
		this.name = name;
		this.city = city;
		this.creditLimit = creditLimit;
		this.salesDone = salesDone;
		this.doj = doj;
	}
	public int getId() 
	{
		return id;
	}
	public void setId(int id) 
	{
		this.id = id;
	}
	public String getName() 
	{
		return name;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public String getCity() 
	{
		return city;
	}
	public void setCity(String city)
	{
		this.city = city;
	}
	public double getCreditLimit() 
	{
		return creditLimit;
	}
	public void setCreditLimit(double creditLimit) 
	{
		this.creditLimit = creditLimit;
	}
	public double getSalesDone() {
		return salesDone;
	}
	public void setSalesDone(double salesDone) 
	{
		this.salesDone = salesDone;
	}
	public Date getDoj() 
	{
		return doj;
	}
	public void setDoj(Date doj) 
	{
		this.doj = doj;
	}
	@Override
	public String toString() 
	{
		return "Customer [id=" + id + ", name=" + name + ", city=" + city + ", creditLimit="
				+ creditLimit + ", salesDone=" + salesDone + ", doj=" + doj + "]";
	}
	
	
}