<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



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
<h1>User Role Mapping</h1>

<form:form action="" method="post">
   <table class="table table-bordered" id="tblRLS">
   <tr>	
   		<td>
   		Users<select id="user" name="user">
					<c:forEach items="${usersList}" var="user">
		       	   <option value="${user.usersnum}">${user.loginId}</option>
		    		</c:forEach></select>
		 </td>
		 <td>
   		Roles<select id="role" name="role">
					<c:forEach items="${rolesList}" var="role">
		       	   <option value="${role.roleId}">${role.role}</option>
		    		</c:forEach></select>

</td>
</tr>
<tr>
<td colspan="2">
<button type="submit" name="submit" id="submit">Submit</button>
</td>
</table>
</form:form>


</body>
</html>