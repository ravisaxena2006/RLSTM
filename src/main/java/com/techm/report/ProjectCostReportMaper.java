package com.techm.report;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.techm.bean.MappingRole;
import com.techm.bean.RoleAccess;

public class ProjectCostReportMaper implements RowMapper<ProjectCostBin> {
	
	
	
 

	@Override
	public ProjectCostBin mapRow(ResultSet resultSet, int arg1) throws SQLException {
		ProjectCostBin mapping = new ProjectCostBin();
		
		mapping.setTower(resultSet.getString("tower"));
		mapping.setCost_category(resultSet.getString("cost_category"));
		mapping.setCost_item(resultSet.getString("cost_item"));
		mapping.setCost_type(resultSet.getString("cost_type"));
		mapping.setDescription(resultSet.getString("description"));
		mapping.setDays_year1(resultSet.getString("days_year1"));
		mapping.setDays_year2(resultSet.getString("days_year2"));
		mapping.setDays_year3(resultSet.getString("days_year3"));
		mapping.setDays_year4(resultSet.getString("days_year4"));
		mapping.setDays_year5(resultSet.getString("days_year5"));
		mapping.setDays_year6(resultSet.getString("days_year6"));
		mapping.setDays_year7(resultSet.getString("days_year7"));
		mapping.setDays_year8(resultSet.getString("days_year8"));
		mapping.setDays_year9(resultSet.getString("days_year9"));
		mapping.setDays_year10(resultSet.getString("days_year10"));
	
		
				return mapping;
	}


}
 
	
