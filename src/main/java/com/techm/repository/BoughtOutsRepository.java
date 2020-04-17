package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.techm.entity.BoughtOuts;


public interface BoughtOutsRepository extends JpaRepository<BoughtOuts,Integer>  {

}
