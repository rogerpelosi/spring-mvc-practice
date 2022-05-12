package com.stackroute.model;

public class Dog {
	
	private int id;
	private String breed;
	private String name;
	private String size;
	
	public Dog(int id, String breed, String name, String size) {
		this.id = id;
		this.breed = breed;
		this.name = name;
		this.size = size;
	}
	
	public Dog() {}
	
	public int getId() {return id;}
	public void setId(int id) {this.id = id;}
	
	public String getBreed() {return breed;}
	public void setBreed(String breed) {this.breed = breed;}
	
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	
	public String getSize() {return size;}
	public void setSize(String size) {this.size = size;}
	
	@Override
	public String toString() {
		return "Dog [id=" + id + ", breed=" + breed + ", name=" + name + ", size=" + size + "]";
	}

}
