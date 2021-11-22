package com.NHMP.AdminService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.NHMP.AdminEntity.IngredientEntity;
import com.NHMP.AdminEntity.RecipeEntity;
import com.NHMP.AdminRepo.RecipeRepo;

@Component
public class RecipeService {
    @Autowired
	RecipeRepo recipeRepo;
    public RecipeEntity saverecipe(RecipeEntity recipeEntity) {
    	recipeRepo.save(recipeEntity);
    	RecipeEntity recipeEntitynew=recipeRepo.findByRecipen(recipeEntity.getRecipen());
    return recipeEntitynew;
    }
    
    public RecipeEntity checkrecipe(String recipename) {
    	RecipeEntity recipeEntity=recipeRepo.findByRecipen(recipename);
    	return recipeEntity;
    }
    
    public void removerecipe(RecipeEntity recipeEntity) {
    	recipeRepo.delete(recipeEntity);
		
	}
    
    public ArrayList<RecipeEntity> getallrecipe(){
    	ArrayList<RecipeEntity> recipeEntity=(ArrayList<RecipeEntity>) recipeRepo.findAll();
    	return recipeEntity;
    }
    
    public RecipeEntity getrecipe(int recipeid) {
    	RecipeEntity recipeEntity=recipeRepo.findById(recipeid);
    	return recipeEntity;
    }
    
    public RecipeEntity getrecipeByName(String recipename) {
    	RecipeEntity recipeEntity=recipeRepo.findByRecipen(recipename);
    	return recipeEntity;
    } 
	
}
