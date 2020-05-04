package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.DealSpecs;


public interface DealSpecsRepo extends JpaRepository<DealSpecs, Long> {

	//Optional<DealSpecs> findByDuration(int pROJECT_DURATION);

	//DealSpecs findBySpecs(String project_id);
	@Modifying
	@Query(value="update t_dealspecs d set d.received_date=:keyword and d.project_start_date=:keyword1 WHERE project_id=:keyword2 ",nativeQuery = true)
	void updatedeal(@Param("keyword") String keyword,String keyword1,String keyword2);

}
