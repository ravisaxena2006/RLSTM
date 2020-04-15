package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.WorkPlace;

public interface WorkPlaceRepository extends JpaRepository<WorkPlace,Integer> 
{

}