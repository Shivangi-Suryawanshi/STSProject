package com.FriendBook.userService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.FriendBook.UserDao.LikeCommentDao;
import com.FriendBook.userEntity.LikeCommentOnPost;

@Component
public class LikeCommentService {
    @Autowired
	LikeCommentDao likeCommentDao;
    
    public void like(LikeCommentOnPost likeCommentOnPost) {
    	likeCommentDao.save(likeCommentOnPost);
    	
    }
    
    public ArrayList<LikeCommentOnPost> getComment(int postid)
    {
    	ArrayList<LikeCommentOnPost> a=likeCommentDao.findByPostid(postid);
    	return a;
    }
	
}
