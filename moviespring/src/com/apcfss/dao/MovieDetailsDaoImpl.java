package com.apcfss.dao;

import java.sql.ResultSet;


import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.apcfss.model.MovieDetails;

@Repository("moviedao")
public class MovieDetailsDaoImpl implements MovieDetailsDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	public boolean createMovie(MovieDetails mvnm) {
		String sql="INSERT INTO public.springmovienames(moviename, category, budget, status, releasedate, language) VALUES('"+mvnm.getMoviename()+"', '"+mvnm.getCategory()+"', '"+mvnm.getBudget()+"', '"+mvnm.getStatus()+"', '"+mvnm.getReleasedate()+"', '"+mvnm.getLanguage()+"')";
		int createresult = jdbcTemplate.update(sql);
		System.out.println("sql:"+sql);System.out.println("result---"+createresult);
		if(createresult>0){
			System.out.println("success");
			return true;
		}else{
			System.out.println("failure");
		return false;
		}
	}

	public List<MovieDetails> retrieveMovies() {
		 return jdbcTemplate.query("select * from public.springmovienames",new RowMapper<MovieDetails>(){    
		        public MovieDetails mapRow(ResultSet rs, int row) throws SQLException {    
		        	MovieDetails e=new MovieDetails();    
		            e.setMoviename(rs.getString(1));    
		            e.setCategory(rs.getString(2));    
		            e.setBudget(rs.getInt(3));    
		            e.setStatus(rs.getString(4)); 
		            e.setReleasedate(rs.getString(5));  
		            e.setLanguage(rs.getString(6));   
		            e.setMid(rs.getInt(7));
		            return e;    
		        }    
		    });  
	}

	public int createactordetails(MovieDetails mvnm) {
		String sql="INSERT INTO public.springactordetails(actorname, charecter, renumeration, actorlanguage) VALUES('"+mvnm.getActorname()+"', '"+mvnm.getCharecter()+"', '"+mvnm.getRenumeration()+"', '"+mvnm.getActorlanguage()+"')";
		int createresult = jdbcTemplate.update(sql);
		System.out.println("sql:"+sql);System.out.println("resultactorquery---"+createresult);
		if(createresult>0){
			System.out.println("success");
		
		}else{
			System.out.println("failure");

		}
		return createresult;
	}

	public int createtechdetails(MovieDetails mvnm) {
		String sql="INSERT INTO public.springtechnician(techname, work, renumeration, qualification) VALUES('"+mvnm.getTechname()+"', '"+mvnm.getWork()+"', '"+mvnm.getTechrenumeration()+"', '"+mvnm.getQualification()+"')";
		int createresult = jdbcTemplate.update(sql);
		System.out.println("sql:"+sql);System.out.println("resulttechquery---"+createresult);
		if(createresult>0){
			System.out.println("success");
		
		}else{
			System.out.println("failure");

		}
		return createresult;
	}

	public List<MovieDetails> retrieveactors() {
		 return jdbcTemplate.query("SELECT * FROM public.springactordetails",new RowMapper<MovieDetails>(){    
		        public MovieDetails mapRow(ResultSet rs, int row) throws SQLException {    
		        	MovieDetails e=new MovieDetails();    
		            e.setActorname(rs.getString(1));    
		            e.setCharecter(rs.getString(2));    
		            e.setRenumeration(rs.getInt(3));    
		            e.setActorlanguage(rs.getString(4)); 
		            e.setAid(rs.getInt(5));
		            return e;    
		        }    
		    });  
	}

	public List<MovieDetails> createmovieactorlist(MovieDetails mvnm) {
		System.out.println("checking mid--------"+mvnm.getMid());
		 return jdbcTemplate.query("select ti.actorname,ti.charecter,t.mid,t.moviename,t.category  from springmovienames as t,springactordetails as ti where (t.mid=ti.id) and t.mid="+mvnm.getMid(),new RowMapper<MovieDetails>(){    
		        public MovieDetails mapRow(ResultSet rs, int row) throws SQLException {    
		        	MovieDetails e=new MovieDetails();    
		            
		            e.setActorname(rs.getString(1));    
		            e.setCharecter(rs.getString(2));   
		            e.setMid(rs.getInt(3)) ;
		            e.setMoviename(rs.getString(4)); 
		            e.setCategory(rs.getString(5));  
		            return e;    
		        }    
		    });  
	}

	public List<MovieDetails> retrievetechnicians() {
		 return jdbcTemplate.query("SELECT * FROM public.springtechnician",new RowMapper<MovieDetails>(){    
		        public MovieDetails mapRow(ResultSet rs, int row) throws SQLException {    
		        	MovieDetails e=new MovieDetails();    
		            e.setTechname(rs.getString(1));    
		            e.setWork(rs.getString(2));    
		            e.setTechrenumeration(rs.getInt(3));    
		            e.setQualification(rs.getString(4)); 
		            e.setTid(rs.getInt(5));
		            return e;    
		        }    
		    }); 
	}

	public List<MovieDetails> createmovietechnicianlist(MovieDetails mvnm) {
		System.out.println("checking mid--------"+mvnm.getMid());
		 return jdbcTemplate.query("select ti.techname,ti.work,ti.renumeration,ti.qualification,t.mid,t.moviename,t.category ,t.budget,t.status,t.releasedate,t.language from springmovienames as t,springtechnician as ti where (t.mid=ti.tid) and t.mid="+mvnm.getMid(),new RowMapper<MovieDetails>(){    
		        public MovieDetails mapRow(ResultSet rs, int row) throws SQLException {    
		        	MovieDetails e=new MovieDetails();    
		            
		            e.setTechname(rs.getString(1));    
		            e.setWork(rs.getString(2)); 
		            e.setTechrenumeration(rs.getInt(3));
		            e.setQualification(rs.getString(4));
		            e.setMid(rs.getInt(5)) ;
		            e.setMoviename(rs.getString(6)); 
		            e.setCategory(rs.getString(7));  
		            e.setBudget(rs.getInt(8));  
		            e.setStatus(rs.getString(9));  
		            e.setReleasedate(rs.getString(10));  
		            e.setLanguage(rs.getString(11));  
		            return e;    
		        }    
		    });  
	}

}
