package com.skilldistillery.jpacookie.entities;

@Entity
public class Cookie {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String type;

	private String frosting;

	private String topping;

	private Integer calories;

	@Column(name = "sugar_grams")
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
		return "Cookie [id=" + id + ", type=" + type + ", frosting=" + frosting + ", topping=" + topping + ", calories="
				+ calories + ", sugar=" + sugar + ", price=" + price + "]";
	}
}