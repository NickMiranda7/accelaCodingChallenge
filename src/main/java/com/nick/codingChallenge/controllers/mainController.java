package com.nick.codingChallenge.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nick.codingChallenge.models.address;
import com.nick.codingChallenge.models.person;
import com.nick.codingChallenge.services.addressService;
import com.nick.codingChallenge.services.personService;

@Controller
@RequestMapping("/")
public class mainController {

	@Autowired
	private personService personService;
	@Autowired
	private addressService addressService;
	
	@GetMapping("")
	public String home(Model model) {
		List<person> persons = this.personService.orderedPersons();
		int numberOfPersons = persons.size();
		List<address> addressess = this.addressService.getAllAddressess();
		model.addAttribute("persons", persons);
		model.addAttribute("count", numberOfPersons);
		model.addAttribute("addressess", addressess);
		return "home.jsp";
	}
	
	@PostMapping("/registerPerson")
	public String createPerson(@ModelAttribute("person") person person) {	
		this.personService.createPerson(person);
		return"redirect:/";
	}
	
	@GetMapping("/registerPerson")
	public String person(@ModelAttribute("person") person person) {	
		return "register.jsp";
	}
	
	@GetMapping("/{id}")
	public String showPerson(@PathVariable("id") Long id, Model model, @ModelAttribute("person") person person, @ModelAttribute("address") address address) {
		
		model.addAttribute("person", this.personService.getOnePerson(id));
		model.addAttribute("addressess", this.personService.getOnePerson(id).getAddresses());
		return "person.jsp";
	}

	@PostMapping("/edit/{id}")
	public String updatePerson(@ModelAttribute("person") person updatePerson) {	
		this.personService.updatePerson(updatePerson);
		return "redirect:/";
	}
	
	@GetMapping("/delete/{id}")
	public String deletePerson(@PathVariable("id") Long id) {
		this.personService.deletePerson(id);
		return "redirect:/";
	}
	@PostMapping("/addAddress")
	public String addAddress(@ModelAttribute("address") address address) {
		this.addressService.createAddress(address);
		return "redirect:/";
	}
	@GetMapping("/updateAddress/{id}")
	public String editAddress(@PathVariable("id") Long id, @ModelAttribute("address") address address, Model model, @ModelAttribute("person") person person) {
		model.addAttribute("person", person);
		model.addAttribute("address", this.addressService.getOneAddress(id));
		return "address.jsp";
	}
	@PostMapping("/updateAddress/{id}")
	public String updateAddress(@ModelAttribute("address") address updateAddress, @ModelAttribute("person") person person) {
		this.addressService.updateAddress(updateAddress);
		return "redirect:/";
	}
	
	@GetMapping("/deleteAddress/{id}")
	public String deleteAddress(@PathVariable("id") Long id) {
		this.addressService.deleteAddress(id);
		return "redirect:/"; 
	}
	
	
	
	
}