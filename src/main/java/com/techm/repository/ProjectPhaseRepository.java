package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.ProjectPhase;

public interface ProjectPhaseRepository extends JpaRepository<ProjectPhase,Integer> 
{
	ProjectPhase findFirstByProjectPhaseId(int id);
}