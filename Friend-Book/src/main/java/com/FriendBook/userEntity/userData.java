package com.FriendBook.userEntity;

import java.beans.JavaBean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class userData {
   
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String fbName;
	private String name;
	private String email;
	private String password;
	private String dp;
	private String song;
	private String place;
	private String movie;
	private String book;
	private int followers;
	private int following;
	private int post;
	public userData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public userData(int id, String fbName, String name, String email, String password, String dp, String song,
			String place, String movie, String book, int followers, int following, int post) {
		super();
		this.id = id;
		this.fbName = fbName;
		this.name = name;
		this.email = email;
		this.password = password;
		this.dp = dp;
		this.song = song;
		this.place = place;
		this.movie = movie;
		this.book = book;
		this.followers = followers;
		this.following = following;
		this.post = post;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getFollowers() {
		return followers;
	}
	public void setFollowers(int followers) {
		this.followers = followers;
	}
	public int getFollowing() {
		return following;
	}
	public void setFollowing(int following) {
		this.following = following;
	}
	public int getPost() {
		return post;
	}
	public void setPost(int post) {
		this.post = post;
	}
	@Override
	public String toString() {
		return "userData [id=" + id + ", fbName=" + fbName + ", name=" + name + ", email=" + email + ", password="
				+ password + ", dp=" + dp + ", song=" + song + ", place=" + place + ", movie=" + movie + ", book="
				+ book + ", followers=" + followers + ", following=" + following + ", post=" + post + "]";
	}
	
	
}
