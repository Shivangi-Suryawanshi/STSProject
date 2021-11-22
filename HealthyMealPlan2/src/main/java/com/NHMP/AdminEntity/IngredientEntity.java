package com.NHMP.AdminEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class IngredientEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String ingredient;
		
	public IngredientEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public IngredientEntity(int id, String ingredient) {
		super();
		this.id = id;
		this.ingredient = ingredient;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIngredient() {
		return ingredient;
	}

	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}

	@Override
	public String toString() {
		return "IngredientEntity [id=" + id + ", ingredient=" + ingredient + "]";
	}

	
	
}
