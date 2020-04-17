package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.techm.entity.PricingModel;

public interface PricingModelRepo extends JpaRepository<PricingModel, Long> {

	//PricingModelDao findByModel(Long PRICING_MODEL_ID);
}
