package com.NHMP.AdminEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MealPlanTypeDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int mealPlanTypeId;
	private int forDay;
	private int forMealType;
	private int recipeId;
	
	public MealPlanTypeDetailEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MealPlanTypeDetailEntity(int id, int mealPlanTypeId, int forDay, int forMealType, int recipeId) {
		super();
		this.id = id;
		this.mealPlanTypeId = mealPlanTypeId;
		this.forDay = forDay;
		this.forMealType = forMealType;
		this.recipeId = recipeId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMealPlanTypeId() {
		return mealPlanTypeId;
	}

	public void setMealPlanTypeId(int mealPlanTypeId) {
		this.mealPlanTypeId = mealPlanTypeId;
	}

	public int getForDay() {
		return forDay;
	}

	public void setForDay(int forDay) {
		this.forDay = forDay;
	}

	public int getForMealType() {
		return forMealType;
	}

	public void setForMealType(int forMealType) {
		this.forMealType = forMealType;
	}

	public int getRecipeId() {
		return recipeId;
	}

	public void setRecipeId(int recipeId) {
		this.recipeId = recipeId;
	}

	@Override
	public String toString() {
		return "MealPlanTypeDetailEntity [id=" + id + ", mealPlanTypeId=" + mealPlanTypeId + ", forDay=" + forDay
				+ ", forMealType=" + forMealType + ", recipeId=" + recipeId + "]";
	}
	
	
}
