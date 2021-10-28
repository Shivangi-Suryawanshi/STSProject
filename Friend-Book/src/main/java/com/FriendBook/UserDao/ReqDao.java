package com.FriendBook.UserDao;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.FriendBook.userEntity.Request;

@Repository
public interface ReqDao extends CrudRepository<Request,Integer>{

	 public ArrayList<Request> findBySenderId(int senderId);
	 public ArrayList<Request> findBySenderIdAndReceiverId(int senderId,int receiverId);
	 public ArrayList<Request> findByReceiverIdAndStatus(int ReceiverId,boolean status);
	 public ArrayList<Request> findBySenderIdAndStatus(int senderId,boolean status);
}
