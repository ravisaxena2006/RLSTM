package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.Band;


public interface BandRepository extends JpaRepository<Band,Integer> 
{

}