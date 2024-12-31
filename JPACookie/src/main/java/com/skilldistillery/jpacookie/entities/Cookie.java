package com.skilldistillery.jpacookie.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Cookie {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	
	private String contents;

	private String frosting;

	private String topping;

	@Column(name = "calories_quarter")
	private Integer calories;

	@Column(name = "sugar_grams_quarter")
	private Integer sugar;

	private Double price;

	public Cookie() {
		super();
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getFrosting() {
		return frosting;
	}
	public void setFrosting(String frosting) {
		this.frosting = frosting;
	}
	public String getTopping() {
		return topping;
	}
	public void setTopping(String topping) {
		this.topping = topping;
	}
	public Integer getCalories() {
		return calories;
	}
	public void setCalories(Integer calories) {
		this.calories = calories;
	}
	public Integer getSugar() {
		return sugar;
	}
	public void setSugar(Integer sugar) {
		this.sugar = sugar;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Cookie [id=" + id + ", name=" + name + ", contents=" + contents + ", frosting=" + frosting
				+ ", topping=" + topping + ", calories=" + calories + ", sugar=" + sugar + ", price=" + price + "]";
	}
}