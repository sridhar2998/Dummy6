package com.dummy6.controller;

import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dummy6.model.Customer;
import com.dummy6.services.SalServices;
@Controller
public class SalController {
@Autowired
private SalServices salServices;
public SalController()
 {
super();
 }
public void setSalServices(SalServices salServices)
{
this.salServices=salServices;
}
@GetMapping("/salForm")
public String showForm(Model m)
{ 
m.addAttribute("sal", new Customer());
return "salForm";
}
@PostMapping(value="/save")
public String save(@Valid @ModelAttribute("sal") Customer customer, BindingResult 
br)//, Model model) 
{
 if (br.hasErrors()) 
 { 
 return "salForm";
 }
 else
 { 
salServices.save(customer);
return "/salForm"; //redirect:
 }
}
@RequestMapping("/viewForm")
public String viewEmp(Model m)
{
List<Customer> list=salServices.getCustomers();
m.addAttribute("list", list);
return "viewForm";
}
@RequestMapping(value="/deleteSal/{id}")
public String delete(@PathVariable int id)
{
salServices.delete(id);
return "redirect:/viewForm"; 
}
}