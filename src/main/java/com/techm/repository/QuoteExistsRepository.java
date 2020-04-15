package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.techm.entity.QuoteExists;

public interface QuoteExistsRepository extends JpaRepository<QuoteExists,Integer> 
{

}
