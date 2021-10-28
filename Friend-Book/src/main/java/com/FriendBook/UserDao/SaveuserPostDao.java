package com.FriendBook.UserDao;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.FriendBook.userEntity.SaveUserPost;

@Repository
public interface SaveuserPostDao extends CrudRepository<SaveUserPost,Integer>{

	
	public ArrayList<SaveUserPost> findByUserid(int userid);
	
	public SaveUserPost findById(int id);
	
	
	
}
