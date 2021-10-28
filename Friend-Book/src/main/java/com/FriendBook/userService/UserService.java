package com.FriendBook.userService;

import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.FriendBook.UserDao.ReqDao;
import com.FriendBook.UserDao.UserDao;
import com.FriendBook.userController.userController;
import com.FriendBook.userEntity.userData;

import antlr.collections.List;

@Component
public class UserService {
	
	@Autowired
	UserDao userDao;
	public java.util.ArrayList<userData> data;
	
	
		public void doregister(userData userdata) {
		userDao.save(userdata);
		
		
	}
	
	public java.util.ArrayList<userData> login(userData userdata) {		
		 data= userDao.findByEmailAndPassword(userdata.getEmail(), userdata.getPassword());	
		
		 return data;
	}
		
	public java.util.ArrayList<userData> search(String name) {		
		java.util.ArrayList<userData> nameresult= userDao.findByName(name);		
		return nameresult;
	}
	
	
	public userData friendRequestDetail(int id) {		
		userData RequesterDetail = userDao.findById(id);
		return RequesterDetail;
	}

	
}
