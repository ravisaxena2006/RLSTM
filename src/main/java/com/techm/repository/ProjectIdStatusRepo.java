package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techm.entity.ProjectIdStatus;


public interface ProjectIdStatusRepo extends JpaRepository<ProjectIdStatus, Long> {

	//ProjectIdStatus findIdStatus(Long PROJECT_STATUS_ID);
}
