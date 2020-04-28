package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.ProjectCosts;

public interface ProjectCostReviewRepo extends JpaRepository<ProjectCosts, Integer> {

	@Modifying
	@Query(value="update project_costs p set p.review =:keyword WHERE dl_id=:keyword1 and project_duration=:keyword2",nativeQuery = true)
	void projectCostReview(@Param("keyword") String keyword, String keyword1,String keyword2);
	
	@Modifying
	@Query(value="update project_costs p set p.freeze =:keyword WHERE dl_id=:keyword1 and project_duration=:keyword2",nativeQuery = true)
	void projectCostFreeze(@Param("keyword") String keyword, String keyword1,String keyword2);
}
