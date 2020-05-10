package com.techm.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.DealSpecs;


public interface DealSpecsRepo extends JpaRepository<DealSpecs, Long> {

	//Optional<DealSpecs> findByDuration(int pROJECT_DURATION);

	DealSpecs findByProjectId(String projectId);
	

}
