package com.NHMP.AdminService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.NHMP.AdminEntity.MealPlanTypeDetailEntity;
import com.NHMP.AdminEntity.RecipeEntity;
import com.NHMP.AdminRepo.MealPlanTypeDetailRepo;

@Component
public class MealPlanTypeDetailService {
    @Autowired
    MealPlanTypeDetailRepo mealPlanTypeDetailRepo;
    @Autowired
    RecipeService recipeService;
    public void saveMealPlanTypeDetail(MealPlanTypeDetailEntity obj){
    	mealPlanTypeDetailRepo.save(obj);
    }
    
    public ArrayList<RecipeEntity> getRecipeDetail(int forDay,int forMealType,int mealPlanTypeId) {
    	ArrayList<MealPlanTypeDetailEntity>ed=mealPlanTypeDetailRepo.findByForDayAndForMealTypeAndMealPlanTypeId(forDay, forMealType, mealPlanTypeId);	
      ArrayList<RecipeEntity> recipes=new ArrayList<RecipeEntity>();
    	for(MealPlanTypeDetailEntity e:ed) {
    		RecipeEntity recipeEntity=recipeService.getrecipe(e.getRecipeId());
    		recipes.add(recipeEntity);
    }
    	return recipes; 
    }
}
