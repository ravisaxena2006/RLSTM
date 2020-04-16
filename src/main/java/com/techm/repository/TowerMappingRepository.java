package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.Tower;
import com.techm.entity.TowerMapping;

public interface TowerMappingRepository extends JpaRepository<TowerMapping,Integer> 
{
	List<TowerMapping> findAllByBidId(int id);
}
