package com.NHMP.AdminRepo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.NHMP.AdminEntity.RecipeEntity;

@Repository
public interface RecipeRepo extends CrudRepository<RecipeEntity,Integer>{

	public RecipeEntity findByRecipen(String recipen);
	public RecipeEntity findById(int recipeid);
	
}
