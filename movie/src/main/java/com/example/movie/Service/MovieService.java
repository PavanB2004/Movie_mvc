package com.example.movie.Service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.movie.Entity.Movie;
import com.example.movie.Repository.MovieRepository;



@Service
public class MovieService {
	
	@Autowired
	MovieRepository movieRepository;
	
	public List<Movie> getAllMovies(){
		System.out.println(movieRepository.findAll());
		return movieRepository.findAll();
		
	}
	
	 public Movie getMovieById(int movieId) {
	        return movieRepository.findByMovieId(movieId);
	    }
}
