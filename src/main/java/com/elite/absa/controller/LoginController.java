package com.elite.absa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.elite.absa.model.Login;
import com.elite.absa.validator.LoginValidator;
import com.elite.business.pojo.LoginUser;
import com.elite.util.mapping.MappingUtil;

@Controller
public class LoginController {

	@Autowired
	LoginValidator loginValidator;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin() {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("login", new Login());

		return mav;
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(@ModelAttribute("login") Login login, Errors errors) {
		ModelAndView mav = new ModelAndView("welcome");

		System.out.println(login.getUsername());
		System.out.println(login.getPassword());
		// validations
		loginValidator.validate(login, errors);
		if (errors.hasErrors()) {
			return new ModelAndView("login");
		}

		// map the data
		MappingUtil util = new MappingUtil();
		LoginUser loginUser = util.mapLoginUser(login, new LoginUser());

		// call business layer methiod and pass loginUser object

		System.out.println("Username: " + login.getUsername());
		System.out.println("Password: " + login.getPassword());

		return mav;
	}

}
