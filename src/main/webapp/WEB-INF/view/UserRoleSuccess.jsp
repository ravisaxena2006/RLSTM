<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container-fluid">
	 <div class="row">
		<div class="col-md-12" style ="margin-top:20px;">
			<h2><font color="blue"><c:out value="${success}" /></font></h2>
		</div>
	  </div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>