package com.NHMP.AdminEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MealPlanTypeEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String mealPlanName;
	private int mealPlanPrice;
	
	
	public MealPlanTypeEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MealPlanTypeEntity(int id, String mealPlanName, int mealPlanPrice) {
		super();
		this.id = id;
		this.mealPlanName = mealPlanName;
		this.mealPlanPrice = mealPlanPrice;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMealPlanName() {
		return mealPlanName;
	}
	public void setMealPlanName(String mealPlanName) {
		this.mealPlanName = mealPlanName;
	}
	public int getMealPlanPrice() {
		return mealPlanPrice;
	}
	public void setMealPlanPrice(int mealPlanPrice) {
		this.mealPlanPrice = mealPlanPrice;
	}
	@Override
	public String toString() {
		return "MealPlanTypeEntity [id=" + id + ", mealPlanName=" + mealPlanName + ", mealPlanPrice=" + mealPlanPrice
				+ "]";
	}
	
}
