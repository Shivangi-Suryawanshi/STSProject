package com.NHMP.AdminEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RecipeIngredientEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int recipeId;
	private int ingredientId;
	public RecipeIngredientEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RecipeIngredientEntity(int id, int recipeId, int ingredientId) {
		super();
		this.id = id;
		this.recipeId = recipeId;
		this.ingredientId = ingredientId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRecipeId() {
		return recipeId;
	}
	public void setRecipeId(int recipeId) {
		this.recipeId = recipeId;
	}
	public int getIngredientId() {
		return ingredientId;
	}
	public void setIngredientId(int ingredientId) {
		this.ingredientId = ingredientId;
	}
	@Override
	public String toString() {
		return "RecipeIngredientEntity [id=" + id + ", recipeId=" + recipeId + ", ingredientId=" + ingredientId + "]";
	}
	
	
}
