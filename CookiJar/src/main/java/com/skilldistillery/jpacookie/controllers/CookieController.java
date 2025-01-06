package com.skilldistillery.jpacookie.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacookie.data.CookieDAO;
import com.skilldistillery.jpacookie.entities.Cookie;

@Controller
public class CookieController {

	@Autowired
	private CookieDAO cookieDao;

	// PAGES - DONE!
	@GetMapping({ "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("cookieList", cookieDao.readAllCookies());
		return "home";
	}

	// PAGES - TO DO! ***
	@GetMapping("error.do")
	public String error() {
		return "error";
	}

	// GET ADD COOKIE - DONE!
	@GetMapping("addCookie.do")
	public String addCookie() {
		return "cookie/createCookie";
	}

	// GET EDIT COOKIE - DONE!
	@GetMapping("editCookie.do")
	public String editCookie() {
		return "cookie/updateCookie";
	}

	// CREATE - DONE!
	@PostMapping("createCookie.do")
	public String createCookie(@RequestParam("name") String name, @RequestParam("base") String base,
			@RequestParam("contents") String contents, @RequestParam("frosting") String frosting,
			@RequestParam("topping") String topping, @RequestParam("calories") Integer calories,
			@RequestParam("sugar") Integer sugar, @RequestParam("price") double price, Model model) {
		Cookie cookie = new Cookie();
		cookie.setName(name);
		cookie.setBase(base);
		cookie.setContents(contents);
		cookie.setFrosting(frosting);
		cookie.setTopping(topping);
		cookie.setCalories(calories);
		cookie.setSugar(sugar);
		cookie.setPrice(price);
		cookieDao.createCookie(cookie);
		return "redirect:/home.do";
	}

	// READ - DONE!
	@GetMapping("readCookie.do")
	public String readCookie(Model model, @RequestParam("cookieId") int cookieId) {
		Cookie cookie = cookieDao.readCookieById(cookieId);
		model.addAttribute("c", cookie);
		return "cookie/readCookie";
	}

	// READ - DONE!
	@GetMapping("readAllCookies.do")
	public String readAllCookies(Model model) {
		model.addAttribute("cookieList", cookieDao.readAllCookies());
		return "cookie/readAllCookies";
	}

	// READ - TO DO! ***
	@GetMapping("readKeywordCookies.do")
	public String readKeywordCookies(@RequestParam(name = "name", required = true, defaultValue = "") String name,
			Model model) {
		List<Cookie> cookies = new ArrayList<>();
		cookies = cookieDao.readCookiesByKeyword(name);
		model.addAttribute("cookies", cookies);
		model.addAttribute("keyword", name);
		return "cookie/readKeywordCookies";
	}

	// UPDATE - DONE!
	@PostMapping("updateCookie.do")
	public String updateCookie(Model model, @RequestParam("cookieId") int cookieId) {
		Cookie cookie = cookieDao.readCookieById(cookieId);
		model.addAttribute("c", cookie);
		return "cookie/updateCookie";
	}

	// DELETE - DONE!
	@PostMapping("deleteCookie.do")
	public String deleteCookie(Model model, @RequestParam("cookieId") int cookieId) {
		boolean deletedCookie = cookieDao.deleteCookieById(cookieId);
		return "redirect:/confirmDelete.do";
	}

	// DELETE CONFIRM - DONE!
	@GetMapping("confirmDelete.do")
	public String confirmDeleteCookie(Model model, @RequestParam("cookieId") int cookieId) {
		Cookie cookieDelete = cookieDao.readCookieById(cookieId);
		model.addAttribute("CookieDelete", cookieDelete);
		return "cookie/confirmDelete";
	}
}