package com.company.energy;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class EnergyUiController {
	
	private static final Logger logger = LoggerFactory.getLogger(EnergyUiController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("Login Page");
		
		
		return "index";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Home Page");
		
		
		return "home";
	}
	
	@RequestMapping(value = "/uploadData", method = RequestMethod.GET)
	public String uploadData(Locale locale, Model model) {
		logger.info("Update Data Page");
		
		
		return "uploadData";
	}
	
	@RequestMapping(value = "/compareData", method = RequestMethod.GET)
	public String compareData(Locale locale, Model model) {
		logger.info("Compare Data Page");
		
		
		return "compareData";
	}
	
	@RequestMapping(value = "/geoPredict", method = RequestMethod.GET)
	public String geoPredict(Locale locale, Model model) {
		logger.info("Geo Predict Page");
		return "geoPredict";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Locale locale, Model model) {
		logger.info("Geo Predict Page");
		return "profile";
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Locale locale, Model model) {
		logger.info("Geo Predict Page");
		return "register";
	}
	
	@RequestMapping(value = "/predict", method = RequestMethod.GET)
	public String predict(Locale locale, Model model) {
		logger.info("Geo Predict Page");
		return "predict";
	}
	
}
