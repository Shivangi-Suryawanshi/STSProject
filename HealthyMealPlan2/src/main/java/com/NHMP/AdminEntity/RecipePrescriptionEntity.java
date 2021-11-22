package com.NHMP.AdminEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RecipePrescriptionEntity {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int recipeId;
	private String prescription;
	public RecipePrescriptionEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RecipePrescriptionEntity(int id, int recipeId, String prescription) {
		super();
		this.id = id;
		this.recipeId = recipeId;
		this.prescription = prescription;
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
	public String getPrescription() {
		return prescription;
	}
	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}
	@Override
	public String toString() {
		return "RecipePrescriptionEntity [id=" + id + ", recipeId=" + recipeId + ", prescription=" + prescription + "]";
	}
	
}
