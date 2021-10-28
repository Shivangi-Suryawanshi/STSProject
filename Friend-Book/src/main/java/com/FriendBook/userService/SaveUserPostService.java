package com.FriendBook.userService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.FriendBook.UserDao.SaveuserPostDao;
import com.FriendBook.userEntity.SaveUserPost;

@Component
public class SaveUserPostService {
	
	@Autowired
	SaveuserPostDao saveuserpostdao;
	
	public void saveuserpost(SaveUserPost sup)
	{
		saveuserpostdao.save(sup);
	}
	
	public ArrayList<SaveUserPost> getFriendsPost(int frndid){
	            
		ArrayList<SaveUserPost> frndpost =	saveuserpostdao.findByUserid(frndid);
		return frndpost;
	}
	
	public SaveUserPost getPostById(int postid) {
		SaveUserPost s=saveuserpostdao.findById(postid);
		return s;
	}
}
