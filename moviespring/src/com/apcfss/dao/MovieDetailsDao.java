package com.apcfss.dao;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import com.apcfss.model.MovieDetails;

public interface MovieDetailsDao {
	
	public boolean createMovie(MovieDetails mvnm);

	public List<MovieDetails> retrieveMovies();


	public int createactordetails(MovieDetails mvnm);

	public int createtechdetails(MovieDetails mvnm);

	public List<MovieDetails> retrieveactors();

	public List<MovieDetails> createmovieactorlist(MovieDetails mvnm);

	public List<MovieDetails> retrievetechnicians();

	public List<MovieDetails> createmovietechnicianlist(MovieDetails mvnm);



}
