package com.example.movie.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.movie.Entity.Movie;



@Repository
public interface MovieRepository extends JpaRepository<Movie, Integer>{
	List<Movie> findAll();
	
	Movie findByMovieId(int movieId);
}
