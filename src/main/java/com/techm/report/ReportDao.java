package com.techm.report;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;


@Component
public class ReportDao {
	
	JdbcTemplate jdbcTemplate;
	
	private final String SQL_FIND_deal_report ="SELECT BID_MANAGER,sales_contact_name,pre_sales_contact_name,delivery_manager,effort_estimate_by,customer_name,effort_approved_by,project_id,project_status,Opportunity_Description, Bid_Submission_Date,intimation_to_bid_audit_team,annual_it_spend_of_customer,contract_signed_status,project_duration,project_statrt_date,Bidding_Competitors,Incumbents,matured_outsourced,baseline,target_price,any_other_bussiness_intl,Onsite_Location,LANGUAGE,rebadging_status,is_prime_sub,location_status,hours_billing_offsource,warranty_period,bank_guarantee,risk_to_techm,pricing_model,additional_cost,discount,any_other_info_for_pricing,sla_probability,delivery_contingency,quote_currency,ba_commission,ANY_OTHER_INFO_FOR_PRICING,Received_from,Received_date,transition FROM `t_dealspecs` dspec INNER JOIN m_project_id_status mpis ON mpis.project_status_id=dspec.project_id_status INNER JOIN m_pricing_model mpm ON mpm.pricing_model_id=dspec.pricing_model_id INNER JOIN `m_quote_currency` mcq ON mcq.quote_currency_id=dspec.currency_quote_id";
	
	@Autowired
	public ReportDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	
	}
	
public List<DealSpaceBin> getdealspace() {
		
		List<DealSpaceBin> DealSpacList=jdbcTemplate.query(SQL_FIND_deal_report, new DealSpaceReportMaper());
		return DealSpacList;
		
	}
}
