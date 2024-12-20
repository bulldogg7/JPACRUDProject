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
		
		@Column(name="sugar_grams")
		private Integer sugar;


		
	
}
