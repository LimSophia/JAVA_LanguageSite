package servlet;

import java.io.Serializable;


public class GreetingBean implements Serializable {
	private String message;
	private String username;
	
	public String getmessage() {
		return message;
	}
	
	public void setmessage(String message) {
		this.message = message;
	}
	
	public String getusername() {
		return username;
	}
	
	public void setusername(String username) {
		this.username = username;
	}
}
