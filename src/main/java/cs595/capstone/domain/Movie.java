package cs595.capstone.domain;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class Movie {
	private int movieId;
	private String movieName;
	private String imgPath;
	private String category;
	private double length;
	private double price;
	Map<String,List> castMap;
	public Map<String, List> getCastMap() {
		return castMap;
	}
	public void setCastMap(Map<String, List> castMap) {
		this.castMap = castMap;
	}
	public Date getOnScreenTime() {
		return onScreenTime;
	}
	public void setOnScreenTime(Date onScreenTime) {
		this.onScreenTime = onScreenTime;
	}
	public List<Cast> getCastlist() {
		return castlist;
	}
	public void setCastlist(List<Cast> castlist) {
		this.castlist = castlist;
	}
	private String breifIntro;
	private double rating;
	private List<String> photos;
	private Date onScreenTime;
	private List<Cast> castlist;
	public List<String> getPhotos() {
		return photos;
	}
	public void setPhotos(List<String> photos) {
		this.photos = photos;
	}
	public Movie( String movieName, String imgPath, String category, double length, double price,String breifIntro) {

		this.movieName = movieName;
		this.imgPath = imgPath;
		this.category = category;
		this.length = length;
		this.price = price;
		this.breifIntro = breifIntro;
		
	}
	public Movie(String movieName, String category, double length) {
		this.movieName = movieName;
		this.category = category;
		this.length = length;
	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public double getLength() {
		return length;
	}
	public void setLength(double length) {
		this.length = length;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getBreifIntro() {
		return breifIntro;
	}
	public void setBreifIntro(String breifIntro) {
		this.breifIntro = breifIntro;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
}
