<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp" />
<style>
table.table-bordered{
    border:1px solid black;
    margin-top:5px;
  }
table.table-bordered > thead > tr > th{
    border:1px solid black;
}
table.table-bordered > tbody > tr > td{
    border:1px solid black;
}
th {
    color: white;
    text-align: center;
}

.disabled {
        pointer-events: none;
        cursor: default;
    }
</style>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12" style="margin-top: 15px;">
			<h1 align="center">BIDING LIST</h1>
			<form:form action="/view" method="get" modelAttribute="deal">
			<div class ="table-responsive">
				<table class="table table-bordered" >
					<thead>
					<tr>
					        <th rowspan=2 align="center" bgcolor="#66b3ff">BID ID</th>
							<th rowspan=2 align="center" bgcolor="#66b3ff">CUSTOMER NAME</th>
							<th rowspan=2 align="center" bgcolor="#66b3ff">BID MANAGER</th>
							<th rowspan=2 align="center" bgcolor="#66b3ff">DELIVERY SPOCS</th>
							<th rowspan=2 align="center" bgcolor="#66b3ff">SALES SPOCS</th>
							<th rowspan=2 align="center" bgcolor="#66b3ff">BID OWNER</th>
							<th rowspan=2 align="center" bgcolor="#66b3ff">BID RECEIVED DATE</th>
							<th rowspan=2 align="center" bgcolor="#66b3ff">BID SUBMISSION DATE</th>
							<th colspan =4 rowspan=2 align="center" bgcolor="#66b3ff">Actions</th>
						<th colspan =3 align="center" bgcolor="#66b3ff">Actions Review</th>
						<th colspan =3 align="center" bgcolor="#66b3ff">Actions Freeze</th>
						</tr>
						<tr>
							
							<th align="center" bgcolor="#99CCFF">RLS</th>
						    <th align="center" bgcolor="#99CCFF">PC</th>
						    <th align="center" bgcolor="#99CCFF">BO</th>
							<th align="center" bgcolor="#99CCFF">RLS</th>
						    <th align="center" bgcolor="#99CCFF">PC</th>
						    <th align="center" bgcolor="#99CCFF">BO</th>
						</tr>
						
					</thead>

					<c:forEach items="${list}" var="e">
						<tr>
							<td><a href="${pageContext.request.contextPath}/bidview/${e.BID_DETAILS_ID}">${e.BID_DETAILS_ID}</a></td>

							<td><c:out value=" ${e.CUSTOMER_NAME }" /></td>
							<td><c:out value=" ${e.BID_MANAGER}" /></td>
							<td><c:out value=" ${e.DELIVERY_MANAGER}" /></td>
							<td><c:out value=" ${e.SALES_CONTACT_NAME}" /></td>
							<%-- <td><c:out value=" ${e.PRE_SALES_CONTACT_NAME}" /></td> --%>
							<td><c:out value=" ${e.RECEIVED_FROM}" /></td>
							<td><c:out value=" ${e.RECEIVED_DATE}" /></td>
							<td><c:out value=" ${e.BID_SUBMISSION_DATE}" /></td>
							
						

              		   <c:if test="${sessionScope.roleName=='Bid Manager'}">
							<td><a href="${pageContext.request.contextPath}/bidview/${e.BID_DETAILS_ID}">Deal-Specs</a>	</td>
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}" class="disabled">RLS</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}" class="disabled">ProjectCost</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}" class="disabled">Bought-Outs</a></td>
						</c:if>
						 <c:if test="${sessionScope.roleName=='Solution Architect'}">
							<td><a href="${pageContext.request.contextPath}/bidview/${e.BID_DETAILS_ID}">Deal-Specs</a>	</td>
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">RLS</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">ProjectCost</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">Bought-Outs</a></td>
						</c:if>
						<c:if test="${sessionScope.roleName=='Delivery SPOCS'}">
							<td><a href="${pageContext.request.contextPath}/bidview/${e.BID_DETAILS_ID}">Deal-Specs</a>	</td>
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">RLS</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">ProjectCost</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">Bought-Outs</a></td>
						</c:if>
						<c:if test="${sessionScope.roleName=='Sales SPOC'}">
							<td><a href="${pageContext.request.contextPath}/bidview/${e.BID_DETAILS_ID}">Deal-Specs</a>	</td>
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">RLS</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">ProjectCost</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">Bought-Outs</a></td>
						</c:if>
						<c:if test="${sessionScope.roleName=='Competency SPOCs'}">
							<td><a href="${pageContext.request.contextPath}/bidview/${e.BID_DETAILS_ID}">Deal-Specs</a>	</td>
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">RLS</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">ProjectCost</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">Bought-Outs</a></td>
						</c:if>
						<c:if test="${sessionScope.roleName=='CMC SPOC'}">
							<td><a href="${pageContext.request.contextPath}/bidview/${e.BID_DETAILS_ID}">Deal-Specs</a>	</td>
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">RLS</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">ProjectCost</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">Bought-Outs</a></td>
						</c:if>
						<c:if test="${sessionScope.roleName=='PreSales Head'}">
							<td><a href="${pageContext.request.contextPath}/bidview/${e.BID_DETAILS_ID}">Deal-Specs</a>	</td>
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">RLS</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">ProjectCost</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}">Bought-Outs</a></td>
						</c:if>
						
						 <c:if test="${sessionScope.roleName=='Solution Architect'}">
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y"class="btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="btn btn-warning">Review</a></td>
						</c:if>
						
						<c:if test="${sessionScope.roleName=='Solution Architect'}">
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td>
						</c:if>
						</tr>
					</c:forEach>
				</table>
				</div>
			</form:form>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
	Name: <c:out value="${roleName}"/>