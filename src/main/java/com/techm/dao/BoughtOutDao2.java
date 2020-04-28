package com.techm.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.techm.repository.BoughtOutReviewRepo;

@Service
@Transactional
public class BoughtOutDao2  {

	@Autowired
	BoughtOutReviewRepo repore;
	
	 public void updateBoughtOutReview(String review ,String dl_id, String project_duration) {
		 repore.boughtOutReview(review,dl_id, project_duration);
		}
		 
		public void updateBoughtOutFreeze(String freeze,String dl_id, String project_duration) {
			repore.boughtOutFreeze(freeze,dl_id, project_duration);
		}
		  
}
