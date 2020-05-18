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
					<b>User Role Selection Window</b>
				</h2>
	<br>
	<div class="row">
	                    <div class="col-md-12" style ="margin-top:20px;">

<form:form action="view" method="post">
<div style="overflow-x:auto;">
   <table class="table table-bordered" id="tblRLS">
   
		   	<tr>
		   		<td>
		   		<label>Select CRM Id:</label><br>
		   		<select id="crmId" name="crmId">
		   					<option value="">select</option>
							<c:forEach items="${crmList}" var="crmId">
				       	   <option value="${crmId}">${crmId}</option>
				    		</c:forEach></select>
				 </td>
				
				  <td><label>Select Role:</label><br>
				  <select id="role" name="roleId">
				  	<option value="">select</option>
				  </select>
				</td>
 			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-info mr-1" name="submit" id="submit">Submit</button>
				</td>
			</tr>
	
</table>
</div>
</form:form>
<script>
    //document.ready start
	$(document).ready(function(){
		
			// For populating roles in role drop down list on the basis of CRM Id
			 $('#crmId').on('change', function(){

				//alert("Hello");
				var crmId = $(this).val();
					$.ajax({
					type: 'GET',
                    url: '/getRolesByCrmId',
                    data:{ crmId: crmId}, 
                   
					success: function(result) {
						//alert("Hello2"+result);
						var result = JSON.parse(result);
						
						//alert("Hello3"+result);
						var s = '';
						for(var i = 0; i < result.length; i++) {
							s += '<option value="' + result[i].roleId + '">' + result[i].role + '</option>';
						} 
						$('#role').html(s);
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