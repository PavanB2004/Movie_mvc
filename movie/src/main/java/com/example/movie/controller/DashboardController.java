package com.example.movie.controller;

import com.example.movie.Entity.Movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/tktbooking")
public class DashboardController {

    @Autowired
    private com.example.movie.Service.MovieService movieService;

    @GetMapping("/dashboard")
    public String viewDashboard(Model model) {
        // Fetch the list of movies and pass it to the view
        List<Movie> movies = movieService.getAllMovies();
        model.addAttribute("movies", movies);
        return "dashboard"; // Name of the dashboard JSP
    }

    @GetMapping("/movie/{movieId}")
    public String viewMovieProfile(@PathVariable int movieId, Model model) {
        // Fetch movie details by movieId
        Movie movie = movieService.getMovieById(movieId);
        model.addAttribute("movie", movie);
        return "movieprofile"; // Name of the movie profile JSP
    }
}

