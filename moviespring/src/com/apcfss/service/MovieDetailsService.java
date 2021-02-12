package com.apcfss.service;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import com.apcfss.model.MovieDetails;

public interface MovieDetailsService {
	public boolean createMovie(MovieDetails mvnm);

	public List<MovieDetails> retrieveMovies();
	public List<MovieDetails> retrieveactors();
	


	public int createactordetails(MovieDetails mvnm);

	public int createtechdetails(MovieDetails mvnm);



	public List<MovieDetails> createmovieactorlist(MovieDetails mvnm);

	public List<MovieDetails> retrievetechnicians();

	public List<MovieDetails> createmovietechnicianlist(MovieDetails mvnm);

}
