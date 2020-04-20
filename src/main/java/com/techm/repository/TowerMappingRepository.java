package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.ProjectCosts;
import com.techm.entity.Tower;
import com.techm.entity.TowerMapping;

public interface TowerMappingRepository extends JpaRepository<TowerMapping,Integer> 
{
	@Query(value = "SELECT * FROM t_tower_mapping WHERE bid_id=:keyword ",nativeQuery = true)
	public List<TowerMapping> search(@Param("keyword") String keyword);
}
