package com.techm.dao;



import java.util.ArrayList;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.techm.entity.Amortize;
import com.techm.entity.BoughtOuts;
import com.techm.entity.QuoteCurrency;
import com.techm.entity.QuoteExists;
import com.techm.entity.Tower;
import com.techm.entity.TowerMapping;
import com.techm.repository.AmortizeRepository;
import com.techm.repository.BoughtOutsRepository;
import com.techm.repository.BoughtSearchRepositroy;
import com.techm.repository.QuoteCurrencyRepository;
import com.techm.repository.QuoteExistsRepository;
import com.techm.repository.TowerMappingRepository;
import com.techm.repository.TowerRepository;


@Repository
public class BoughtOutsDao {

	@Autowired
	BoughtOutsRepository repo;
	@Autowired
	TowerRepository repo1;
	@Autowired
	AmortizeRepository repo2;
	@Autowired
	QuoteCurrencyRepository repo3;
	@Autowired
	QuoteExistsRepository repo4;
	@Autowired
	BoughtSearchRepositroy brepo;
	@Autowired
	TowerMappingRepository repo5;
	
	
	 public void add(List<BoughtOuts> boughtOuts) {
	    	System.out.println("Inside add method ");
			repo.saveAll(boughtOuts);
	 }
	 public List<BoughtOuts> findAll() {
			return repo.findAll();
		}
	 
	public List<BoughtOuts> findByboughtOutsId(String dlId) { 
		 List<BoughtOuts> list = brepo.findByDlIdSorted(dlId); return list; }
	 
	 public List<BoughtOuts> getBoughtOutDetails(String timestamp){
		 List<BoughtOuts> blist =  brepo.findByTimeStamp(timestamp);
		 return blist;
	 }
	 public List<BoughtOuts> findByboughTimptList(String dl_id) {
			List<BoughtOuts> list = new ArrayList<BoughtOuts>();
			BoughtOuts boughtOuts	=  brepo.findFirstByDlIdOrderByCreationDateDesc(dl_id);
			if(boughtOuts !=null) {
				String timestamp = boughtOuts.getTimeStamp();
				list = brepo.findByTimeStamp(timestamp);
				
			}
			return list;
		}
	 
	 public List<Tower> getTowerList(int id)
	    {
		 String str = Integer.toString(id);
		 List<TowerMapping> tMList=repo5.search(str);
      	 List<Integer> towerIdList=new ArrayList<Integer>();
      	 for(TowerMapping tm:tMList)
      	 {
      		towerIdList.add(tm.getTowerId()); 
      	 }
      	List<Tower>towerList=repo1.findByTowerIdIn(towerIdList);
    	 return towerList;
	    }
	    
	 
	 public List<Amortize> getAmortize()
	    {
	      	 List<Amortize> amortizeList=repo2.findAll();
	    	 return amortizeList;
	    }
	 
	 public List<QuoteCurrency> getQuoteCurrency()
	    {
	      	 List<QuoteCurrency> quoteCurrencyList=repo3.findAll();
	    	 return quoteCurrencyList;
	    }
	 
	 
	 public List<QuoteExists> getQuoteExists()
	    {
	      	 List<QuoteExists> quoteExistsList=repo4.findAll();
	    	 return quoteExistsList;
	    }
	
	
	
}