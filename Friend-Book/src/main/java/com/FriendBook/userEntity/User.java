package com.FriendBook.userEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String fbName;
    private String uname;
    private String email;
    private String password;
    private String dp;
    private  String song;
    private  String place;
    private  String movie;
    private  String book;
    private String followers;
    private String following;
	
	public User(int id, String fbName, String uname, String email, String password, String dp, String song,
			String place, String movie, String book, String followers, String following) {
		super();
		this.id = id;
		this.fbName = fbName;
		this.uname = uname;
		this.email = email;
		this.password = password;
		this.dp = dp;
		this.song = song;
		this.place = place;
		this.movie = movie;
		this.book = book;
		this.followers = followers;
		this.following = following;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFbName() {
		return fbName;
	}
	public void setFbName(String fbName) {
		this.fbName = fbName;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDp() {
		return dp;
	}
	public void setDp(String dp) {
		this.dp = dp;
	}
	public String getSong() {
		return song;
	}
	public void setSong(String song) {
		this.song = song;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getMovie() {
		return movie;
	}
	public void setMovie(String movie) {
		this.movie = movie;
	}
	public String getBook() {
		return book;
	}
	public void setBook(String book) {
		this.book = book;
	}
	public String getFollowers() {
		return followers;
	}
	public void setFollowers(String followers) {
		this.followers = followers;
	}
	public String getFollowing() {
		return following;
	}
	public void setFollowing(String following) {
		this.following = following;
	}
    
	@Override
	public String toString() {
		return "User [id=" + id + ", fbName=" + fbName + ", uname=" + uname + ", email=" + email + ", password="
				+ password + ", dp=" + dp + ", song=" + song + ", place=" + place + ", movie=" + movie + ", book="
				+ book + ", followers=" + followers + ", following=" + following + "]";
	}  
}
