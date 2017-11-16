package cs595.capstone.domain;

import java.util.Date;

public class Cast {
	private String position;
	private String name;
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Cast(String position, String name) {
		super();
		this.position = position;
		this.name = name;
	}
	

}
