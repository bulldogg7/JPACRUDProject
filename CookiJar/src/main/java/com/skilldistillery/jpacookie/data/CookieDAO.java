package com.skilldistillery.jpacookie.data;

import java.util.List;

import com.skilldistillery.jpacookie.entities.Cookie;

public interface CookieDAO {

	// CREATE
	public Cookie createCookie(Cookie cookie);

	// READ
	public Cookie readCookieById(int cookieId);
	public List<Cookie> readAllCookies();
	public List<Cookie> readCookiesByKeyword(String keyword);

	// UPDATE
	public Cookie updateCookie(Cookie cookie, int cookieId);

	// DELETE
	public boolean deleteCookieById(int cookieId);

	// GET IMAGE
}