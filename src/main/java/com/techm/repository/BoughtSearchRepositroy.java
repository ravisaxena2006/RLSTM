package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.BoughtOuts;


public interface BoughtSearchRepositroy extends JpaRepository<BoughtOuts, Integer> {

	List<BoughtOuts>findByDlId(String dlId);

	public List<BoughtOuts> findByTimeStamp(String timestamp);

	public BoughtOuts findFirstByDlIdOrderByCreationDateDesc(String dlId);

	
	  @Query("from BoughtOuts where dlId=?1 group by timeStamp order by creationDate desc") 
	  public List<BoughtOuts> findByDlIdSorted(String dlId);
	 
}
