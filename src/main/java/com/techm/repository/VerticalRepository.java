package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.Band;
import com.techm.entity.Tower;
import com.techm.entity.Vertical;

public interface VerticalRepository extends JpaRepository<Vertical,Integer> 
{
	Vertical findFirstByVerticalId(int id);
	List<Vertical> findByVerticalIdIn(List<Integer> id);
}