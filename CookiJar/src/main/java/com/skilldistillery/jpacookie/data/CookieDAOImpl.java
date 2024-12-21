package com.skilldistillery.jpacookie.data;

import java.util.List;

import org.springframework.stereotype.Component;

import com.skilldistillery.jpacookie.entities.Cookie;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Component
@Transactional
public class CookieDAOImpl implements CookieDAO {
	
	@PersistenceContext
	private EntityManager manager; 

	// COOKIE METHODS

	// CREATE
	@Override
	public Cookie createCookie(Cookie cookie) {
		// TODO Auto-generated method stub
		return null;
	}

	// READ
	@Override
	public List<Cookie> readAllCookies() {
		String jpql = "SELECT c FROM Cookie c";
		return manager.createQuery(jpql, Cookie.class).getResultList();
	}

	@Override
	public Cookie readCookieById(int cookieId) {
		return manager.find(Cookie.class, cookieId);
	}

	@Override
	public Cookie readCookiesByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	// UPDATE
	@Override
	public Cookie updateCookie(int cookieId, Cookie cookie) {
		// TODO Auto-generated method stub
		return null;
	}

	// DELETE
	@Override
	public boolean deleteCookieById(int cookieId) {
		// TODO Auto-generated method stub
		return false;
	}

}
