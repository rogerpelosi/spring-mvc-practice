package com.stackroute.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Repository;

import com.stackroute.model.Dog;

@Repository
public class DogRepository {
	
	private List<Dog> dogs;
	
	public DogRepository() {
		
		dogs = new ArrayList<Dog>();
		dogs.add(new Dog(100, "Labradoodle", "Pinky", "Medium"));
		dogs.add(new Dog(101, "Great Dane", "Joseph", "Large"));
		dogs.add(new Dog(102, "Saint Bernard", "Lucile", "Large"));
		dogs.add(new Dog(103, "Weiner", "Daphy", "Small"));
		dogs.add(new Dog(104, "Chihuahua", "Callie", "Small"));
		
	}
	
	public List<Dog> getAllDogs(){
		return dogs;
	}
	
	public Dog getDogById(int dogId) {
		Dog doggy = null;
		for(Dog indDog: dogs) {
			if(indDog.getId() == dogId) {
				doggy = indDog;
			}
		}
		return doggy;
	}
	
	public void addDog(Dog newDog) {
		dogs.add(newDog);
	}
	
	public void removeDog(int dogId) {
		dogs = dogs.stream().filter(e->e.getId() != dogId).collect(Collectors.toList());
	}

}
