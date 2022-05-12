package com.stackroute.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stackroute.model.Dog;
import com.stackroute.service.DogService;

@Controller
public class DogAppController {
	
	@Autowired
	private DogService doggyService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHomeHandler(Model model) {
		System.out.println("Home Handler Invoked!");
		List<Dog> dogs = doggyService.getAllDogs();
		model.addAttribute("dogs", dogs);
		return "index";
	}
	
	@RequestMapping(value="/new", method = RequestMethod.GET)
	public String getNewHandler() {
		System.out.println("New Handler Invoked");
		return "new";
	}
	
	@RequestMapping(value= "/add", method = RequestMethod.POST)
	public String getAddHandler(@ModelAttribute("dog") Dog dog) {
		System.out.println(dog);
		doggyService.addDog(dog);
		return "redirect:/";
	}
	
	@RequestMapping(value="/delete/{dogId}", method = RequestMethod.GET)
	public String getDeleteHandler(@PathVariable("dogId") int dogId) {
		System.out.println("Delete Handler Invoked");
		doggyService.removeDog(dogId);
		return "redirect:/";
	}

}
