package com.techm.bean;

import java.util.ArrayList;
import java.util.List;

import com.techm.entity.ProjectCosts;

public class ProjectCostsList {
	
	  private List<ProjectCosts> projectCost=new ArrayList<>();

	public List<ProjectCosts> getProjectCost() {
		return projectCost;
	}

	public void setProjectCost(List<ProjectCosts> projectCost) {
		this.projectCost = projectCost;
	}

}