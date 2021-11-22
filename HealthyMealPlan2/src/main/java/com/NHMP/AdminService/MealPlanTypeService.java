package com.NHMP.AdminService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.NHMP.AdminEntity.MealPlanTypeEntity;
import com.NHMP.AdminRepo.MealPlanTypeRepo;

@Component
public class MealPlanTypeService {
	@Autowired
	MealPlanTypeRepo mealPlanTypeRepo;
	
	public MealPlanTypeEntity savemealplan(String mealplanname,int mealplanprice) {
		MealPlanTypeEntity mealPlanTypeEntity=new MealPlanTypeEntity();	
		mealPlanTypeEntity.setMealPlanName(mealplanname);
		mealPlanTypeEntity.setMealPlanPrice(mealplanprice);
		mealPlanTypeRepo.save(mealPlanTypeEntity);
		MealPlanTypeEntity getmpd=mealPlanTypeRepo.findByMealPlanName(mealplanname);				
		System.out.println(getmpd);
		return getmpd; 
	}
	
	public ArrayList<MealPlanTypeEntity> getAllPlan() {
		ArrayList<MealPlanTypeEntity> mealPlanTypeEntity= (ArrayList<MealPlanTypeEntity>) mealPlanTypeRepo.findAll();
		return mealPlanTypeEntity;
	}
}
