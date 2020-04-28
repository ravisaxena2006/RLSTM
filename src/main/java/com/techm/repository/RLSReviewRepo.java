package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.RLS;

public interface RLSReviewRepo extends JpaRepository<RLS, Integer> {

	@Modifying
	@Query(value="update rls r set r.review =:keyword WHERE ds_id=:keyword1 and project_duration=:keyword2",nativeQuery = true)
	void rlsReview(@Param("keyword") String keyword, String keyword1,String keyword2);
	
	@Modifying
	@Query(value="update rls r set r.freeze =:keyword WHERE ds_id=:keyword1 and project_duration=:keyword2",nativeQuery = true)
	void rlsFreeze(@Param("keyword") String keyword, String keyword1,String keyword2);
}
