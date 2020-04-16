package com.techm.repository;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.Tower;


public interface TowerRepository extends JpaRepository<Tower,Integer> 
{
	Tower findFirstByTowerId(int id);
	List<Tower> findByTowerIdIn(Collection<Integer> id);
}