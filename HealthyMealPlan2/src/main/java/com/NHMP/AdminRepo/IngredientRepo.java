package com.NHMP.AdminRepo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.NHMP.AdminEntity.IngredientEntity;

@Repository
public interface IngredientRepo extends CrudRepository<IngredientEntity,Integer>{

	public IngredientEntity findByIngredient(String ingredient);
	public IngredientEntity findById(int id);
	
	
	// public userData findById(int id); 
}
