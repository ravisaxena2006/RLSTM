package com.techm.dao;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.techm.entity.Amortize;
import com.techm.entity.BoughtOuts;
import com.techm.entity.QuoteCurrency;
import com.techm.entity.QuoteExists;
import com.techm.entity.Tower;
import com.techm.repository.AmortizeRepository;
import com.techm.repository.BoughtOutsRepository;
import com.techm.repository.BoughtSearchRepositroy;
import com.techm.repository.QuoteCurrencyRepository;
import com.techm.repository.QuoteExistsRepository;
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
	
	 public void add(List<BoughtOuts> boughtOuts) {
	    	System.out.println("Inside add method ");
			repo.saveAll(boughtOuts);
	 }
	 public List<BoughtOuts> findAll() {
			return repo.findAll();
		}
	
	 
	 public List<BoughtOuts> findByboughtOutsId(String dl_id, String time_stamp) {
			// TODO Auto-generated method stub
			return brepo.search(dl_id,time_stamp);
		}
		public List<BoughtOuts> findByboughTimptList() {
			// TODO Auto-generated method stub
			return brepo.searchDlList();
		}
	 
	 public List<Tower> getTower()
	    {
	      	 List<Tower> towerList=repo1.findAll();
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