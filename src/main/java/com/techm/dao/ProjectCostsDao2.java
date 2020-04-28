package com.techm.dao;

import java.util.ArrayList;
import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.techm.entity.DealSpecs;

import com.techm.entity.ProjectCosts;
import com.techm.entity.RLS;
import com.techm.repository.CostCategoryRepository;
import com.techm.repository.CostItemRepository;
import com.techm.repository.CostTypeRepository;

import com.techm.repository.ProductSearchRepositroy;
import com.techm.repository.ProjectCostReviewRepo;
import com.techm.repository.ProjectCostsRepository;
import com.techm.repository.TowerRepository;


@Service
@Transactional
public class ProjectCostsDao2 {

 
	
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
	@Autowired
	ProjectCostReviewRepo preview;
	
 
	 
	 public List<ProjectCosts> findByprojectCostId(String dl_id, String time_stamp) {
			return productSearchRepositroy.search(dl_id,time_stamp);
					
					
		}
	 
	 public List<ProjectCosts> findByprojecTimptList(String dl_id) {
			return productSearchRepositroy.searchDlList(dl_id);
					
					
		}

	public List<ProjectCosts> findCurrentDate() {		
		 List<ProjectCosts> pc =  productSearchRepositroy.searchTrack();			
			return pc;		  
	}

	
	public void updateProjectCostReview(String review,String dl_id, String project_duration ) {
		preview.projectCostReview(review,dl_id, project_duration);
	}
	 
	public void updateProjectCostFreeze( String freeze ,String dl_id, String project_duration) {
		preview.projectCostFreeze(freeze,dl_id, project_duration);
	}
	  
}