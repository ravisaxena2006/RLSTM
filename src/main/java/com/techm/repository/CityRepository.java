package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.techm.entity.City;
import com.techm.entity.RLS;


public interface CityRepository extends JpaRepository<City,Integer> 
{

	/*
	  @Query("Select city from City where locationId=?1")
	   public List<String> findCities(int id);
	 */
	
		List<City> findAllByLocationId(int id);
		
		String findCityByCityId(int id);
}
