package com.skilldistillery.jpacookie.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpacookie.data.CookieDAO;
import com.skilldistillery.jpacookie.entities.Cookie;

@Controller
public class CookieController {

	@Autowired
	private CookieDAO cookieDao;
	
	
	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("cookieList", cookieDao.readAllCookies());
		return "home";
	}
	@RequestMapping(path = "getCookie.do", method = RequestMethod.GET)
	public String showCookie(Model model, @RequestParam("cookieId") Integer cookieId) {
		Cookie cookie = cookieDao.readCookieById(cookieId);
		model.addAttribute("cookie", cookie);
		return "film/show";
	}
}