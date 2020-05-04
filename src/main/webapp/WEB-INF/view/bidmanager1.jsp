<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
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
    background-color:#66b3ff;
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
			<h1 align="center">BIDDING LIST</h1>
			<form:form action="/access" method="get" modelAttribute="deal">
			<div class ="table-responsive">
				<table class="table table-bordered" >
					<thead>
					<tr>
					        <th>BID ID</th>
							<th>CUSTOMER NAME</th>
							<th>BID MANAGER</th>
							<th>DELIVERY SPOCS</th>
							<th>SALES SPOCS</th>
							<th>BID OWNER</th>
							<th>BID RECEIVED DATE</th>
							<th>BID SUBMISSION DATE</th>
							<th colspan =2>Actions</th>
						
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
						
							
							<%-- <td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}" class="disabled btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}"class="disabled btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}" class="disabled btn btn-warning">Review</a></td>
						
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}" class="disabled btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}" class="disabled btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}" class="disabled btn btn-danger">Freeze</a></td> --%>
					
						</c:if> 
						 <c:if test="${sessionScope.roleName=='Solution Architect'}">
						   <!-- <td><input type="checkbox" checked data-toggle="toggle" data-onstyle="outline-warning" data-offstyle="outline-info"></td> -->
                          <%--  <td><input type="checkbox" checked data-toggle="toggle" data-onstyle="outline-info" data-offstyle="outline-light"></td>
                          <td> <input type="radio"  name="radio1"  id="radio1" onclick = "MyAlert()" value="${e.BID_DETAILS_ID}"/>Blue</td> --%>
                          
                          <td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=y" class="btn btn-warning">Review ON</a><br><br>
                          <a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=n" class="btn btn-warning">Review OFF</a>
                          </td>
						
							<td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=y" class="btn btn-danger">Freeze ON</a><br><br>
							<a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=n" class="btn btn-danger">Freeze OFF</a></td>
						<%-- 
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y"class="btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="btn btn-warning">Review</a></td>
						
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td> --%>
						</c:if>
						<c:if test="${sessionScope.roleName=='Delivery SPOCS'}">
							 <td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=y" class="btn btn-warning">Review ON</a><br><br>
                          <a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=n" class="btn btn-warning">Review OFF</a>
                          </td>
						
							<td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=y" class="btn btn-danger">Freeze ON</a><br><br>
							<a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=n" class="btn btn-danger">Freeze OFF</a></td>
						<%-- 
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y"class="btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="disabled btn btn-warning">Review</a></td>
						
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="disabled btn btn-danger">Freeze</a></td> --%>
						</c:if>
						<c:if test="${sessionScope.roleName=='Sales SPOC'}">
							 <td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=y" class="btn btn-warning">Review ON</a><br><br>
                          <a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=n" class="btn btn-warning">Review OFF</a>
                          </td>
						
							<td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=y" class="btn btn-danger">Freeze ON</a><br><br>
							<a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=n" class="btn btn-danger">Freeze OFF</a></td>
							<%-- <td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="disabled btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y"class="btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="btn btn-warning">Review</a></td>
						
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="disabled btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td> --%>
						</c:if>
						<c:if test="${sessionScope.roleName=='Competency SPOCs'}">
							 <td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=y" class="btn btn-warning">Review ON</a><br><br>
                          <a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=n" class="btn btn-warning">Review OFF</a>
                          </td>
						
							<td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=y" class="btn btn-danger">Freeze ON</a><br><br>
							<a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=n" class="btn btn-danger">Freeze OFF</a></td>
					
							<%-- <td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="disabled btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y"class="disabled btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="disabled btn btn-warning">Review</a></td>
						
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="disabled btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="disabled btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="disabled btn btn-danger">Freeze</a></td> --%>
						</c:if>
						<c:if test="${sessionScope.roleName=='CMC SPOC'}">
							 <td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=y" class="btn btn-warning">Review ON</a><br><br>
                          <a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=n" class="btn btn-warning">Review OFF</a>
                          </td>
						
							<td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=y" class="btn btn-danger">Freeze ON</a><br><br>
							<a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=n" class="btn btn-danger">Freeze OFF</a></td>
						
							<%-- <td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y"class="btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="btn btn-warning">Review</a></td>
						
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td> --%>
						</c:if>
						<c:if test="${sessionScope.roleName=='PreSales Head'}">
							 <td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=y" class="btn btn-warning">Review ON</a><br><br>
                          <a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&review=n" class="btn btn-warning">Review OFF</a>
                          </td>
						
							<td><a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=y" class="btn btn-danger">Freeze ON</a><br><br>
							<a href="${pageContext.request.contextPath}/access?dsld=${e.BID_DETAILS_ID}&freeze=n" class="btn btn-danger">Freeze OFF</a></td>
						
							<%-- <td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="disabled btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y"class="disabled btn btn-warning">Review</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&review=y" class="btn btn-warning">Review</a></td>
						
							<td><a href="${pageContext.request.contextPath}/RLS?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="disabled btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/ProjectCosts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="disabled btn btn-danger">Freeze</a></td>
							<td><a href="${pageContext.request.contextPath}/BoughtOuts?dsld=${e.BID_DETAILS_ID}&durayear=${e.PROJECT_DURATION}&freeze=f" class="btn btn-danger">Freeze</a></td> --%>
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
	
	<script type="text/javascript">  
function MyAlert()  
    {  
    alert('view');
var radio1=$('input[type="radio"]:checked').val();
//alert(radio1);
var pass_data = {
            'radio1' : radio1,
        };
        //alert(pass_data);
        $.ajax({
            url : "/access",  // create a new php page to handle ajax request
            type : "GET",
            data : {dsld: dsld},
            success : function(data) {
            }
        });
        return false;
    }  
</script>
	
	
	
	