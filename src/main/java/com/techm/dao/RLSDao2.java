/**
 * 
 */
package com.techm.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.techm.repository.RLSReviewRepo;

/**
 * @author Administrator
 *
 */

@Service
@Transactional
public class RLSDao2 {

	@Autowired
	RLSReviewRepo repore;
	
	public void updateRLSReview(String review ,String dl_id) {
		 repore.rlsReview(review,dl_id);
		}
		 
		public void updateRLSFreeze(String freeze,String dl_id) {
			repore.rlsFreeze(freeze,dl_id);
		}
}
