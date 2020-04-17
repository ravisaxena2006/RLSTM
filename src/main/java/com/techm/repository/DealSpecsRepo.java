package com.techm.repository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techm.entity.DealSpecs;


public interface DealSpecsRepo extends JpaRepository<DealSpecs, Long> {

	//Optional<DealSpecs> findByDuration(int pROJECT_DURATION);

	//DealSpecs findBySpecs(String project_id);

}
