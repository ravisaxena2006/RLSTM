package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.DealSpecs;

public interface DealSpecsAcessRepo extends JpaRepository<DealSpecs, Long> {

	@Modifying
	@Query(value="update t_dealspecs d set d.review ='y' WHERE BID_DETAILS_ID=:keyword ",nativeQuery = true)
	void onReview(@Param("keyword") String keyword);
	@Modifying
	@Query(value="update t_dealspecs d set d.review ='n' WHERE BID_DETAILS_ID=:keyword ",nativeQuery = true)
	void offReview(@Param("keyword") String keyword);
	
	@Modifying
	@Query(value="update t_dealspecs d set d.freeze ='y' WHERE BID_DETAILS_ID=:keyword ",nativeQuery = true)
	void onFreeze(@Param("keyword") String keyword);
	
	@Modifying
	@Query(value="update t_dealspecs d set d.freeze ='n' WHERE BID_DETAILS_ID=:keyword ",nativeQuery = true)
	void offFreeze(@Param("keyword") String keyword);
}
