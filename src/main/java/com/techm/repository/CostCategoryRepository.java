package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.CostCategory;

public interface CostCategoryRepository extends JpaRepository<CostCategory,Integer> 
{

}
