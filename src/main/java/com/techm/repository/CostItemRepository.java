package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.CostItem;

public interface CostItemRepository extends JpaRepository<CostItem,Integer> 
{

}

