package com.skilldistillery.jpacookie.entities;

import java.util.Objects;

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

	private String base;

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

	public String getBase() {
		return base;
	}

	public void setBase(String base) {
		this.base = base;
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
	public int hashCode() {
		return Objects.hash(base, calories, contents, frosting, id, name, price, sugar, topping);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cookie other = (Cookie) obj;
		return Objects.equals(base, other.base) && Objects.equals(calories, other.calories)
				&& Objects.equals(contents, other.contents) && Objects.equals(frosting, other.frosting)
				&& id == other.id && Objects.equals(name, other.name) && Objects.equals(price, other.price)
				&& Objects.equals(sugar, other.sugar) && Objects.equals(topping, other.topping);
	}

	@Override
	public String toString() {
		return "Cookie [id=" + id + ", name=" + name + ", base=" + base + ", contents=" + contents + ", frosting="
				+ frosting + ", topping=" + topping + ", calories=" + calories + ", sugar=" + sugar + ", price=" + price
				+ "]";
	}
}