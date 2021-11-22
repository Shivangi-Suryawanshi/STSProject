package com.NHMP.AdminService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.NHMP.AdminEntity.RecipePrescriptionEntity;
import com.NHMP.AdminRepo.RecipePrescriptionRepo;

@Component
public class RecipePrescriptionService {
	
	@Autowired
	RecipePrescriptionRepo recipePrescriptionRepo;
	
	public void saveRecipePrescription(int recipeid,String prescription) {
		RecipePrescriptionEntity recipePrescriptionEntity=new RecipePrescriptionEntity();
		recipePrescriptionEntity.setRecipeId(recipeid);
		recipePrescriptionEntity.setPrescription(prescription);
		recipePrescriptionRepo.save(recipePrescriptionEntity);
	}
	
	public ArrayList<RecipePrescriptionEntity> getRecipePrescription(int recipeid){
		ArrayList<RecipePrescriptionEntity> rp=	recipePrescriptionRepo.findByRecipeId(recipeid);
	return rp;
	}
	
}
