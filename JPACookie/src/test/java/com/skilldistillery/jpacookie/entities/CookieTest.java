package com.skilldistillery.jpacookie.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class CookieTest {

	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private Cookie cookie;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		factory = Persistence.createEntityManagerFactory("JPACookie");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		factory.close();

	}

	@BeforeEach
	void setUp() throws Exception {
		manager = factory.createEntityManager();
		cookie = manager.find(Cookie.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		cookie = null;
		manager.close();
	}

	@Test
	void test_Cookie_basic_mappings() {
		assertNotNull(cookie);
		assertEquals("Chocolate Chip", cookie.getType());
	}
}