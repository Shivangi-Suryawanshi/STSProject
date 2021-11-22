package com.NHMP.AdminEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RecipeEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String recipen;
	private String image;	
	
	public RecipeEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RecipeEntity(int id, String recipen, String image) {
		super();
		this.id = id;
		this.recipen = recipen;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRecipen() {
		return recipen;
	}

	public void setRecipen(String recipen) {
		this.recipen = recipen;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "RecipeEntity [id=" + id + ", recipen=" + recipen + ", image=" + image + "]";
	}
	
	
}
