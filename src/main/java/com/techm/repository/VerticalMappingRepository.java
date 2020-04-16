package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.techm.entity.VerticalMapping;

public interface VerticalMappingRepository extends JpaRepository<VerticalMapping,Integer> 
{
	List<VerticalMapping> findAllByBidId(int id);
}
