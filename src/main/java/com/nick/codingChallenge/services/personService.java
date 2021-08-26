package com.nick.codingChallenge.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.nick.codingChallenge.models.person;
import com.nick.codingChallenge.repositories.personRepo;

@Service
public class personService {

	@Autowired
	private personRepo personRepo;
	
    public List<person> getAllPersons() {
        return this.personRepo.findAll();
    }
    
    public person getOnePerson(Long id) {
    	return this.personRepo.findById(id).orElse(null);
    }
    
    public List<person> orderedPersons() {
    	return this.personRepo.findAllByOrderByFirstNameAsc();
    }
	
	public person createPerson(person newPerson) {
		return this.personRepo.save(newPerson);
	}
	
	public person updatePerson(person updatedPerson) {
		return this.personRepo.save(updatedPerson);
	}
	
	public void deletePerson(Long id) {
		
		this.personRepo.deleteById(id);
		
	}
}
