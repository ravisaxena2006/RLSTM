package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.techm.entity.Premises;

public interface PremisesRepository extends JpaRepository<Premises,Integer> 
{
	Premises findFirstByPremisesId(int id);
}
