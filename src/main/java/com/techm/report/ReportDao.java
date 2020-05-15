package com.techm.report;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.techm.bean.MappingRole;
import com.techm.dao.RoleMappingMaper;


@Component
public class ReportDao {
	
	JdbcTemplate jdbcTemplate;
	
	private final String SQL_FIND_deal_report ="SELECT BID_MANAGER,sales_contact_name,pre_sales_contact_name,delivery_manager,effort_estimate_by,customer_name,effort_approved_by,project_id,project_status,Opportunity_Description, Bid_Submission_Date,intimation_to_bid_audit_team,annual_it_spend_of_customer,contract_signed_status,project_duration,project_start_date,Bidding_Competitors,Incumbents,matured_outsourced,baseline,target_price,any_other_bussiness_intl,Onsite_Location,LANGUAGE,rebadging_status,is_prime_sub,location_status,hours_billing_offsource,warranty_period,bank_guarantee,risk_to_techm,pricing_model,additional_cost,discount,any_other_info_for_pricing,sla_probability,delivery_contingency,quote_currency,ba_commission,ANY_OTHER_INFO_FOR_PRICING,Received_from,Received_date,transition FROM `t_dealspecs` dspec INNER JOIN m_project_id_status mpis ON mpis.project_status_id=dspec.project_id_status INNER JOIN m_pricing_model mpm ON mpm.pricing_model_id=dspec.pricing_model_id INNER JOIN `m_quote_currency` mcq ON mcq.quote_currency_id=dspec.currency_quote_id WHERE dspec.bid_details_id=?";
	
	private final String SQL_project_Cost_report="SELECT tower,cost_category,cost_item,cost_type,description,days_year1,days_year2,days_year3,days_year4,days_year5,days_year6,days_year7,days_year8,days_year9,days_year10 FROM project_costs pc INNER JOIN m_tower mt ON mt.tower_id=pc.tower_id INNER JOIN m_cost_category mcc ON mcc.cost_category_id=pc.cost_category_id INNER JOIN m_cost_item mci ON mci.cost_item_id=pc.cost_item_id INNER JOIN m_cost_type mct ON mct.cost_type_id=pc.cost_type_id WHERE dl_id=? AND time_stamp=? ORDER BY creation_date DESC";
	
	private final String SQL_rls_report="SELECT tracking_number,project_phase,vertical,tower,sub_tower,role,billable,work_place,location,skill_type,resource_type,band,premises,remarks,days_year1,days_year2,days_year3,days_year4,days_year5,days_year6,days_year7,days_year8,days_year9,days_year10 FROM rls INNER JOIN m_project_phase mpp ON mpp.project_phase_id=rls.project_phase_id INNER JOIN m_vertical mv ON mv.vertical_id=rls.vertical_id INNER JOIN m_tower mt ON mt.tower_id=rls.tower_id INNER JOIN m_billable mb ON mb.billable_id=rls.billable_id INNER JOIN m_work_place mwp ON mwp.work_place_id=rls.work_place_id INNER JOIN m_location ml ON ml.location_id=rls.location_id INNER JOIN m_skill_type mst ON mst.skill_type_id=rls.skill_type_id INNER JOIN m_RESOURCE_type mrt ON mrt.RESOURCE_type_id=rls.RESOURCE_type_id INNER JOIN m_band mba ON mba.band_id=rls.band_id INNER JOIN m_premises mp ON mp.premises_id=rls.premises_id WHERE ds_id=? AND tracking_number=? ORDER BY creation_date DESC";
	
	@Autowired
	public ReportDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	
	}
	
public List<DealSpaceBin> getdealspace(String bidId) {
		
		List<DealSpaceBin> DealSpacList=jdbcTemplate.query(SQL_FIND_deal_report, new DealSpaceReportMaper(),bidId);
		return DealSpacList;
		
	}


public List<ProjectCostBin> getprojectCostById(String dl_id,String timestmp) {
	
	List<ProjectCostBin> projectCostList=jdbcTemplate.query(SQL_project_Cost_report, new ProjectCostReportMaper(), dl_id,timestmp);
	return projectCostList;
	
}


public List<RlsReporttBin> getRlsById(String dl_id,String timestmp) {
	
	List<RlsReporttBin> rlsReporttList=jdbcTemplate.query(SQL_rls_report, new RlsReportMaper(), dl_id,timestmp);
	return rlsReporttList;
	
}


}
