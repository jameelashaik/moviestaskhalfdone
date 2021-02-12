package com.apcfss.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.apcfss.model.MovieDetails;
import com.apcfss.service.MovieDetailsService;

@Controller
@RequestMapping("/moviedetails")
public class MovieDetailsController {
	@Autowired
	MovieDetailsService movieservice;
	
	@RequestMapping(value="/create",method = RequestMethod.GET)
	ModelAndView create(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView modelAndView=new ModelAndView();
		 modelAndView.addObject("movienameobj",new MovieDetails());
		 System.out.println("--cjheck--");
		modelAndView.setViewName("check");
		 return modelAndView;
	}
	@RequestMapping(value="/actordetails",method = RequestMethod.GET)
	ModelAndView actordetails(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView modelAndView=new ModelAndView();
		 modelAndView.addObject("movienameobj",new MovieDetails());
		 System.out.println("--actor detailscheck--");
		modelAndView.setViewName("detailsactor");
		 return modelAndView;
	}
	@RequestMapping(value="/techdetails",method = RequestMethod.GET)
	ModelAndView techdetails(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView modelAndView=new ModelAndView();
		 modelAndView.addObject("movienameobj",new MovieDetails());
		 System.out.println("--tech detailscheck--");
		modelAndView.setViewName("detailstech");
		 return modelAndView;
	}
	@RequestMapping(value="/techdetailssave",method = RequestMethod.POST)
	ModelAndView techdetailssave(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("movienameobj")MovieDetails mvnm)
	{
		
		System.out.println("movie"+ mvnm.getMoviename());

		movieservice.createtechdetails(mvnm);    
		return null;
	}
	@RequestMapping(value="/actordetailssave",method = RequestMethod.POST)
	ModelAndView actordetailssave(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("movienameobj")MovieDetails mvnm)
	{
		
		System.out.println("movie"+ mvnm.getMoviename());

		movieservice.createactordetails(mvnm);    
		return null;
	}
	
	@RequestMapping(value="/save",method = RequestMethod.POST)
	ModelAndView save(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("movienameobj")MovieDetails mvnm)
	{
		
		System.out.println("movie"+ mvnm.getMoviename());

		movieservice.createMovie(mvnm);    
		return null;
	}
	@RequestMapping(value="/movieactorreport",method = RequestMethod.GET)
	ModelAndView movieactorreport(HttpServletRequest request, HttpServletResponse response)
	{
		
		ModelAndView modelAndView=new ModelAndView();
	List<MovieDetails>	movielist=movieservice.retrieveMovies();
	 List<MovieDetails>	actorlist=movieservice.retrieveactors();
	 
	modelAndView.addObject("movienameobj",new MovieDetails());
		 modelAndView.addObject("movielist",movielist);
		 modelAndView.addObject("actorlist",actorlist);
		 System.out.println("--movieactorcheck--");
		modelAndView.setViewName("actormoviereport");
		 return modelAndView;
	}
	@RequestMapping(value="/movietechnicianreport",method = RequestMethod.GET)
	ModelAndView movietechnicianreport(HttpServletRequest request, HttpServletResponse response)
	{
		
		ModelAndView modelAndView=new ModelAndView();
	List<MovieDetails>	movielist=movieservice.retrieveMovies();
	 List<MovieDetails>	techlist=movieservice.retrievetechnicians();
	 
	modelAndView.addObject("movienameobj",new MovieDetails());
		 modelAndView.addObject("movielist",movielist);
		 modelAndView.addObject("techlist",techlist);
		 System.out.println("--movieactorcheck--");
		modelAndView.setViewName("dropdowntechnicianmovie");
		 return modelAndView;
	}
	@RequestMapping(value="/movietechniciansaveview",method = RequestMethod.POST)
	ModelAndView movietechniciansaveview(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("movienameobj")MovieDetails mvnm)
	{
		ModelAndView modelAndView=new ModelAndView();
		System.out.println("mid check--"+mvnm.getMid());
		System.out.println("movie"+ mvnm.getMoviename());
		List<MovieDetails> movieatechnicianlist=movieservice.createmovietechnicianlist(mvnm); 
		modelAndView.addObject("movieatechnicianlist",movieatechnicianlist);
		modelAndView.setViewName("movieatechnicianreportview");
		 return modelAndView;
	}
	@RequestMapping(value="/movieactorsave",method = RequestMethod.POST)
	ModelAndView movieactorsave(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("movienameobj")MovieDetails mvnm)
	{
		ModelAndView modelAndView=new ModelAndView();
		System.out.println("mid check--"+mvnm.getMid());
		System.out.println("movie"+ mvnm.getMoviename());
		List<MovieDetails> movieactorlist=movieservice.createmovieactorlist(mvnm); 
		modelAndView.addObject("movieactorlist",movieactorlist);
		modelAndView.setViewName("movieactorreportview");
		 return modelAndView;
	}

}

