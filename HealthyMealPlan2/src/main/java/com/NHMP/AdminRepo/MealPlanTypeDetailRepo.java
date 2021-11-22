package com.NHMP.AdminRepo;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.NHMP.AdminEntity.MealPlanTypeDetailEntity;

@Repository
public interface MealPlanTypeDetailRepo extends CrudRepository<MealPlanTypeDetailEntity,Integer>{

	
	public ArrayList<MealPlanTypeDetailEntity> findByForDayAndForMealTypeAndMealPlanTypeId(int forDay,int forMealType,int mealPlanTypeId);
}
