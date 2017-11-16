package cs595.capstone.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import cs595.capstone.dao.MovieDAO;
import cs595.capstone.domain.Movie;

public interface MovieService {

	public List<Movie> getTopRecentMovieList();
	public List<Movie> getTopRatedMovieList();
	public Movie getOneForSinglePage(int id);
	
}
