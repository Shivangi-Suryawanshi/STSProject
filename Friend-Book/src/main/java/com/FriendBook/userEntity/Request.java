package com.FriendBook.userEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Request {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int senderId;
	private int receiverId;
	private boolean status;
	
	public Request(int senderId, int receiverId, boolean status) {
		super();
		this.senderId = senderId;
		this.receiverId = receiverId;
		this.status = status;
	}

	
	public Request() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getSenderId() {
		return senderId;
	}


	public void setSenderId(int senderId) {
		this.senderId = senderId;
	}


	public int getReceiverId() {
		return receiverId;
	}


	public void setReceiverId(int receiverId) {
		this.receiverId = receiverId;
	}


	public boolean isStatus() {
		return status;
	}


	public void setStatus(boolean status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "Request [id=" + id + ", senderId=" + senderId + ", receiverId=" + receiverId + ", status=" + status
				+ "]";
	}


	
	
	
}
