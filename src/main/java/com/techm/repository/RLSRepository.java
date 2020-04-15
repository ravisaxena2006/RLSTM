package com.techm.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.techm.entity.City;
import com.techm.entity.RLS;

public interface RLSRepository extends JpaRepository<RLS,Integer> 
{

	List<RLS>findByDsId(int id);
	
	List<RLS>findByTrackingNumber(String trackingNo);
		
	@Query("from RLS where dsId=?1 group by trackingNumber order by creationDate desc")
	List<RLS>findByDsIdSorted(int id);
	
	RLS findFirstByDsIdOrderByCreationDateDesc(int id);
	
	
	
	
	
		 
	  
	 
	
}