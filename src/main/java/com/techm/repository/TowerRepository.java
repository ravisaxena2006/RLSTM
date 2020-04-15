package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.Tower;

public interface TowerRepository extends JpaRepository<Tower,Integer> 
{

}