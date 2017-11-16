package cs595.capstone.dao.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.RowMapper;

import com.alibaba.fastjson.JSON;

import cs595.capstone.domain.Cast;
import cs595.capstone.domain.Group;
import cs595.capstone.domain.Movie;
import cs595.capstone.domain.User;

public class MovieRowMapper implements RowMapper<Movie> {

	public Movie mapRow(ResultSet resultSet, int row) throws SQLException {

		String movieName;
		String imgPath;
		String category;
		double length;
		double price;
		String breifIntro;
		double rate;
		 List<String> photos;
		 Date onScreenTime;
		 List<String> castlist;
		Map<String,List> castMap;
		movieName = resultSet.getString("name");
		length = resultSet.getDouble("duration");
		category = resultSet.getString("category");
		imgPath = resultSet.getString("banner_img");
		price = resultSet.getDouble("price");
		breifIntro= resultSet.getString("overview");
		Movie movie= new Movie( movieName, imgPath, category, length, price, breifIntro);
		movie.setMovieId(resultSet.getInt("id"));
		movie.setPhotos(Arrays.asList(resultSet.getString("single_img").split(",")));
		castMap=new HashMap<String, List>();
		castMap.put("director", Arrays.asList(resultSet.getString("director").split(",")));
		castMap.put("writer", Arrays.asList(resultSet.getString("writer").split(",")));

		castMap.put("cast", Arrays.asList(resultSet.getString("cast").split(",")));
		
		
		movie.setRating(resultSet.getDouble("rate"));
		movie.setCastMap(castMap);
		onScreenTime=resultSet.getDate("on_screen_time");
		movie.setOnScreenTime(onScreenTime);
		return movie;
	}

}
