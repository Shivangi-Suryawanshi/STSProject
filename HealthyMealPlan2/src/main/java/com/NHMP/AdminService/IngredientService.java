package com.NHMP.AdminService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.NHMP.AdminEntity.IngredientEntity;
import com.NHMP.AdminRepo.IngredientRepo;

@Component
public class IngredientService {
	
	@Autowired
	IngredientRepo ingredientRepo;
	
	public void saveIngredient(IngredientEntity ingredientName){
		
		ingredientRepo.save(ingredientName);
	}
	
	public ArrayList<IngredientEntity> getIngredient(){
		ArrayList<IngredientEntity> al=(ArrayList<IngredientEntity>) ingredientRepo.findAll();
		return al;
	}
	
	public IngredientEntity getIngredientName(int id) {
		System.out.println("ids teken = "+id);
		IngredientEntity ingredientEntity=ingredientRepo.findById(id);
		System.out.println("eeeeeeee = "+ingredientEntity);
		return ingredientEntity; 
	}
	
	public IngredientEntity checkIngredient(String in) {
		System.out.println("ids teken = "+in);
		IngredientEntity ingredientEntity=ingredientRepo.findByIngredient(in);
		System.out.println("sdfghjkl"+ingredientEntity);
		return ingredientEntity; 
	}
	
	public void removeIngredient(IngredientEntity ingredientName) {
		ingredientRepo.delete(ingredientName);	
		
	}
	
	
}
