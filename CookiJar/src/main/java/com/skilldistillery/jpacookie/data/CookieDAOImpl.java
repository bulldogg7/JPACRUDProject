package com.skilldistillery.jpacookie.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.springframework.stereotype.Component;

import com.mysql.cj.jdbc.Blob;
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
		manager.persist(cookie);
		return cookie;
	}

	// READ
	@Override
	public Cookie readCookieById(int cookieId) {
		Cookie cookieById = manager.find(Cookie.class, cookieId);
		return cookieById;
	}

	@Override
	public List<Cookie> readAllCookies() {
		String jpql = "SELECT c FROM Cookie c";
		List<Cookie> allCookies = manager.createQuery(jpql, Cookie.class).getResultList();
		return allCookies;
	}

	@Override
	public List<Cookie> readCookiesByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	// UPDATE
	@Override
	public Cookie updateCookie(Cookie cookie, int cookieId) {
		Cookie foundCookie = manager.find(Cookie.class, cookieId);

		return foundCookie;
	}

	// DELETE
	@Override
	public boolean deleteCookieById(int cookieId) {
		try {
			Cookie cookieDelete = manager.find(Cookie.class, cookieId);
			if (cookieDelete == null) {
				return false;
			}
			manager.remove(cookieDelete);
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}