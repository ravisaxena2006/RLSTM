package com.techm.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.techm.repository.DealSpecsAcessRepo;

@Service
@Transactional
public class DealSpecsAcessDao {

	@Autowired
	DealSpecsAcessRepo accsrepo;
	

	public void updateReviewOn(String dl_id) {
		accsrepo.onReview(dl_id);
		}
		 
		public void updateFreezeOn(String dl_id) {
			accsrepo.onFreeze(dl_id);
		}
		
		public void updateReviewOff(String dl_id) {
			accsrepo.offReview(dl_id);
			}
			 
			public void updateFreezeOff(String dl_id) {
				accsrepo.offFreeze(dl_id);
			}
			
			
			
}
