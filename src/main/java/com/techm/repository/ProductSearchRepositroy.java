package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;

import com.techm.entity.ProjectCosts;

 

public interface ProductSearchRepositroy extends JpaRepository<ProjectCosts, Long> {
	
	@Query(value = "SELECT * FROM project_costs WHERE dl_id=:keyword and time_stamp=:keyword1 ",nativeQuery = true)
	public List<ProjectCosts> search(@Param("keyword") String keyword, String keyword1);
	
	@Query(value = "SELECT  * FROM project_costs  WHERE dl_id=:keyword AND time_stamp IS NOT NULL AND dl_id IS NOT NULL GROUP BY time_stamp ORDER BY time_stamp desc ",nativeQuery = true)
	public List<ProjectCosts> searchDlList(@Param("keyword")String keyword);

	@Query(value = "SELECT * FROM project_costs ORDER BY creation_date DESC LIMIT 1",nativeQuery = true)
	public List<ProjectCosts> searchTrack();


}
