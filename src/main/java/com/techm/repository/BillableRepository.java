package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.techm.entity.Billable;


public interface BillableRepository extends JpaRepository<Billable,Integer> 
{

}


