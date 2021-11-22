package com.NHMP.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.NHMP.UserEntity.UserEntity;
import com.NHMP.UserRepo.UserRepo;

@Component
public class UserService {
    @Autowired
	UserRepo userRepo;	
public void saveUser(UserEntity userEntity) {
	userRepo.save(userEntity);
}

public UserEntity getUser(String email,String password) {
	UserEntity userEntity=userRepo.findByEmailAndPassword(email,password);
return userEntity;
}
}
