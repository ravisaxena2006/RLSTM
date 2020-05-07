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

<form:form action="saveRoles" method="post">
<div style="overflow-x:auto;">
   <table class="table table-bordered" id="tblRLS">
    	<thead>
		   <tr>	
		   		<th>Users</th>
		   		<th>Roles</th>
		   	</tr>
		</thead>
		<tbody>
		   	<tr>
		   		<td><select id="user" name="userId">
		   					<option value=0>select</option>
							<c:forEach items="${usersList}" var="user">
				       	   <option value="${user.usersnum}">${user.loginId}</option>
				    		</c:forEach></select>
				 </td>
				
		   		 <td><select id="role" name="roleId" multiple>
							<c:forEach items="${rolesList}" var="role">
				       	   <option value="${role.roleId}">${role.role}</option>
				    		</c:forEach></select>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-info mr-1" name="submit" id="submit">Submit</button>
				</td>
			</tr>
	  </tbody>
</table>
</div>
</form:form>



<br><br><br>
<div style="overflow-x:auto;">
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

</div>
</div>
</div>
<jsp:include page="footer.jsp" />

</body>
</html>