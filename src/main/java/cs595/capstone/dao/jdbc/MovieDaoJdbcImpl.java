package cs595.capstone.dao.jdbc;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;
import cs595.capstone.dao.*;
import cs595.capstone.domain.Movie;
import edu.npu.courseapp.domain.Student;

@Repository("movieDaoJdbc")
public class MovieDaoJdbcImpl implements MovieDAO {
	@Autowired
	@Qualifier("dataSource")
	private DataSource dataSource;
	
	private JdbcTemplate jdbcTemplate;
	private NamedParameterJdbcTemplate dbTemplate;
	private SimpleJdbcInsert jdbcInsert;
	private MovieRowMapper movieRowMapper;
	@PostConstruct
	public void setup() {
		jdbcTemplate = new JdbcTemplate(dataSource);
		dbTemplate = new NamedParameterJdbcTemplate(dataSource);
		 movieRowMapper= new MovieRowMapper();
		jdbcInsert = new SimpleJdbcInsert(dataSource)
		                 .withTableName("movies")
		                 .usingGeneratedKeyColumns("id")
		                 .usingColumns("name","banner_img","single_img","duration","category","on_screen_time","director","writer","overview","cast","price","rate");
	}
	

	

	



	
	public List<Movie> findAllMovieByCategory(String category) {
		String sql = "SELECT * FROM movie WHERE category = :category";
		MapSqlParameterSource params = new MapSqlParameterSource("category", category);
		List<Movie> matchingMovies = dbTemplate.query(sql, params, movieRowMapper);

		return matchingMovies;
	}


	public int getMovieCount() {
		String sql = "select count(*) FROM movies";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}


	public Movie findProdById(int id) {
		String sql = "SELECT * FROM movies WHERE id = :id";
		MapSqlParameterSource params = new MapSqlParameterSource("id", id);
		
		Movie movie = dbTemplate.queryForObject(sql, params, movieRowMapper);

		return movie;
	}

	public Movie findProdByName(String prodName) {
		String sql = "SELECT * FROM movies WHERE name = :name";
		MapSqlParameterSource params = new MapSqlParameterSource("name", prodName);
		Movie movie= dbTemplate.queryForObject(sql, params, movieRowMapper);

		return movie;
	}

	public void insertMovie(Movie prod) {
		SqlParameterSource params = new BeanPropertySqlParameterSource(prod);
	    Number newId = jdbcInsert.executeAndReturnKey(params);
	    
	    prod.setMovieId(newId.intValue());
	}

	public void updateMovie(Movie prod) {
		// TODO Auto-generated method stub
		
	}









	@Override
	public List<Movie> findTopRatedMovie() {
		String sql = "SELECT  *  from movies order by rate limit 5;";
		List<Movie> topMovieList = dbTemplate.query(sql, movieRowMapper);
		return topMovieList;
		
	}
	@Override
	public List<Movie> findMostRacentMovie() {
		String sql = "SELECT  *  from movies order by on_screen_time limit 3;";
		List<Movie> topMovieList = dbTemplate.query(sql, movieRowMapper);
		return topMovieList;
		
	}













}
