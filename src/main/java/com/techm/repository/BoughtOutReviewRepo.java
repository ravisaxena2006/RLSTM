package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.BoughtOuts;

public interface BoughtOutReviewRepo extends JpaRepository<BoughtOuts, Integer> {

	@Modifying
	@Query(value="update bout_table b set b.review =:keyword WHERE dl_id=:keyword1 and project_duration=:keyword2",nativeQuery = true)
	void boughtOutReview(@Param("keyword") String keyword, String keyword1,String keyword2);
	
	@Modifying
	@Query(value="update bout_table b set b.freeze =:keyword WHERE dl_id=:keyword1 and project_duration=:keyword2",nativeQuery = true)
	void boughtOutFreeze(@Param("keyword") String keyword, String keyword1,String keyword2);
}
