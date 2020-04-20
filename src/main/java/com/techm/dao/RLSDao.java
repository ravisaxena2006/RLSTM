package com.techm.dao;

import java.util.ArrayList;
import java.util.Arrays;
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
import com.techm.entity.TowerMapping;
import com.techm.entity.Vertical;
import com.techm.entity.VerticalMapping;
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
import com.techm.repository.TowerMappingRepository;
import com.techm.repository.TowerRepository;
import com.techm.repository.VerticalMappingRepository;
import com.techm.repository.VerticalRepository;
import com.techm.repository.WorkPlaceRepository;
//import com.techm.views.RLSExcelView;
import com.techm.views.RLSExcelView;


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
	@Autowired
	TowerMappingRepository repo12;
	@Autowired
	VerticalMappingRepository repo13;
	
    public void add(List<RLS> rls) {
    	System.out.print("Inside add method ");
		repo.saveAll(rls);
		    
    }
    
    public List<ProjectPhase> getProjectPhase()
    {
      	 List<ProjectPhase> ProjectPhaseList =repo1.findAll();
    	 return ProjectPhaseList;
    }
   
    public String getProjectPhase(int Id) {
    	ProjectPhase projectPhase=repo1.findFirstByProjectPhaseId(Id);
		return(projectPhase.getProjectPhase());
	}
    
    
   
    public List<Vertical> getVerticals(int id)
    {
    	 String str = Integer.toString(id);
     	 List<VerticalMapping> vMList=repo13.search(str);
     	 List<Integer> verticalIdList=new ArrayList<Integer>();
     	 for(VerticalMapping vm:vMList)
     	 {
     		verticalIdList.add(vm.getVerticalId()); 
     	 }
     	 List<Vertical>VerticalList=repo2.findByVerticalIdIn(verticalIdList);
   	 return VerticalList;
   }
    
    
    public String getVertical(int Id) {
    	Vertical vertical=repo2.findFirstByVerticalId(Id);
		return(vertical.getVertical());
	}
    
    public List<Tower> getTowers(int id)
    {
    	String str = Integer.toString(id);
		 List<TowerMapping> tMList=repo12.search(str);
      	 List<Integer> towerIdList=new ArrayList<Integer>();
      	 for(TowerMapping tm:tMList)
      	 {
      		towerIdList.add(tm.getTowerId()); 
      	 }
      	List<Tower>towerList=repo3.findByTowerIdIn(towerIdList);
    	 return towerList;
    }
  
    
    public String getTower(int Id) {
    	Tower tower=repo3.findFirstByTowerId(Id);
		return(tower.getTower());
	}
    
    public List<Billable> getBillable()
    {
      	 List<Billable> billableList=repo4.findAll();
    	 return billableList;
    }
    
    public String getBillable(int Id) {
    	Billable billable=repo4.findFirstByBillableId(Id);
		return(billable.getBillable());
	}
  
    public List<WorkPlace> getWorkPlace()
    {
      	 List<WorkPlace> workPlaceList=repo5.findAll();
      	 return workPlaceList;
    }
    
    
    public String getWorkPlace(int Id) {
    	WorkPlace workPlace=repo5.findFirstByWorkPlaceId(Id);
		return(workPlace.getWorkPlace());
	}
    public List<Location> getLocation()
    {
      	 List<Location> locationList=repo6.findAll();
    	 return locationList;
    }
    
    public String getLocation(int Id) {
    	Location Location=repo6.findFirstByLocationId(Id);
		return(Location.getLocation());
	}
    
    public List<SkillType> getSkillType()
    {
      	 List<SkillType> skillTypeList=repo7.findAll();
    	 return skillTypeList;
    }
    
    public String getSkillType(int Id) {
    	SkillType SkillType=repo7.findFirstBySkillTypeId(Id);
		return(SkillType.getSkillType());
	}
    
    public List<ResourceType> getResourceType()
    {
      	 List<ResourceType> resourceTypeList=repo8.findAll();
    	 return resourceTypeList;
    }
    
    public String getResourceType(int Id) {
    	ResourceType resourceType=repo8.findFirstByResourceTypeId(Id);
		return(resourceType.getResourceType());
	}
    
    public List<Premises> getPremises()
    {
      	 List<Premises> premisesList=repo9.findAll();
    	 return premisesList;
    }
    
    public String getPremises(int Id) {
    	Premises premises=repo9.findFirstByPremisesId(Id);
		return(premises.getPremises());
	}
        
    public List<Band> getBand()
    {
      	 List<Band> bandList=repo10.findAll();
    	 return bandList;
    }
	
    public String getBand(int Id) {
    	Band band=repo10.findFirstByBandId(Id);
		return(band.getBand());
	}
    
	public List<City> getCities() {
		List<City> cities=repo11.findAll();
		return cities;
	}
	public String getCity(int Id) {
		City city=repo11.findFirstByCityId(Id);
		return(city.getCity());
	}
	
	 public List<City> getCities(int locationId)
	    {
	      	 List<City> cityList=repo11.findAllByLocationId(locationId);
	    	 return cityList;
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
	
   	
    public List<RLS> getRLSDetailsLatest(int dl_id) {
		  List <RLS>list=new ArrayList<RLS>();
		RLS rls=  repo.findFirstByDsIdOrderByCreationDateDesc(dl_id);
		if(rls!=null)
		{
		String trackingNumber=rls.getTrackingNumber();
		 list=repo.findByTrackingNumber(trackingNumber);
	  }
			
		return list;
	  }
	  
	  
	public List<RLSExcelView> getRLSExcelViewDetails(int dl_id) {
	 List <RLS>list=new ArrayList<RLS>();
   	RLS rls=  repo.findFirstByDsIdOrderByCreationDateDesc(dl_id);
	if(rls!=null)
	{
	String trackingNumber=rls.getTrackingNumber();
	 list=repo.findByTrackingNumber(trackingNumber);
	}
	int listSize=list.size();
	RLSExcelView RLSViewDetails[]=new RLSExcelView[listSize];
	System.out.println("List Size: "+listSize);
	//RLS rlsDetails[] =(RLS[])(list.toArray());
		
	int i=0;
	for(RLS rls1:list)
	{
		RLSViewDetails[i]=new RLSExcelView();
		String p=getProjectPhase(rls1.getProjectPhaseId());
		System.out.println("project phase: "+RLSViewDetails[i]);
		if(RLSViewDetails[i]!=null)
		{
		RLSViewDetails[i].setProjectPhase(p);
		}
		RLSViewDetails[i].setVertical(getVertical(rls1.getVerticalId()));
		RLSViewDetails[i].setTower(getTower(rls1.getTowerId()));
		RLSViewDetails[i].setSubTower(rls1.getSubTower());
		RLSViewDetails[i].setRole(rls1.getRole());
		RLSViewDetails[i].setBillable(getBillable(rls1.getBillableId()));
		RLSViewDetails[i].setWorkPlace(getWorkPlace(rls1.getWorkPlaceId()));
		RLSViewDetails[i].setLocation(getLocation(rls1.getLocationId()));
		RLSViewDetails[i].setCity(getCity(rls1.getCityId()));
		RLSViewDetails[i].setSkillType(getSkillType(rls1.getSkillTypeId()));
		RLSViewDetails[i].setResourceType(getResourceType(rls1.getResourceTypeId()));
		RLSViewDetails[i].setBand(getBand(rls1.getBandId()));
		RLSViewDetails[i].setPremises(getPremises(rls1.getPremisesId()));
		RLSViewDetails[i].setRemarks(rls1.getRemarks());
		RLSViewDetails[i].setDaysYear1(rls1.getDaysYear1());
		RLSViewDetails[i].setDaysYear2(rls1.getDaysYear2());
		RLSViewDetails[i].setDaysYear3(rls1.getDaysYear3());
		RLSViewDetails[i].setDaysYear4(rls1.getDaysYear4());
		RLSViewDetails[i].setDaysYear5(rls1.getDaysYear5());
		RLSViewDetails[i].setDaysYear6(rls1.getDaysYear6());
		RLSViewDetails[i].setDaysYear7(rls1.getDaysYear7());
		RLSViewDetails[i].setDaysYear8(rls1.getDaysYear8());
		RLSViewDetails[i].setDaysYear9(rls1.getDaysYear9());
		RLSViewDetails[i].setDaysYear10(rls1.getDaysYear10());
		RLSViewDetails[i].setTotal(rls1.getTotal());
		i++;
	}

	 List<RLSExcelView> list1=Arrays.asList(RLSViewDetails);
	return list1;
  }

	

	 
	
}
