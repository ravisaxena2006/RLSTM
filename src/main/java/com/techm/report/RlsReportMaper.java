package com.techm.report;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.techm.bean.MappingRole;
import com.techm.bean.RoleAccess;

public class RlsReportMaper implements RowMapper<RlsReporttBin> {
	
	
	
 

	@Override
	public RlsReporttBin mapRow(ResultSet resultSet, int arg1) throws SQLException {
		RlsReporttBin mapping = new RlsReporttBin();
		
		mapping.setTracking_number(resultSet.getString("tracking_number"));
		mapping.setProject_phase(resultSet.getString("project_phase"));
		mapping.setVertical(resultSet.getString("vertical"));
		mapping.setTower(resultSet.getString("tower"));
		mapping.setSub_tower(resultSet.getString("sub_tower"));
		
		mapping.setRole(resultSet.getString("role"));
		mapping.setBillable(resultSet.getString("billable"));
		mapping.setWork_place(resultSet.getString("work_place"));
		mapping.setLocation(resultSet.getString("location"));
		mapping.setSkill_type(resultSet.getString("skill_type"));
		
		mapping.setResource_type(resultSet.getString("resource_type"));
		mapping.setBand(resultSet.getString("band"));
		mapping.setPremises(resultSet.getString("premises"));
		mapping.setRemarks(resultSet.getString("remarks"));
		
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
 
	
