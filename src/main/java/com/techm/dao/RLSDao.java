package com.techm.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.techm.entity.Band;
import com.techm.entity.Billable;
import com.techm.entity.City;
import com.techm.entity.Location;
import com.techm.entity.Premises;
import com.techm.entity.ProjectPhase;
import com.techm.entity.RLS;
import com.techm.entity.ResourceType;
import com.techm.entity.SkillType;
import com.techm.entity.Tower;
import com.techm.entity.Vertical;
import com.techm.entity.WorkPlace;
import com.techm.repository.BandRepository;
import com.techm.repository.BillableRepository;
import com.techm.repository.CityRepository;
import com.techm.repository.LocationRepository;
import com.techm.repository.PremisesRepository;
import com.techm.repository.ProjectPhaseRepository;
import com.techm.repository.RLSRepository;
import com.techm.repository.ResourceTypeRepository;
import com.techm.repository.SkillTypeRepository;
import com.techm.repository.TowerRepository;
import com.techm.repository.VerticalRepository;
import com.techm.repository.WorkPlaceRepository;


@Repository
public class RLSDao {
	
	@Autowired
	RLSRepository repo;
	@Autowired
	ProjectPhaseRepository repo1;
	@Autowired
	VerticalRepository repo2;
	@Autowired
	TowerRepository repo3;
	@Autowired
	BillableRepository repo4;
	@Autowired
	WorkPlaceRepository repo5;
	@Autowired
	LocationRepository repo6;
	@Autowired
	SkillTypeRepository repo7;
	@Autowired
	ResourceTypeRepository repo8;
	@Autowired
	PremisesRepository repo9;
	@Autowired
	BandRepository repo10;
	@Autowired
	CityRepository repo11;
	
    public void add(List<RLS> rls) {
    	System.out.print("Inside add method ");
		repo.saveAll(rls);
		    
    }
    
    public List<ProjectPhase> getProjectPhase()
    {
      	 List<ProjectPhase> ProjectPhaseList =repo1.findAll();
    	 return ProjectPhaseList;
    }
    
    public List<Vertical> getVertical()
    {
      	 List<Vertical> verticalList=repo2.findAll();
    	 return verticalList;
    }
    
    public List<Tower> getTower()
    {
      	 List<Tower> towerList=repo3.findAll();
    	 return towerList;
    }
  

    
    public List<Billable> getBillable()
    {
      	 List<Billable> billableList=repo4.findAll();
    	 return billableList;
    }
  
    public List<WorkPlace> getWorkPlace()
    {
      	 List<WorkPlace> workPlaceList=repo5.findAll();
      	 return workPlaceList;
    }
    public List<Location> getLocation()
    {
      	 List<Location> locationList=repo6.findAll();
    	 return locationList;
    }
    public List<SkillType> getSkillType()
    {
      	 List<SkillType> skillTypeList=repo7.findAll();
    	 return skillTypeList;
    }
    public List<ResourceType> getResourceType()
    {
      	 List<ResourceType> resourceTypeList=repo8.findAll();
    	 return resourceTypeList;
    }
    public List<Premises> getPremises()
    {
      	 List<Premises> premisesList=repo9.findAll();
    	 return premisesList;
    }
    public List<Band> getBand()
    {
      	 List<Band> bandList=repo10.findAll();
    	 return bandList;
    }

	public List<RLS> getRLSDetailsSorted(int dl_id) {
		
		List<RLS> rlsList= repo.findByDsIdSorted(dl_id);
		return rlsList;
	}

	public List<RLS> getRLSDetails(int dl_id) {
		List<RLS> rlsList= repo.findByDsId(dl_id);
		return rlsList;
		
	}

	public List<RLS> getRLSDetails1(String trackingNo) {
		List<RLS> rlsList= repo.findByTrackingNumber(trackingNo);
		return rlsList;
	}
	
    public List<City> getCities(int locationId)
    {
      	 List<City> cityList=repo11.findAllByLocationId(locationId);
    	 return cityList;
    }
	
	  public List<RLS> getRLSDetailsLatest(int dl_id) {;
		  List <RLS>list=new ArrayList<RLS>();
		RLS rls=  repo.findFirstByDsIdOrderByCreationDateDesc(dl_id);
		if(rls!=null)
		{
		String trackingNumber=rls.getTrackingNumber();
		 list=repo.findByTrackingNumber(trackingNumber);
	  }
		return list;
	  }

	public List<City> getCities() {

		List<City> cities=repo11.findAll();
		return cities;
	}
	
	public String getCity(int cityId) {

		String city=repo11.findCityByCityId(cityId);
		return city;
	}
	
	 
	
}
