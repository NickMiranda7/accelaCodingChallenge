package com.nick.codingChallenge.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nick.codingChallenge.models.address;

@Repository
public interface addressRepo extends CrudRepository<address, Long>{

	List<address> findAll();
}
