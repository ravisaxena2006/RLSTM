<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp" />
<div class="container-fluid">
	
		<form:form action="/bidview" method="get" modelattribute="deal">


			<h2 class="text-center">
				<b>Deal Specific Details</b>
			</h2>
	 <div class="row">	
	
			<div class="btn-group pull-left " style="width:1080px">
			<div class="text-right">
			 <a href="/RLS?dsld=${deal.BID_DETAILS_ID}&durayear=${deal.PROJECT_DURATION}" class="btn btn-info">RLS</a>
			 <a href="/ProjectCosts?dsld=${deal.BID_DETAILS_ID}&durayear=${deal.PROJECT_DURATION}" class="btn btn-info">Project Cost</a>
			 <a href="/BoughtOuts?dsld=${deal.BID_DETAILS_ID}&durayear=${deal.PROJECT_DURATION}" class="btn btn-info">Bought-Out</a>
			 </div>
			</div>
</div> 
			<hr>
			<div class="row">

				<div class="col-md-6">

					<label>RM / Bid Manager* </label><br> <input type="text"
						value="${deal.BID_MANAGER}" class="form-control"
						readonly="readonly" required> <label>Sales Contact
						Name*</label><br> <input type="text" name="SALES_CONTACT_NAME"
						value="${ deal.SALES_CONTACT_NAME}" class="form-control"
						readonly="readonly" required> <label>Pre-Sales
						Contact Name*</label><br> <input type="text"
						name="PRE_SALES_CONTACT_NAME"
						value="${deal.PRE_SALES_CONTACT_NAME}" class="form-control"
						readonly="readonly" required>
				</div>
				<div class="col-md-6">

					<label>Delivery Manager*</label><br> <input type="text"
						name="DELIVERY_MANAGER" value="${deal.DELIVERY_MANAGER }"
						class="form-control" readonly="readonly" required> <label>Efforts
						Estimate By* </label><br> <input type="text"
						name="EFFORT_ESTIMATE_BY" value="${deal.EFFORT_ESTIMATE_BY }"
						class="form-control" readonly="readonly" required> <label>Efforts
						Approved By* </label><br> <input type="text"
						name="EFFORT_APPROVED_BY" value="${deal.EFFORT_APPROVED_BY }"
						class="form-control" readonly="readonly" required>
				</div>
			</div>
			<hr>
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse1">Basic</a>
						</h4>
					</div>
					<div id="collapse1" class="panel-collapse collapse">
						<div class="panel-body">
							<div class="row">

								<div class="col-md-6">
									<label>CRM ID/Project ID*</label><br> <input type="text"
										name="PROJECT_ID" value="${deal.PROJECT_ID}"
										class="form-control" readonly="readonly" required="required">
									<label>Customer Name*</label><br> <input type="text"
										name="CUSTOMER_NAME" value="${deal.CUSTOMER_NAME }"
										class="form-control" readonly="readonly" required> <label>CRM
										ID/Project ID Status*</label><br> <select
										name="PROJECT_ID_STATUS" class="form-control" disabled="disabled">
										
											<c:forEach items="${projectIdList}" var="project">
												<option value="${project.PROJECT_STATUS_ID}"
													${project.PROJECT_STATUS_ID == deal.PROJECT_ID_STATUS ? 'selected="selected"' : ''}>${project.PROJECT_STATUS}</option>
											</c:forEach>
									</select> <label>Opportunity Description</label><br> <input
										type="text" name="OPPORTUNITY_DESCRIPTION"
										value="${deal.OPPORTUNITY_DESCRIPTION}" class="form-control"
										readonly="readonly"> <label>RFP \ Bid
										Submission Date*</label><br> <input type="text"
										name="BID_SUBMISSION_DATE"
										value="${deal.BID_SUBMISSION_DATE }" class="form-control"
										readonly="readonly" required>

								</div>
								<div class="col-md-6">

									<label>Intimation to Bid Audit Team for Large Deals</label><br>
									<input type="text" name="INTIMATION_TO_BID_AUDIT_TEAM"
										value="${deal.INTIMATION_TO_BID_AUDIT_TEAM}"
										class="form-control" readonly="readonly" required> <label>Annual
										IT Spend of Customer</label><br> <input type="text"
										name="ANNUAL_IT_SPEND_OF_CUSTOMER"
										value="${deal.ANNUAL_IT_SPEND_OF_CUSTOMER }"
										class="form-control" readonly="readonly"> <label
										id="CONTRACT_SIGNED_STATUS">Contract (MSSA) signed
										(Y/N) </label><br> <input type="text" name="PROJECT_STATRT_DATE"
										value="${deal.CONTRACT_SIGNED_STATUS }" class="form-control"
										readonly="readonly"> <label>Project Duration(
										Yrs)*</label><br> <input type="text" name="PROJECT_DURATION"
										value="${deal.PROJECT_DURATION }" class="form-control"
										readonly="readonly" required> <label>Project
										Start Date / Month</label><br> <input type="text"
										name="PROJECT_STATRT_DATE"
										value="${deal.PROJECT_STATRT_DATE }" class="form-control"
										readonly="readonly">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<hr>
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse2">Intelligence</a>
						</h4>
					</div>
					<div id="collapse2" class="panel-collapse collapse">
						<div class="panel-body">
							<div class="row">

								<div class="col-md-6">
									<label>Bidding Competitors</label><br> <input type="text"
										name="BIDDING_COMPETITORS" value="${deal.BIDDING_COMPETITORS}"
										class="form-control" readonly="readonly"> <label>Incumbents</label><br>
									<input type="text" name="INCUMBENTS" value="${deal.INCUMBENTS}"
										class="form-control" readonly="readonly"> <label>1st
										time Outsourcing/Matured Outsourcer</label><br> <input
										type="text" name="MATURED_OUTSOURCED"
										value="${deal.MATURED_OUTSOURCED }" class="form-control"
										readonly="readonly">
								</div>
								<div class="col-md-6">

									<label>Baseline (Existing FTEs/Contract Value)</label><br>
									<input type="text" name="BASELINE" value="${deal.BASELINE }"
										class="form-control" readonly="readonly"> <label>Expected
										/ Winning /Target Price *</label><br> <input type="text"
										name="TARGET_PRICE" value="${deal.TARGET_PRICE }"
										class="form-control" readonly="readonly" required> <label>Any
										other business intelligence</label><br> <input type="text"
										name="ANY_OTHER_BUSSINESS_INTL"
										value="${deal.ANY_OTHER_BUSSINESS_INTL }" class="form-control"
										readonly="readonly">
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
			<hr>
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse3">Operations</a>
						</h4>
					</div>
					<div id="collapse3" class="panel-collapse collapse">
						<div class="panel-body">
							<div class="row">

								<div class="col-md-6">
									<label>Onsite Locations* </label><br> <input type="text"
										name="ONSITE_LOCATION" value="${deal.ONSITE_LOCATION }"
										class="form-control" readonly="readonly" required> <label>Language/s</label><br>
									<input type="text" name="LANGUAGE" value="${deal.LANGUAGE }"
										class="form-control" readonly="readonly"> <label
										id="ANY_REBADGING">(a) Any Rebadging</label><br>
									<!--  <select
										id="ANY_REBADGING" class="form-control">
										<option value="none">None</option>
										<option value="yes">Yes</option>
										<option value="no">No</option>
									</select> -->
									<input type="text" name="ANY_REBADGING"
										value="${deal.ANY_REBADGING }" readonly="readonly"
										class="form-control"> <label>(b) if Yes, Is it
										new employment or transfer with liabilities</label><br> <input
										type="text" name="REBADGING_STATUS"
										value="${deal.REBADGING_STATUS }" readonly="readonly"
										class="form-control">

								</div>
								<div class="col-md-6">

									<label>Location as bench available (or) need to send on
										deputation (for India)</label><br> <input type="text"
										name="LOCATION_STATUS" value="${deal.LOCATION_STATUS }"
										class="form-control" readonly="readonly"> <label>Who
										is Prime, who is Sub</label><br> <input type="text"
										name="IS_PRIME_SUB" value="${deal.IS_PRIME_SUB }"
										readonly="readonly" class="form-control"> <label
										id="HOURS_BILLING_OFFSOURCE">9th Hour billing at
										offshore*</label><br> <input type="text"
										name="HOURS_BILLING_OFFSOURCE"
										value="${deal.HOURS_BILLING_OFFSOURCE }" class="form-control"
										readonly="readonly">
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<hr>
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse4">Terms & Condition</a>
						</h4>
					</div>
					<div id="collapse4" class="panel-collapse collapse">
						<div class="panel-body">
							<div class="row">

								<div class="col-md-6">
									<label>Warranty Period, if any (in months)</label><br> <input
										type="text" name="WARRANTY_PERIOD"
										value="${deal.WARRANTY_PERIOD }" class="form-control"
										readonly="readonly"> <label>Bank Guarantee (%
										or value)</label><br> <input type="text" name="BANK_GUARANTEE"
										value="${deal.BANK_GUARANTEE }" class="form-control"
										readonly="readonly">

								</div>
								<div class="col-md-6">
									<label id="transition">Transition Chargeable </label><br>
									
									<input type="text" name="transition"
										value="${deal.transition }" class="form-control"
										readonly="readonly"> <label>Any binding/risk
										to TechM</label><br> <input type="text" name="RISK_TO_TECHM"
										value="${deal.RISK_TO_TECHM }" class="form-control"
										readonly="readonly">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<hr>
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse5">Commercials</a>
						</h4>
					</div>
					<div id="collapse5" class="panel-collapse collapse">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-6">
									<label id="L_PRICING_MODEL_ID">Pricing Model*</label><br> <select
										name="PRICING_MODEL_ID" class="form-control" disabled="disabled">
										
											<c:forEach items="${modelList}" var="model">
												<option value="${model.PRICING_MODEL_ID}"
													${model.PRICING_MODEL_ID == deal.PRICING_MODEL_ID ? 'selected="selected"' : ''}>${model.PRICING_MODEL}</option>
											</c:forEach>
									</select> <label>Additional Costs (a) Service Credits</label><br> <input
										type="text" name="ADDITIONAL_COST"
										value="${deal.ADDITIONAL_COST}" readonly="readonly"
										class="form-control"> <label>(b) Discount</label><br>
									<input type="text" name="discount" value="${discount}"
										readonly="readonly" class="form-control">

								</div>

								<div class="col-md-6">
									<label>(d) Probability of meeting SLAs (in %)</label><br>
									<input type="text" name="SLA_PROBABILITY"
										value="${deal.SLA_PROBABILITY}" class="form-control"
										readonly="readonly"> <label>Delivery
										Contingency%* </label><br> <input type="text"
										name="DELIVERY_CONTINGENCY"
										value="${dealobj.DELIVERY_CONTINGENCY}" class="form-control"
										readonly="readonly" required> <label
										id="L_CURRENCY_QUOTE_ID">Currency of Quote*</label><br> <select
										name="CURRENCY_QUOTE_ID" class="form-control" disabled="disabled">
										
											<c:forEach items="${currencyList}" var="quote">
												<option value="${quote.QUOTE_CURRENCY_ID}"
													${quote.QUOTE_CURRENCY_ID == deal.CURRENCY_QUOTE_ID ? 'selected="selected"' : ''}>${quote.QUOTE_CURRENCY}</option>
											</c:forEach>
									</select> <label>BA Commission (if applicable)</label><br> <input
										type="text" name="BA_COMMISSION" value="${deal.BA_COMMISSION}"
										class="form-control" readonly="readonly">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<label>Any other information critical for pricing</label>
			<br>
			<input type="text" name="ANY_OTHER_INFO_FOR_PRICING"
				value="${deal.ANY_OTHER_INFO_FOR_PRICING}" class="form-control"
				readonly="readonly">

			<div class="row">
				<div class="col-md-6">
					<label>Received From:</label> <input type="text"
						name="RECEIVED_FROM" value="${deal.RECEIVED_FROM}"
						class="form-control" readonly="readonly"> <label>Received
						Date*:</label> <input type="text" name="RECEIVED_DATE"
						value="${deal.RECEIVED_DATE}" class="form-control"
						readonly="readonly">
				</div>
                   
			</div>
           <div class="row">
					 <a href="/view" class="btn btn-info pull-left" style="width:100px">Back</a>
				</div>
		</form:form>
	</div>
<jsp:include page="footer.jsp" />