package com.NHMP.AdminService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.NHMP.AdminEntity.IngredientEntity;
import com.NHMP.AdminEntity.RecipeIngredientEntity;
import com.NHMP.AdminRepo.RecipeIngredientRepo;

@Component
public class RecipeIngredientService {
    @Autowired
	RecipeIngredientRepo recipeIngredientRepo;
    @Autowired
    IngredientService ingredientService;
    public void saveRecipeIngredient(int recipeid,int ingedientid) {
    	
     RecipeIngredientEntity recipeIngredientEntity=new RecipeIngredientEntity();	
     recipeIngredientEntity.setRecipeId(recipeid); 
     recipeIngredientEntity.setIngredientId(ingedientid);
     recipeIngredientRepo.save(recipeIngredientEntity);
    }
    
    public ArrayList<RecipeIngredientEntity> getRecipeIngredient(String recipeid){
    	ArrayList<RecipeIngredientEntity> al=recipeIngredientRepo.findByRecipeId(Integer.parseInt(recipeid));	    	
    	return al;
    }
    
    public ArrayList<IngredientEntity> getIngredientName(ArrayList<RecipeIngredientEntity> ingredientsid){
    	System.out.println("ingredient ids 2 "+ingredientsid);
    	ArrayList<IngredientEntity> alnew=new ArrayList<>();
    	for(RecipeIngredientEntity i:ingredientsid) {
    		
    		System.out.println("get idssss"+i.getIngredientId());
    		IngredientEntity a=ingredientService.getIngredientName(i.getIngredientId());
    		System.out.println(a);
    		alnew.add(a);
    	}
    	System.out.println("ingre. names = "+alnew);
    	return alnew;
    }
    
    
}
