package com.apcfss.service;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apcfss.dao.MovieDetailsDao;
import com.apcfss.model.MovieDetails;
@Service("movieservice")
public class MovieDetailsServiceImpl implements MovieDetailsService
{
	@Autowired
	MovieDetailsDao moviedao;

	public boolean createMovie(MovieDetails mvnm) {
		
		return moviedao.createMovie(mvnm);
	}

	public List<MovieDetails> retrieveMovies() {
		// TODO Auto-generated method stub
		return moviedao.retrieveMovies();
	}


	public int createactordetails(MovieDetails mvnm) {
		// TODO Auto-generated method stub
		return moviedao.createactordetails(mvnm);
	}

	public int createtechdetails(MovieDetails mvnm) {
		// TODO Auto-generated method stub
		return moviedao.createtechdetails(mvnm);
	}

	public List<MovieDetails> retrieveactors() {
		// TODO Auto-generated method stub
		return moviedao.retrieveactors();
	}

	public List<MovieDetails> createmovieactorlist(MovieDetails mvnm) {
		// TODO Auto-generated method stub
		return moviedao.createmovieactorlist(mvnm);
	}

	public List<MovieDetails> retrievetechnicians() {
		// TODO Auto-generated method stub
		return moviedao.retrievetechnicians();
	}

	public List<MovieDetails> createmovietechnicianlist(MovieDetails mvnm) {
		// TODO Auto-generated method stub
		return moviedao.createmovietechnicianlist(mvnm);
	}





}
