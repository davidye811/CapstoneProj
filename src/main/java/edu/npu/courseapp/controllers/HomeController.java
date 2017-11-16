package edu.npu.courseapp.controllers;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.ws.rs.PathParam;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cs595.capstone.domain.Account;
import cs595.capstone.domain.Movie;
import cs595.capstone.services.AccountService;
import cs595.capstone.services.MovieService;
import edu.npu.courseapp.domain.Student;
import edu.npu.courseapp.services.StudentService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	
	MovieService movieService;
	
	@Autowired 
	
	AccountService accountService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * Point your browser to:  http://localhost:8080/courseapp
	 */
	@RequestMapping(value = {"/", "home"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "home";
	}
	@RequestMapping(value =  "home2", method = RequestMethod.GET)
	public ModelAndView home2(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView modelView;
 		modelView = new ModelAndView("index");
 		
		List<Movie> mytest_list;
		mytest_list = movieService.getTopRatedMovieList();
		
		modelView.addObject("movieList", mytest_list);
		return modelView;
	}
	@RequestMapping(value =  "/singlepage/{id}", method = RequestMethod.GET)
	public ModelAndView singlePage(@PathVariable(value="id") int id,Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView modelView;
 		modelView = new ModelAndView("single");
 		Movie singlemovie=movieService.getOneForSinglePage(id);
		List<String> photos = singlemovie.getPhotos();
 		modelView.addObject("photos",photos);
		
		modelView.addObject("movie", singlemovie);
		return modelView;
	}
	@RequestMapping(value = "/registNewAccount", method = RequestMethod.POST)
	public ModelAndView processNewAccount(@ModelAttribute("account") @Valid Account account, BindingResult result, HttpSession session) 
	{
		ModelAndView modelView ;
		accountService.registerNewAccount(account);
		if (result.hasErrors()) {
			/*  Re-present the form with erroxr messages */
			modelView = new ModelAndView("redirect:home2");
			return modelView;
		}
		
		session.setAttribute("Account", account);
		modelView = new ModelAndView("redirect:home2");
		
		
		return modelView;
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginOldAccount(@ModelAttribute("account") @Valid Account account, BindingResult result, HttpSession session) 
	{
		ModelAndView modelView ;
		boolean loginresult=accountService.login(account);
		if (result.hasErrors()) {
			/*  Re-present the form with erroxr messages */
			logger.info("No result found");
		}
		if (loginresult==false) {
			/*  Re-present the form with erroxr messages */
			logger.info("password incorrect");
		}else {
		
		
		session.setAttribute("Account", account);
		}
		modelView = new ModelAndView("redirect:home2");
		
		return modelView;
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView loginOutAccount(@ModelAttribute("account") @Valid Account account, BindingResult result, HttpSession session) 
	{
		ModelAndView modelView ;
	
		
		session.removeAttribute("Account");
		modelView = new ModelAndView("redirect:home2");
		
		return modelView;
	}
}
