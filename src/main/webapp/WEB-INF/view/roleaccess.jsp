<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<jsp:include page="header.jsp" />
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
<div class="container-fluid">
<h2 class="text-center">
				<b>User Role Access Mapping</b>
			</h2>
<br>


<form:form  action="/getGrid" method="get">

<table class="table table-bordered" id="tblRLS">
 
   <tr>	
   		
		 <td><label>Roles</label>
   		<select id="role1" name="role">
					<c:forEach items="${rolesList}" var="role">
		       	   <option value="${role.roleId}">${role.role}</option>
		    		</c:forEach></select>

</td>

	 <td>
<button type="submit" name="submit" id="submit">Search</button>
</td>

</tr>

<tr>

</table>

</form:form>
<br/>

<br/>
<br/>

 <div class ="table-responsive">
				<table class="table table-bordered" >
					<thead>
						<tr>
							<th scope="col">Role</th>
							<th scope="col">Module</th>
							<th scope="col">Access Right</th>
						
							
						</tr>
					</thead>
					
					<c:forEach items="${roleAccess}" var="e">
						<tr>
						<td><c:out value=" ${e.role }" /></td>
						<td><c:out value=" ${e.module }" /></td>
						<td><c:out value=" ${e.access }" /></td>
					</tr>
					</c:forEach>
					
					</table>
					</div>  
<!-- <div style="overflow-x:auto;">
  <table class="table table-bordered table-sm" id="tblRLS">
  	<thead>
   	 <tr>
   		                    <th scope="col">Role</th>
							<th scope="col">Module</th>
							<th scope="col">Access Right</th>
	 </tr>
    </thead>
    <tbody id="roles1">
   
    </tbody>
	
 </table>
 </div>	 -->
					
					

   <form:form action="/saveGrig" method="get" modelAttribute="userRoleAccess">







   <table class="table table-bordered" id="tblRLS">
   <tr>	
   		
		 <td><label>Roles</label><br>
   		<select id="roleID1" name="role" >
					<c:forEach items="${rolesList}" var="role">
		       	   <option value="${role.roleId}">${role.role}</option>
		    		</c:forEach></select>

</td>

	 <td><label>Modules</label><br>
   		<select id="moduleID1" name="module" >
					<c:forEach items="${moduleList}" var="module">
		       	   <option value="${module.moduleId}">${module.module}</option>
		    		</c:forEach></select>

</td>

<%--  <td>
   		Access Right<select id="accessRightID1" name="accessRight">
					<c:forEach items="${accessRightList}" var="access">
		       	   <option value="${access.accessRightId}">${access.accessRight}</option>
		    		</c:forEach></select>

</td> --%>

 <td><label>Access Right</label><br>
   		<select id="accessRightID1" name="accessRight" multiple>
					<c:forEach items="${accessRightList}" var="access">
		       	   <option value="${access.accessRightId}">${access.accessRight}</option>
		    		</c:forEach></select>

</td> 

</tr>
<tr>
<td colspan="2">
<button type="submit" name="submit" id="submit">Submit</button>
</td>
</table>
</form:form> 

<div class="container-fluid">
	 <div class="row">
		<div class="col-md-12" style ="margin-top:20px;">
			<h2><font color="blue"><c:out value="${success}" /></font></h2>
		</div>
	  </div>
</div>
<script type="text/javascript">
/* var roleId =  document.getElementById("role1").value;

alert("roleId"+roleId); */


/* $(document).ready(function(){
	
	// For 
 $('#role1').on('change', function(){

	alert("Hello");
	var roleId = $(this).val();
	$.ajax({
		type: 'GET',
        url: '/getGrid1',
        data:{ roleId: role1}, 
       
		success: function(result) {
			alert("Hello2");
			var result = JSON.parse(result);
			
			alert("Hello3"+result);
			var s = '';
			for(var i = 0; i < result.length; i++) {
				s += '<tr><td>' + result[i].role + '</td><td>'+result[i].module+ '</td> <td>'+result[i].accessRight+'</td></tr>';
				
			} 
			//alert("Hello4"+s);
			$('#roles1').html(s); 
		},
		error: function () {
            alert("error");
        }
	});
});
//End
	
});
 */







/* $(document).ready(function(){
$('#role1').on('change', function(){

	alert("Hello");
	var roleId = $(this).val();
	
	$.ajax({
		type: 'GET',
        url: '/getGrid',
       data:{ roleId: roleId}, 
       
		success: function(result) {
			alert("Hello2"+result);
			//var result = JSON.parse(result);
			
			//alert("Hello3"+result);
		
		},
		error: function () {
            alert("error");
        }
	});
});

}); */
</script>
</body>
</div>
<jsp:include page="footer.jsp" />