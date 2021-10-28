package com.FriendBook.userEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SaveUserPost {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int userid;
	private String userpost;
	private int like;
	
	
	public SaveUserPost() {
		super();
	}


	public SaveUserPost(int id, int userid, String userpost, int like) {
		super();
		this.id = id;
		this.userid = userid;
		this.userpost = userpost;
		this.like = like;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}


	public String getUserpost() {
		return userpost;
	}


	public void setUserpost(String userpost) {
		this.userpost = userpost;
	}


	public int getLike() {
		return like;
	}


	public void setLike(int like) {
		this.like = like;
	}


	@Override
	public String toString() {
		return "SaveUserPost [id=" + id + ", userid=" + userid + ", userpost=" + userpost + ", like=" + like + "]";
	}
	
	
	
}
