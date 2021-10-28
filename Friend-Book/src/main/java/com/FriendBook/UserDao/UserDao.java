package com.FriendBook.UserDao;

import java.util.ArrayList;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.FriendBook.userEntity.userData;

@Repository
public interface UserDao extends CrudRepository<userData,Integer> {

     public ArrayList<userData> findByEmailAndPassword(String email,String password);
     public ArrayList<userData> findByName(String name);
     public userData findById(int id); 
}
