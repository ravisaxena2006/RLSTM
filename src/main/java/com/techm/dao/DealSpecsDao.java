package com.techm.dao;

import java.util.List;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.techm.entity.CurrencyQuote;
import com.techm.entity.DealSpecs;
import com.techm.entity.PricingModel;
import com.techm.entity.ProjectIdStatus;
import com.techm.entity.Tower;
import com.techm.repository.CurrencyQuoteRepo;
import com.techm.repository.DealSpecsRepo;
import com.techm.repository.PricingModelRepo;
import com.techm.repository.ProjectIdStatusRepo;
import com.techm.repository.TowerRepository;

@Repository
public class DealSpecsDao {

	@Autowired
	private DealSpecsRepo dealdao;
	@Autowired
	private CurrencyQuoteRepo cqservice;
	@Autowired
	private PricingModelRepo pmservice;
	@Autowired
	private ProjectIdStatusRepo psservice;
	@Autowired
	TowerRepository towerrepo;
	public List<DealSpecs> findAll() {
		return dealdao.findAll();
	}

	public void add(DealSpecs deals) {
		dealdao.save(deals);
	}

	public DealSpecs findByBidId(Long bID_DETAILS_ID) {
		return dealdao.findById(bID_DETAILS_ID).get();
	}

	// List for "Pricing Model" 
   
    public List<PricingModel> getModelList(){
        List<PricingModel> modelList = pmservice.findAll();
        return modelList ;
    }
	
    // List for "Currency quote" 
   
    public List<CurrencyQuote> getCurrencyList(){
        List<CurrencyQuote> currencyList = cqservice.findAll();    
        return currencyList;
    }
    
    // List for "Project Id Status" 
    
    public List<ProjectIdStatus> getProjectIdList(){
        List<ProjectIdStatus> projectIdList = psservice.findAll();
       
        return projectIdList;
    }
    
    // List of Tower
    public List<Tower> getTower()
    {
      	 List<Tower> towerList=towerrepo.findAll();
    	 return towerList;
    }

}
