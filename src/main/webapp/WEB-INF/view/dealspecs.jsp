<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp" />
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
        function register_deal()
        {
            alert("hello");
            $.ajax({
                alert("value of");
                type: "POST",
                data: {
                    
                	PROJECT_ID : $('#PROJECT_ID').val(),
                },
                url: "/getDeal",
                success: function(data)
                {
                    alert("hello1");
                    if(data === 'PROJECT ID Exist')
                    {
                        alert("hello2");
                        $('#projectID')
                            .css('color', 'red')
                            .html("This PROJECT ID already exists!");
                    }
                    else if(data === 'USER_AVAILABLE')
                    {
                        alert("hello3");
                        $('#projectID')
                            .css('color', 'green')
                            .html("PROJECT ID available.");
                    }
                }
            })              
        }
    </script> -->
<div class="container-fluid">

	<form:form action="/save" method="post" modelattribute="deal" id="form1">

		<h4 class="text-center">
			<b>Deal Specific Details</b>
		</h4>
		<hr>
		<div class="row">

			<div class="col-md-6">
				<label>RM / Bid Manager* </label><br> <input type="text"
					name="BID_MANAGER" class="form-control" required> <label>Sales
					Contact Name*</label><br> <input type="text" name="SALES_CONTACT_NAME"
					class="form-control" required> <label>Pre-Sales
					Contact Name*</label><br> <input type="text"
					name="PRE_SALES_CONTACT_NAME" class="form-control" required>
			</div>
			<div class="col-md-6">

				<label>Delivery Manager*</label><br> <input type="text"
					name="DELIVERY_MANAGER" class="form-control" required> <label>Efforts
					Estimate By* </label><br> <input type="text" name="EFFORT_ESTIMATE_BY"
					class="form-control" required> <label>Efforts
					Approved By* </label><br> <input type="text" name="EFFORT_APPROVED_BY"
					class="form-control" required>
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
									name="projectId"  class="form-control" required>
								<label>Customer Name*</label><br> <input type="text"
									name="CUSTOMER_NAME" class="form-control" required> <label>CRM
									ID/Project ID Status*</label><br> <select name="PROJECT_ID_STATUS"
									class="form-control">

									<c:forEach items="${projectIdList}" var="project">
										<option value="${project.PROJECT_STATUS_ID}">${project.PROJECT_STATUS}</option>
									</c:forEach>
								</select> <label>Opportunity Description</label><br> <input
									type="text" name="OPPORTUNITY_DESCRIPTION" class="form-control">
								<label>RFP \ Bid Submission Date*</label><br> <input
									type="text" name="BID_SUBMISSION_DATE"
									class="form-control datepicker" required>

							</div>
							<div class="col-md-6">

								<label>Intimation to Bid Audit Team for Large Deals</label><br>
								<input type="text" name="INTIMATION_TO_BID_AUDIT_TEAM"
									class="form-control" required> <label>Annual IT
									Spend of Customer</label><br> <input type="text"
									name="ANNUAL_IT_SPEND_OF_CUSTOMER" class="form-control">

								<label id="L_CONTRACT_SIGNED_STATUS">Contract (MSSA)
									signed (Y/N) </label><br> <select id="CONTRACT_SIGNED_STATUS"
									class="form-control">
									<option value="none">None</option>
									<option value="yes">Yes</option>
									<option value="no">No</option>
								</select> <label>Project Duration( Yrs)*</label><br> <input
									type="text" name="PROJECT_DURATION" class="form-control"
									required> <label>Optional Project Duration(
									Yrs)*</label><br> <input type="text" name="optional_duration"
									class="form-control" value="0"> <label>Project
									Start Date / Month</label><br> <input type="text"
									name="PROJECT_START_DATE" class="form-control datepicker">
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
									name="BIDDING_COMPETITORS" class="form-control"> <label>Incumbents</label><br>
								<input type="text" name="INCUMBENTS" class="form-control">

								<label>1st time Outsourcing/Matured Outsourcer</label><br>
								<input type="text" name="MATURED_OUTSOURCED"
									class="form-control">
							</div>
							<div class="col-md-6">

								<label>Baseline (Existing FTEs/Contract Value)</label><br>
								<input type="text" name="BASELINE" class="form-control">
								<label>Expected / Winning /Target Price *</label><br> <input
									type="text" pattern="\d*" title=" Please Enter Number"
									name="TARGET_PRICE" class="form-control" required> <label>Any
									other business intelligence</label><br> <input type="text"
									name="ANY_OTHER_BUSSINESS_INTL" class="form-control">
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
									name="ONSITE_LOCATION" class="form-control" required> <label>Language/s</label><br>
								<input type="text" name="LANGUAGE" class="form-control">
								<label id="L_ANY_REBADGING">(a) Any Rebadging</label><br> <select
									id="ANY_REBADGING" class="form-control">
									<option value="none">None</option>
									<option value="yes">Yes</option>
									<option value="no">No</option>
								</select> <label>(b) if Yes, Is it new employment or transfer
									with liabilities</label><br> <input type="text"
									name="REBADGING_STATUS" class="form-control">

							</div>
							<div class="col-md-6">

								<label>Location as bench available (or) need to send on
									deputation (for India)</label><br> <input type="text"
									name="LOCATION_STATUS" class="form-control"> <label>Who
									is Prime, who is Sub</label><br> <input type="text"
									name="IS_PRIME_SUB" class="form-control"> <label
									id="L_HOURS_BILLING_OFFSOURCE">9th Hour billing at
									offshore*</label><br> <select id="HOURS_BILLING_OFFSOURCE"
									class="form-control">
									<option value="none">None</option>
									<option value="yes">Yes</option>
									<option value="no">No</option>
								</select>
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
									pattern="\d*" title=" Please Enter Number" type="text"
									name="WARRANTY_PERIOD" class="form-control" required="required">
								<label>Bank Guarantee (% or value)</label><br> <input
									type="text" name="BANK_GUARANTEE" pattern="\d*"
									title=" Please Enter Number" class="form-control">

							</div>
							<div class="col-md-6">
								<label id="L_transition">Transition Chargeable </label><br>
								<select id="transition" class="form-control">
									<option value="none">None</option>
									<option value="yes">Yes</option>
									<option value="no">No</option>
								</select> <label>Any binding/risk to TechM</label><br> <input
									type="text" name="RISK_TO_TECHM" class="form-control">
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
									name="PRICING_MODEL_ID" class="form-control">

									<c:forEach items="${modelList}" var="model">
										<option value="${model.PRICING_MODEL_ID}">${model.PRICING_MODEL}</option>
									</c:forEach>
								</select> <label>Additional Costs (a) Service Credits</label><br> <input
									pattern="\d*" title=" Please Enter Number" type="text"
									name="ADDITIONAL_COST" class="form-control"> <label>(b)
									Discount</label><br> <input type="text" name="discount"
									pattern="\d*" title=" Please Enter Number" class="form-control">

							</div>

							<div class="col-md-6">
								<label>(d) Probability of meeting SLAs (in %)</label><br> <input
									pattern="\d*" title=" Please Enter Number" type="text"
									name="SLA_PROBABILITY" class="form-control"> <label>Delivery
									Contingency%* </label><br> <input type="text"
									name="DELIVERY_CONTINGENCY" class="form-control" required>

								<label id="L_CURRENCY_QUOTE_ID">Currency of Quote*</label><br>

								<select name="CURRENCY_QUOTE_ID" class="form-control">
									<option value="-1" label="--Select--">
										<c:forEach items="${currencyList}" var="quote">
											<option value="${quote.QUOTE_CURRENCY_ID}">${quote.QUOTE_CURRENCY}</option>
										</c:forEach>
								</select> <label>BA Commission (if applicable)</label><br> <input
									type="text" name="BA_COMMISSION" class="form-control">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<c:if test="${sessionScope.roleName=='Solution Architect'}">
			<div class="row">

				<div class="col-md-6">
					<label>Select Towers</label><br> <select name="towers"
						id="towers" class="form-control" multiple>

						<c:forEach items="${towerList}" var="tower">
							<option value="${tower.towerId}">${tower.tower}</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-md-6">
					<label>Select Vertical</label><br> <select id="verticals"
						name="verticals" class="form-control" multiple>
						<c:forEach items="${verticals}" var="vertical">
							<option value="${vertical.verticalId}">${vertical.vertical}</option>
						</c:forEach>
					</select>
				</div>
			</div>
		</c:if>
		<label>Any other information critical for pricing</label>
		<br>
		<input type="text" name="ANY_OTHER_INFO_FOR_PRICING"
			class="form-control">

		<div class="row">
			<div class="col-md-6">
				<label>Received From:</label> <input type="text"
					name="RECEIVED_FROM" class="form-control"> <label>Received
					Date*:</label> <input type="text" name="RECEIVED_DATE"
					class="form-control datepicker">
			</div>
		</div>
		<br>

		<div align="right">
			<button type="submit" class="btn btn-info mr-1" name="submit"
				id="submit">Submit</button>
		</div>

	</form:form>
</div>
<jsp:include page="footer.jsp" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script>
	$(function() {
		$(".datepicker").datepicker();
	});
</script>