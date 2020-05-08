<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
<jsp:include page="header.jsp" />
<style>
table.table-bordered {
	border: 1px solid black;
	margin-top: 5px;
}

table.table-bordered>thead>tr>th {
	border: 1px solid black;
}

table.table-bordered>tbody>tr>td {
	border: 1px solid black;
}

th {
	color: white;
	text-align: center;
}

.disabled {
	pointer-events: none;
	cursor: default;
}

.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
}

.switch input {
	opacity: 0;
	width: 0;
	height: 0;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}
</style>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12" style="margin-top: 15px;">
			<h1 align="center">BIDDING LIST</h1>
			<form:form action="/access" method="get" modelAttribute="deal">
				<div class="table-responsive">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th rowspan=2 align="center" bgcolor="#66b3ff">BID ID</th>
								<th rowspan=2 align="center" bgcolor="#66b3ff">CUSTOMER
									NAME</th>
								<th rowspan=2 align="center" bgcolor="#66b3ff">BID MANAGER</th>
								<th rowspan=2 align="center" bgcolor="#66b3ff">DELIVERY
									SPOCS</th>
								<th rowspan=2 align="center" bgcolor="#66b3ff">SALES SPOCS</th>
								<th rowspan=2 align="center" bgcolor="#66b3ff">BID OWNER</th>
								<th rowspan=2 align="center" bgcolor="#66b3ff">BID RECEIVED
									DATE</th>
								<th rowspan=2 align="center" bgcolor="#66b3ff">BID
									SUBMISSION DATE</th>
								<th colspan=2 align="center" bgcolor="#66b3ff">Actions</th>

							</tr>
							<tr>
								<th align="center" bgcolor="#99CCFF">REVIEW</th>
								<th align="center" bgcolor="#99CCFF">FREEZE</th>
							</tr>

						</thead>

						<c:forEach items="${list}" var="e">
							<tr>
								<td><a
									href="${pageContext.request.contextPath}/bidview/${e.BID_DETAILS_ID}">${e.BID_DETAILS_ID}</a></td>

								<td><c:out value=" ${e.CUSTOMER_NAME }" /></td>
								<td><c:out value=" ${e.BID_MANAGER}" /></td>
								<td><c:out value=" ${e.DELIVERY_MANAGER}" /></td>
								<td><c:out value=" ${e.SALES_CONTACT_NAME}" /></td>
								<td><c:out value=" ${e.RECEIVED_FROM}" /></td>
								<td><c:out value=" ${e.RECEIVED_DATE}" /></td>
								<td><c:out value=" ${e.BID_SUBMISSION_DATE}" /></td>

								<c:if
									test="${sessionScope.roleName=='Solution Architect' || sessionScope.roleName=='Delivery SPOCS' || sessionScope.roleName=='Sales SPOC' || sessionScope.roleName=='CMC SPOC' || sessionScope.roleName=='PreSales Head' || sessionScope.roleName=='Competency SPOCs'}">

									<td><label class="switch"> ==${e.review}== <input
											type="checkbox" id="review_${e.BID_DETAILS_ID}"
											value="${e.review}" ${e.review=='y'?'checked':''}> <span
											class="slider round"></span>

									</label></td>
									<td><label class="switch"> <input type="checkbox"
											id="freeze_${e.BID_DETAILS_ID}" value="${e.freeze}"
											${e.freeze=='y'?'checked':''}> <span
											class="slider round"></span>
									</label></td>
								</c:if>



							</tr>
						</c:forEach>
					</table>
					<script>
						$(document)
								.ready(
										function() {

											$("form :checkbox")
													.click(
															function() {

																alert('hi : '
																		+ this.id);

																window.location.href = "/access?dsld="
																		+ (this.id
																				.split("_")[1])
																		+ "&"
																		+ this.id
																				.split("_")[0]
																		+ "="
																		+ (this.value == "n" ? "y"
																				: "n");

															});

										});
					</script>
				</div>
			</form:form>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
Name:
<c:out value="${roleName}" />



