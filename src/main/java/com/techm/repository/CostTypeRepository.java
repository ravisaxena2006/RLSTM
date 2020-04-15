package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.CostType;


public interface CostTypeRepository extends JpaRepository<CostType,Integer> 
{

}
