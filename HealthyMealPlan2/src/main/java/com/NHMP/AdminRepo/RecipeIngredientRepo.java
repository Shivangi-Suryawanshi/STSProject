package com.NHMP.AdminRepo;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.NHMP.AdminEntity.RecipeIngredientEntity;

@Repository
public interface RecipeIngredientRepo extends CrudRepository<RecipeIngredientEntity,Integer>{

	public ArrayList<RecipeIngredientEntity> findByRecipeId(int recipeId);
//    public RecipeIngredientEntity findByRecipeIdAndIngredientId(int recipeId,int ingredientId);
}
