package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.ResourceType;



public interface ResourceTypeRepository extends JpaRepository<ResourceType,Integer> 
{

}
