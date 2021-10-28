package com.FriendBook.UserDao;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.FriendBook.userEntity.LikeCommentOnPost;

@Repository
public interface LikeCommentDao  extends CrudRepository<LikeCommentOnPost,Integer> {

	
	public ArrayList<LikeCommentOnPost> findByPostid(int postid);
}
