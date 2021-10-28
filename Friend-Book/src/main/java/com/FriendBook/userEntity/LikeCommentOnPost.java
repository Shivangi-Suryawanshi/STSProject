package com.FriendBook.userEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class LikeCommentOnPost {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
 private int id;
 private int postid;
 private int userid;
 private boolean like;
 private String Comment;
 private String commentbyname;
 
public LikeCommentOnPost() {
	super();
	// TODO Auto-generated constructor stub
}

public LikeCommentOnPost(int id, int postid, int userid, boolean like, String comment, String commentbyname) {
	super();
	this.id = id;
	this.postid = postid;
	this.userid = userid;
	this.like = like;
	Comment = comment;
	this.commentbyname = commentbyname;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public int getPostid() {
	return postid;
}

public void setPostid(int postid) {
	this.postid = postid;
}

public int getUserid() {
	return userid;
}

public void setUserid(int userid) {
	this.userid = userid;
}

public boolean isLike() {
	return like;
}

public void setLike(boolean like) {
	this.like = like;
}

public String getComment() {
	return Comment;
}

public void setComment(String comment) {
	Comment = comment;
}

public String getCommentbyname() {
	return commentbyname;
}

public void setCommentbyname(String commentbyname) {
	this.commentbyname = commentbyname;
}

@Override
public String toString() {
	return "LikeCommentOnPost [id=" + id + ", postid=" + postid + ", userid=" + userid + ", like=" + like + ", Comment="
			+ Comment + ", commentbyname=" + commentbyname + "]";
}
 
 

}
