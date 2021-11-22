package com.NHMP.AdminRepo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.NHMP.AdminEntity.MealPlanTypeEntity;
@Repository
public interface MealPlanTypeRepo extends CrudRepository<MealPlanTypeEntity,Integer>{

	public MealPlanTypeEntity findByMealPlanName(String mealPlanName);
}
