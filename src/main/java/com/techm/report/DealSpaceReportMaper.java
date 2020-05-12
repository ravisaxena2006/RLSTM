package com.techm.report;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.techm.bean.MappingRole;
import com.techm.bean.RoleAccess;

public class DealSpaceReportMaper implements RowMapper<DealSpaceBin> {
	
	
	
 

	@Override
	public DealSpaceBin mapRow(ResultSet resultSet, int arg1) throws SQLException {
		DealSpaceBin mapping = new DealSpaceBin();
		
		mapping.setBidManager(resultSet.getString("BID_MANAGER"));
		mapping.setSalescontactname(resultSet.getString("sales_contact_name"));
		mapping.setPresalescontactname(resultSet.getString("pre_sales_contact_name"));
		mapping.setDeliverymanager(resultSet.getString("delivery_manager"));
		mapping.setEffortestimateby(resultSet.getString("effort_estimate_by"));
		mapping.setCustomername(resultSet.getString("customer_name"));
		mapping.setEffortapprovedby(resultSet.getString("effort_approved_by"));
		mapping.setProjectid(resultSet.getString("project_id"));
		mapping.setProjectstatus(resultSet.getString("project_status"));
		mapping.setOpportunityDescription(resultSet.getString("Opportunity_Description"));
		mapping.setBidSubmissionDate(resultSet.getString("Bid_Submission_Date"));
		mapping.setIntimationtobidauditteam(resultSet.getString("intimation_to_bid_audit_team"));
		mapping.setAnnualitspendofcustomer(resultSet.getString("annual_it_spend_of_customer"));
		mapping.setContractsignedstatus(resultSet.getString("contract_signed_status"));
		mapping.setProjectduration(resultSet.getString("project_duration"));
		mapping.setProjectstatrtdate(resultSet.getString("project_statrt_date"));
		mapping.setBiddingCompetitors(resultSet.getString("Bidding_Competitors"));
		mapping.setIncumbents(resultSet.getString("Incumbents"));
		mapping.setMaturedoutsourced(resultSet.getString("matured_outsourced"));
		mapping.setBaseline(resultSet.getString("baseline"));
		mapping.setTargetprice(resultSet.getString("target_price"));
		mapping.setAnyotherbussinessintl(resultSet.getString("any_other_bussiness_intl"));
		mapping.setOnsiteLocation(resultSet.getString("Onsite_Location"));
		mapping.setLANGUAGE(resultSet.getString("LANGUAGE"));
		mapping.setRebadgingstatus(resultSet.getString("rebadging_status"));
		mapping.setIsprimesub(resultSet.getString("is_prime_sub"));
		mapping.setLocationstatus(resultSet.getString("location_status"));
		mapping.setHoursbillingoffsource(resultSet.getString("hours_billing_offsource"));
		mapping.setWarrantyperiod(resultSet.getString("warranty_period"));
		mapping.setBankguarantee(resultSet.getString("bank_guarantee"));
		mapping.setRisktotechm(resultSet.getString("risk_to_techm"));
		mapping.setPricingmodel(resultSet.getString("pricing_model"));
		mapping.setAdditionalcost(resultSet.getString("additional_cost"));
		mapping.setDiscount(resultSet.getString("discount"));
		mapping.setAnyotherinfoforpricing(resultSet.getString("any_other_info_for_pricing"));
		mapping.setSlaprobability(resultSet.getString("sla_probability"));
		mapping.setDeliverycontingency(resultSet.getString("delivery_contingency"));
		mapping.setQuotecurrency(resultSet.getString("quote_currency"));
		mapping.setBacommission(resultSet.getString("ba_commission"));
		mapping.setANYOTHERNFOFORPRICING(resultSet.getString("ANY_OTHER_INFO_FOR_PRICING"));
		mapping.setReceivedfrom(resultSet.getString("Received_from"));
		mapping.setReceiveddate(resultSet.getString("Received_date"));
		mapping.setTransition(resultSet.getString("transition"));
	
				return mapping;
	}


}
 
	
