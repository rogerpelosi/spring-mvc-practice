package com.stackroute.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stackroute.model.Dog;
import com.stackroute.repository.DogRepository;

@Service
public class DogService {
	
	@Autowired
	private DogRepository doggyRepo;
	
	public List<Dog> getAllDogs(){
		return doggyRepo.getAllDogs();
	}
	
	public Dog getDogById(int dogId) {
		Dog doggy = doggyRepo.getDogById(dogId);
		if(doggy == null) {
			return new Dog(0, "N/A", "Doesn't Exist", "N/A");
		}
		return doggy;
	}
	
	public void addDog(Dog newDog) {
		doggyRepo.addDog(newDog);
	}
	
	public void removeDog(int dogId) {
		doggyRepo.removeDog(dogId);
	}

}
