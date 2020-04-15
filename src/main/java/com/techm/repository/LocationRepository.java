package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.Location;


public interface LocationRepository extends JpaRepository<Location,Integer> 
{

}