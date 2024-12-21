package com.skilldistillery.jpacookie.data;

import java.util.List;

import com.skilldistillery.jpacookie.entities.Cookie;


public interface CookieDAO {

	// CREATE
	public Cookie createCookie(Cookie cookie);

	// READ
	public List<Cookie> readAllCookies();
	public Cookie readCookieById(int cookieId);
	public Cookie readCookiesByKeyword(String keyword);
	
	// UPDATE
	public Cookie updateCookie(int cookieId, Cookie cookie);
	
	// DELETE
	public boolean deleteCookieById(int cookieId);	
}