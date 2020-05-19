<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp" />


<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="/js/jquery.min.js"></script>
<style>
.y1, .y2, .y3, .y4, .y5, .y6, .y7, .y8, .y9, .y10{
display:none;
}

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
</head>
<body>
<div class="container-fluid">
<h2 class="text-center">
				<b>User Role Mapping</b>
			</h2>
<br>
<div class="row">
                    <div class="col-md-12" style ="margin-top:20px;">

<form:form action="searchRoles" method="get">
<div style="overflow-x:auto;">
   <table class="table table-bordered" id="tblRLS">
   
		   	<tr>
		   		<td>
		   		<label>Select User:</label>
		   		<select id="user" name="userId" required>
		   					<option value="">Select</option>
							<c:forEach items="${usersList}" var="user">
				       	   <option value="${user.usersnum}">${user.loginId}</option>
				    		</c:forEach></select>
				 </td>
				 <td><label>Enter CRM Id:</label>
				 <input type="text" name="crmId" id="crmId" required>
				 </td>
 			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-info mr-1" name="submit" id="submit">Search</button>
				</td>
			</tr>
	
</table>
</div>
</form:form>
<form:form action="addRoles" method="post">
<div style="overflow-x:auto;">
   <table class="table table-bordered" id="tblRLS">
   
		   	<tr>
		   		<td>
		   		<label>Select User:</label><br>
		   		<select id="user" name="userId" required>
		   					<option value="">select</option>
							<c:forEach items="${usersList}" var="user">
				       	   <option value="${user.usersnum}">${user.loginId}</option>
				    		</c:forEach></select>
				 </td>
				 <td><label>Enter CRM Id:</label><br>
				 <input type="text" name="crmId" id="crmId" required>
				 </td>
				  <td><label>Select Roles:</label><br>
				  <select id="role" name="role" multiple required>
				  	<c:forEach items="${rolesList}" var="role">
				    	<option value="${role.roleId}">${role.role}</option>
				    </c:forEach>
				  </select>
				</td>
 			</tr>
			<tr>
				<td colspan="3	">
					<button type="submit" class="btn btn-info mr-1" name="add" id="add">Add Roles</button>
					
				</td>
			</tr>
	
</table>
</div>
</form:form>

<div class="container-fluid">
	 <div class="row">
		<div class="col-md-12" style ="margin-top:20px;">
			<h2><font color="blue"><c:out value="${message}" /></font></h2>
		</div>
	  </div>
	
<form:form action="deleteRoles" method="post">
<c:if test="${not empty userRolesList}">
<div style="overflow-x:auto;">
  <table class="table table-bordered table-sm" id="tblRLS">
  	<thead>
   	 <tr>
   		<th align="left">User</th>
		<th align="left">Roles Assigned</th>
	 </tr>
    </thead>
    <tbody id="roles">
   		 <c:forEach items="${userRolesList}" var="e">
						<tr>
							<td><input type="checkbox" name="role" value="${e.role}"/>
							<c:out value=" ${e.loginId}" />
							</td>
							<td><c:out value=" ${e.role}" />
							<input type="hidden" name="userId" value="${userId}">
							<input type="hidden" name="crmId" value="${crmId}">
							</td>
						</tr>
		  </c:forEach>
		  <tr>
			<td colspan="2">
		  <button type="submit" class="btn btn-info mr-1" name="remove" id="remove">Remove Roles</button>
			</td>
		  </tr>
    </tbody>
 </table>
 </div>
 </c:if>
 </form:form>
</div>



<!-- <div style="overflow-x:auto;">
  <table class="table table-bordered table-sm" id="tblRLS">
  	<thead>
   	 <tr>
   		<th align="left">User</th>
		<th align="left">Roles Assigned</th>
	 </tr>
    </thead>
    <tbody id="roles">
   
    </tbody>
	
 </table>
 </div>



 <script>
    //document.ready start
	$(document).ready(function(){
		
				// For 
			 $('#user').on('change', function(){

				//alert("Hello");
				var userId = $(this).val();
				$.ajax({
					type: 'GET',
                    url: '/getRoles',
                    data:{ user: userId}, 
                   
					success: function(result) {
						//alert("Hello2"+result);
						var result = JSON.parse(result);
						
						//alert("Hello3"+result);
						var s = '';
						for(var i = 0; i < result.length; i++) {
							s += '<tr><td>' + result[i].loginId + '</td><td>'+result[i].role+ '</td></tr>';
							
						} 
						//alert("Hello4"+s);
						$('#roles').html(s); 
					},
					error: function () {
	                    alert("error");
	                }
				});
			});
	//End
 		   	
	});
	//document.ready end
</script>
 -->
</div>
</div>
</div>
<jsp:include page="footer.jsp" />

</body>
</html>