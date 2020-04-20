package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.TowerMapping;
import com.techm.entity.VerticalMapping;

public interface VerticalMappingRepository extends JpaRepository<VerticalMapping,Integer> 
{
	@Query(value = "SELECT * FROM t_vertical_mapping WHERE bid_id=:keyword ",nativeQuery = true)
	public List<VerticalMapping> search(@Param("keyword") String keyword);
}
