<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</style>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container-fluid">
	 <div class="row">
		<div class="col-md-12" style ="margin-top:20px;">
			<h2><font color="blue"><c:out value="${success}" /></font></h2>
		</div>
	  </div>
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
   		 <c:forEach items="${userRolesList}" var="e">
						<tr>
							
							<td><c:out value=" ${e.loginId}" /></td>
							<td><c:out value=" ${e.role}" /></td>
							
						</tr>
		  </c:forEach>
    </tbody>
 </table>
 </div>
</div>
<br>
<h2><font color="blue"><a href="userRole">Back</a></font></h2>
<jsp:include page="footer.jsp" />
</body>
</html>