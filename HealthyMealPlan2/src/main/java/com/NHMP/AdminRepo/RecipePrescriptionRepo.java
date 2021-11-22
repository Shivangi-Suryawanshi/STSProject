package com.NHMP.AdminRepo;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.NHMP.AdminEntity.RecipePrescriptionEntity;


@Repository
public interface RecipePrescriptionRepo extends CrudRepository<RecipePrescriptionEntity,Integer>{

	public ArrayList<RecipePrescriptionEntity> findByRecipeId(int recipeId);
}
