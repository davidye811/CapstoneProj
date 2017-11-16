package cs595.capstone.dao;

import java.util.List;


import cs595.capstone.domain.Movie;

public interface  MovieDAO {
	public int getMovieCount();
	public Movie findProdById(int id);
	public Movie findProdByName(String prodName);
	public void insertMovie(Movie prod);
	public void updateMovie(Movie prod);
	public List<Movie> findTopRatedMovie();
	public List<Movie> findMostRacentMovie();
}
