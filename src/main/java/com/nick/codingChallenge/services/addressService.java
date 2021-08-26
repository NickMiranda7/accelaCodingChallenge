package com.nick.codingChallenge.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nick.codingChallenge.models.address;
import com.nick.codingChallenge.repositories.addressRepo;

@Service
public class addressService {

	@Autowired
	private addressRepo addressRepo;
	
	
	  public List<address> getAllAddressess() {
	        return this.addressRepo.findAll();
	    }
	  	public address getOneAddress(Long id) {
	  		return this.addressRepo.findById(id).orElse(null);
	  	}
		public address createAddress(address newAddress) {
			return this.addressRepo.save(newAddress);
		}
		
		public address updateAddress(address updatedAddress) {
			return this.addressRepo.save(updatedAddress);
		}
		
		public void deleteAddress(Long id) {
			
			this.addressRepo.deleteById(id);
			
		}
}
