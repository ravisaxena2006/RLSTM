package com.techm.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.techm.entity.CostCategory;
import com.techm.entity.CostItem;
import com.techm.entity.CostType;
import com.techm.entity.DealSpecs;
import com.techm.entity.ProjectCosts;
import com.techm.entity.Tower;
import com.techm.repository.CostCategoryRepository;
import com.techm.repository.CostItemRepository;
import com.techm.repository.CostTypeRepository;
import com.techm.repository.ProductSearchRepositroy;
import com.techm.repository.ProjectCostsRepository;
import com.techm.repository.TowerRepository;


@Repository
public class ProjectCostsDao {

	@Autowired
	ProjectCostsRepository repo;
	
	@Autowired
	ProductSearchRepositroy productSearchRepositroy;
	
	
	@Autowired
	TowerRepository towerRepository;
	@Autowired
	CostCategoryRepository costCategoryRepository;
	@Autowired
	CostItemRepository costItemRepository;
	@Autowired
	CostTypeRepository costTypeRepository;
	
	
	
	 public void add(List<ProjectCosts> projectCosts) {
	    	System.out.println("Inside add method ");
			repo.saveAll(projectCosts);
			
	       
}
	 
	 public List<ProjectCosts> findByprojectCostId(String dl_id, String time_stamp) {
			return productSearchRepositroy.search(dl_id,time_stamp);
					
					
		}
	 public List<Tower> getTowerList(){
	        List<Tower> towerList = towerRepository.findAll();
	        return towerList ;
	    }
	  
	 public List<CostCategory> getCostCategoryList(){
	        List<CostCategory> costCategory = costCategoryRepository.findAll();
	        return costCategory ;
	    }
	 
	 public List<CostItem> getCostItemList(){
	        List<CostItem> costItemList = costItemRepository.findAll();
	        return costItemList ;
	    }
	 
	 public List<CostType> getCostTypeList(){
	        List<CostType> costType = costTypeRepository.findAll();
	        return costType ;
	    }
	 
}