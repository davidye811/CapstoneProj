package cs595.capstone.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cs595.capstone.dao.MovieDAO;
import cs595.capstone.domain.Movie;
@Service
@Transactional
public class MovieServiceImpl implements MovieService {
	@Autowired
	@Qualifier("movieDaoJdbc")
	private MovieDAO moviedao;
	@Override
	public List<Movie> getTopRatedMovieList() {
		return moviedao.findTopRatedMovie();
	}
	@Override
	public List<Movie> getTopRecentMovieList() {
		return moviedao.findMostRacentMovie();
	}
	@Override
	public Movie getOneForSinglePage(int id) {
		return moviedao.findProdById(id);
	}



}
