package com.NHMP.UserRepo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.NHMP.UserEntity.UserEntity;

@Repository
public interface UserRepo extends CrudRepository<UserEntity,Integer>{

	public UserEntity findByEmailAndPassword(String email,String password);
}
