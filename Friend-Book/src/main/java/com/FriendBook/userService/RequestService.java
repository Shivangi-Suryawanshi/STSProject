package com.FriendBook.userService;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.FriendBook.UserDao.ReqDao;
import com.FriendBook.UserDao.UserDao;
import com.FriendBook.userEntity.Request;
import com.FriendBook.userEntity.userData;

@Component
public class RequestService {

	@Autowired
   ReqDao rd;
	
	
	
	public void dorequest(Request request) {
		rd.save(request);
	}
	
	public void deleteRequest(int sid,int rid) {
		ArrayList<Request> al=rd.findBySenderIdAndReceiverId(sid, rid);
		System.out.println(al);
		for(Request o:al) {
			rd.deleteById(o.getId());
			System.out.println(o.getId());
		}
		}
		
		public boolean doRequestOrNot(int sid,int rid) {
			ArrayList<Request> al=rd.findBySenderIdAndReceiverId(sid, rid);
			System.out.println("myfriend"+al);
			
			
				 ArrayList<Request> myfriend  = rd.findByReceiverIdAndStatus(13, false);
				 System.out.println("~~~~~~~~~~~~~~"+myfriend);
				 System.out.println("~~~~~~~~~~~~~~"+myfriend);
			
			
			
			if(al.isEmpty()) {
				return false;
				}
			else {
				return true;
			}
}
		
		
		public ArrayList<Request> HowManyRequest(int receiverId,boolean status){
			 ArrayList<Request> myfriend  = rd.findByReceiverIdAndStatus(receiverId , status);	
			return myfriend;
		}

		
		public Request acceptReq(int sid,int rid){
			Request rq=null;
					ArrayList<Request> al=rd.findBySenderIdAndReceiverId(sid, rid);
					for(Request o:al) {
						rq=o;
					}
			return rq;
		}
		
		public ArrayList<Request> howManyFriends(int sid,boolean status)
		{
			ArrayList<Request> al = rd.findBySenderIdAndStatus(sid, status);
			return al;
		}
		
		
		
		
		
		
		
		
		
		
		
}
