package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.techm.entity.QuoteCurrency;

public interface QuoteCurrencyRepository extends JpaRepository<QuoteCurrency,Integer> 
{

}
