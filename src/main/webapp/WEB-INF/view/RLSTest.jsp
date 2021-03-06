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
				<b>RLS</b>
			</h2>
<br>
<div class="row">	
	
			<div class="btn-group pull-left " style="width:1080px">
			<div class="text-right">
			 <a href="/view?dsld=${Bid_ID}&durayear=${duryr}" class="btn btn-info">Deal Specs</a>
			<a href="/ProjectCosts?dsld=${Bid_ID}&durayear=${duryr}" class="btn btn-info">Project Cost</a>
			<a href="/BoughtOuts?dsld=${Bid_ID}&durayear=${duryr}" class="btn btn-info">Bought-Out</a> 
			 </div>
			</div>
</div> 
         <div class="row">
                    <div class="col-md-12" style ="margin-top:20px;">
<!--  Form Started------->

<form:form action="RLSDetails?dsld=${dl_id_key}&durayear=${project_duration}"  modelAttribute="rlsList" method="post">
<div style="overflow-x:auto;">
  <table class="table table-bordered" id="tblRLS">
  	<thead>
   	 <tr>
   		<th align="left">Project Phase</th>
		<th align="left">Vertical</th>
     	<th align="left">Tower</th>
 		<th align="left">Sub Tower</th>
 		<th align="left">Resource/Role</th>
      	<th align="left">Billable/Non-billable*</th>
 		<th align="left">Onsite/Offshore/Onshore*</th>
 		<th align="left">Location</th>
 		<th align="left">City</th>
    	<th align="left">Skill Type</th>
   		<th align="left">Local/Expat/SubCon*</th>
 		<th align="left">Band</th>
     	<th align="left">Premises</th>
     	<th align="left">Remarks</th>
		<th class="y1" align="left">Days-Y1</th>
		<th class="y2" align="left">Days-Y2</th>
		<th class="y3" align="left">Days-Y3</th>
		<th class="y4" align="left">Days-Y4</th>
		<th class="y5" align="left">Days-Y5</th>
		<th class="y6" align="left">Days-Y6</th>
		<th class="y7" align="left">Days-Y7</th>
		<th class="y8" align="left">Days-Y8</th>
		<th class="y9" align="left">Days-Y9</th>
		<th class="y10" align="left">Days-Y10</th>
		<th align="left">Total</th>
		<th></th>
		<td> <input type="hidden"  id="listCount" name="listCount" value="${rlsDetailsSize}"/></td>
		<td><input type="hidden"  id="projectduration" name="project_duration" value="${project_duration}"/> </td>
    </tr>
    </thead>
    <tbody id="myTableObj">
     <c:forEach items="${rlsDetails}" var="e" varStatus="loop">
			<tr id="myrow_">
				<td><select  id="projectPhase" name="RLSDetails[${loop.index}].projectPhaseId">
					<c:forEach items="${projectPhases}" var="projectPhase">
		        	<option value="${projectPhase.projectPhaseId}"  ${projectPhase.projectPhaseId == e.projectPhaseId ? 'selected="selected"' : ''}>${projectPhase.projectPhase}</option>
		   			</c:forEach> </select></td>
								 
				<td><select id="vertical" name="RLSDetails[${loop.index}].verticalId">
					<c:forEach items="${verticals}" var="vertical">
		       	   <option value="${vertical.verticalId}"  ${vertical.verticalId == e.verticalId ? 'selected="selected"' : ''}>${vertical.vertical}</option>
		    		</c:forEach></select></td>
								
				<td><select  id="tower" name="RLSDetails[${loop.index}].towerId">
					<c:forEach items="${towers}" var="tower">
		       		<option value="${tower.towerId}" ${tower.towerId == e.towerId ? 'selected="selected"' : ''}>${tower.tower}</option>
		    		</c:forEach></select></td>
		  	 			
				<td align="left"><Input type="text" name="RLSDetails[${loop.index}].subTower" id="subTower" value="${e.subTower}"></td>
							
				 <td align="left"><Input type="text" name="RLSDetails[${loop.index}].role" id="role" value="${e.role}"></td>
							
				<td><select id="billable" name="RLSDetails[${loop.index}].billableId">
					<c:forEach items="${billable}" var="billable">
		      		<option value="${billable.billableId}" ${billable.billableId == e.billableId ? 'selected="selected"' : ''}>${billable.billable}</option>
		   			 </c:forEach></select></td>
		
				<td><select id="loc" name="RLSDetails[${loop.index}].workPlaceId">
					 <c:forEach items="${workPlaces}" var="workPlace">
		       		 <option value="${workPlace.workPlaceId}" ${workPlace.workPlaceId == e.workPlaceId ? 'selected="selected"' : ''}>${workPlace.workPlace}</option>
		   			 </c:forEach></select></td>
		 
				<td><select id="country" name="RLSDetails[${loop.index}].locationId">
				    <c:forEach items="${locations}" var="location">
		        	<option value="${location.locationId}" ${location.locationId == e.locationId ? 'selected="selected"' : ''}>${location.location}</option>
		  		    </c:forEach> </select></td>
		  		    
		  		     <td align="left"><select id="city" name="RLSDetails[${loop.index}].cityId">
		  				  <c:forEach items="${cities}" var="city">
		        		  <option value="${city.cityId}" ${city.cityId == e.cityId ? 'selected="selected"' : ''}>${city.city}</option>
					</c:forEach>
					  </select></td>
		 
				<td><select  id="skillType" name="RLSDetails[${loop.index}].skillTypeId">
					<c:forEach items="${skillTypes}" var="skillType">
		      	    <option value="${skillType.skillTypeId}" ${skillType.skillTypeId == e.skillTypeId ? 'selected="selected"' : ''}>${skillType.skillType}</option>
		  		    </c:forEach></select></td>
			
				<td><select  id="local" name="RLSDetails[${loop.index}].resourceTypeId">
					<c:forEach items="${resourceTypes}" var="resourceType">
		       		<option value="${resourceType.resourceTypeId}" ${resourceType.resourceTypeId == e.resourceTypeId ? 'selected="selected"' : ''}>${resourceType.resourceType}</option>
		   		    </c:forEach></select></td>
		
				<td><select  id="band" name="RLSDetails[${loop.index}].bandId">
					 <c:forEach items="${bands}" var="band">
		       		 <option value="${band.bandId}" ${band.bandId == e.bandId ? 'selected="selected"' : ''}>${band.band}</option>
		  		     </c:forEach></select></td>
		 
				<td><select id="premises" name="RLSDetails[${loop.index}].premisesId">
					<c:forEach items="${premises}" var="premises">
		        	<option value="${premises.premisesId}" ${premises.premisesId == e.premisesId ? 'selected="selected"' : ''}>${premises.premises}</option>
		  		    </c:forEach></select></td>
			
			<td align="left"><Input type="text" name="RLSDetails[${loop.index}].remarks" id="remarks" value="${e.remarks}"></td>
			
			<td align="left" class="y1"><Input type="text" class="h'+${loop.index}+' v1" name="RLSDetails[${loop.index}].daysYear1" value="${e.daysYear1}" pattern="[0-9]+" title="Please enter digits" >
		
			<input type="hidden"  id="mydealid" name="RLSDetails[${loop.index}].dsId" value="${e.dsId}"/>
			<input type="hidden"  id="timestamp" name="RLSDetails[${loop.index}].trackingNumber" value="${trackingNumber}"/>
			<input type="hidden"  name="RLSDetails[${loop.index}].creationDate" value="${creationDate}"/>
			<input type="hidden"  name="RLSDetails[${loop.index}].createdBy" value="${createdBy}"/>
			<input type="hidden"  id="projectDuration" name="RLSDetails[${loop.index}].projectDuration" value="${project_duration}"/>
			</td>
		   
     
         <td align="left" class="y2"><Input type="text" class="h'+${loop.index}+' v2" name="RLSDetails[${loop.index}].daysYear2" id="daysYear2" value="${e.daysYear2}" pattern="[0-9]+" title="Please enter digits"></td>
	    
	    <td align="left" class="y3"><Input type="text" class="h'+${loop.index}+' v3" name="RLSDetails[${loop.index}].daysYear3" id="daysYear3" value="${e.daysYear3}" pattern="[0-9]+" title="Please enter digits"></td>
	    
	    <td align="left" class="y4"><Input type="text" class="h'+${loop.index}+' v4" name="RLSDetails[${loop.index}].daysYear4" id="daysYear4" value="${e.daysYear4}" pattern="[0-9]+" title="Please enter digits"></td>
	    
	    <td align="left" class="y5"><Input type="text" class="h'+${loop.index}+' v5" name="RLSDetails[${loop.index}].daysYear5" id="daysYear5" value="${e.daysYear5}" pattern="[0-9]+" title="Please enter digits"></td>
	    
	    <td align="left" class="y6"><Input type="text" class="h'+${loop.index}+' v6" name="RLSDetails[${loop.index}].daysYear6" id="daysYear6" value="${e.daysYear6}" pattern="[0-9]+" title="Please enter digits"></td>
	    
	    <td align="left" class="y7"><Input type="text" class="h'+${loop.index}+' v7" name="RLSDetails[${loop.index}].daysYear7" id="daysYear7" value="${e.daysYear7}" pattern="[0-9]+" title="Please enter digits"></td>
	    
		<td align="left" class="y8"><Input type="text" class="h'+${loop.index}+' v8" name="RLSDetails[${loop.index}].daysYear8" id="daysYear8" value="${e.daysYear8}" pattern="[0-9]+" title="Please enter digits"></td>
		
		<td align="left" class="y9"><Input type="text" class="h'+${loop.index}+' v9" name="RLSDetails[${loop.index}].daysYear9" id="daysYear9" value="${e.daysYear9}" pattern="[0-9]+" title="Please enter digits"></td>
		
		<td align="left" class="y10"><Input type="text" class="h'+${loop.index}+' v10" name="RLSDetails[${loop.index}].daysYear10" id="daysYear10" value="${e.daysYear10}" pattern="[0-9]+" title="Please enter digits"></td>
		
		<td align="left" ><Input type="text" class="myTotal" name="RLSDetails[${loop.index}].total" id="total'+${loop.index}+'" value="${e.total}"></td>
		<td align="left"><Button type="button" class="btn btn-info mr-1" name="remove" value="Remove" onclick="DeleteRow(${loop.index})">Remove</Button></td>
						</tr>
		  </c:forEach>
   </tbody>
   	<tfoot>
	<tr>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td class="y1"><span style="color:black;font-weight:bold">Y1 Total :</span><span style="color:blue;font-weight:bold" id="YearTotal1"></span></td>
	<td class="y2"><span style="color:black;font-weight:bold">Y2 Total :</span><span style="color:blue;font-weight:bold" id="YearTotal2"></span></td>
	<td class="y3"><span style="color:black;font-weight:bold">Y3 Total :</span><span style="color:blue;font-weight:bold" id="YearTotal3"></span></td>
	<td class="y4"><span style="color:black;font-weight:bold">Y4 Total :</span><span style="color:blue;font-weight:bold" id="YearTotal4"></span></td>
	<td class="y5"><span style="color:black;font-weight:bold">Y5 Total :</span><span style="color:blue;font-weight:bold" id="YearTotal5"></span></td>
	<td class="y6"><span style="color:black;font-weight:bold">Y6 Total :</span><span style="color:blue;font-weight:bold" id="YearTotal6"></span></td>
    <td class="y7"><span style="color:black;font-weight:bold">Y7 Total :</span><span style="color:blue;font-weight:bold" id="YearTotal7"></span></td>
	<td class="y8"><span style="color:black;font-weight:bold">Y8 Total :</span><span style="color:blue;font-weight:bold" id="YearTotal8"></span></td>
	<td class="y9"><span style="color:black;font-weight:bold">Y9 Total :</span><span style="color:blue;font-weight:bold" id="YearTotal9"></span></td>
	<td class="y10"><span style="color:black;font-weight:bold">Y10 Total :</span><span style="color:blue;font-weight:bold" id="YearTotal10"></span></td>
   <td><span style="color:black;font-weight:bold">Total :</span><span style="color:blue;font-weight:bold" id="grandTotal"></span></td>

	</tr>
	</tfoot>
   </table>
   <br>
 </div>
  <table>
   <tr>
		<td align="left">
		<c:choose>
		 <c:when test="${sessionScope.roleName=='Sales SPOC' || sessionScope.roleName=='CMC SPOC' || sessionScope.roleName=='PreSales Head'}">
		<button type="button" class="btn btn-info mr-1" name="AddMore" id="addmore" onclick="Add()" disabled>Add More</button>
		<button type="submit" class="btn btn-info mr-1" name="submit" id="submit" disabled>Submit</button>
		</c:when>
		<c:otherwise>
		<button type="button" class="btn btn-info mr-1" name="AddMore" id="addmore" onclick="Add()">Add More</button>
		<button type="submit" class="btn btn-info mr-1" name="submit" id="submit">Submit</button>
		</c:otherwise>
		</c:choose>
		</td>
	</tr>
 </table>
</form:form>

<script type="text/javascript">

       function DeleteRow(objId){
       	   var rowT = document.getElementById("myrow_" + objId);
    	   rowT.parentNode.removeChild(rowT);
       }
      
       var row = document.getElementById("listCount").value;
       var projectduration1=document.getElementById("projectduration").value; 
       function Add() {

	        var horizontalClass = "hh"+row;
	   	    var verticalClass = "vv"+row;
	   	    var totaIdObj  = "myTotal" +row;
	   	    
                   	   
			var addMoreString = '<tr id="myrow_'+ row +'">';
	
   	       	addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].projectPhaseId">'
	          					  +document.getElementById("projectPhase").innerHTML+'</select></td>';
	          						          					  
			addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].verticalId">'
								  +document.getElementById("vertical").innerHTML+'</select></td>';
								  
			addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].towerId">'
								   +document.getElementById("tower").innerHTML+ '</select></td>';
								   
			addMoreString +=   '<td align="left"><Input type="text" name="RLSDetails['+row+'].subTower" value="" ></td>';
			
		    addMoreString +=   '<td align="left"><Input type="text" name="RLSDetails['+row+'].role" value="" ></td>';
		    
			addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].billableId">'
							       +document.getElementById("billable").innerHTML+'</select></td>';
							       
			addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].workPlaceId">'
								    +document.getElementById("loc").innerHTML+'</select></td>';
							 	    
			addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].locationId">'
								    +document.getElementById("country").innerHTML+'</select></td>';

			addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].cityId">'
								    +document.getElementById("city").innerHTML+'</select></td>';
								    
		    addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].skillTypeId">'
		   							+document.getElementById("skillType").innerHTML+'</select></td>';
		   							
			addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].resourceTypeId">'
			 						+document.getElementById("local").innerHTML+'</select></td>';
			 						
			addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].bandId">'
									+document.getElementById("band").innerHTML+' </select></td>';
								    
			addMoreString +=   '<td align="left"><select name="RLSDetails['+row+'].premisesId">'
									+document.getElementById("premises").innerHTML+'</select></td>'; 
									
			addMoreString +=  '<td align="left"><Input type="text" name="RLSDetails['+row+'].remarks"></td>';
			
			addMoreString +=  '<td align="left" class="y1"><Input class="'+horizontalClass+' v1" type="text" name="RLSDetails['+row+'].daysYear1" value="" pattern="[0-9]+" title="Please enter digits"></td>';
			
			addMoreString +=  '<td align="left" class="y2"><Input class="'+horizontalClass+' v2" type="text" name="RLSDetails['+row+'].daysYear2" value="" pattern="[0-9]+" title="Please enter digits"></td>';
			
			addMoreString +=  '<td align="left" class="y3"><Input class="'+horizontalClass+' v3" type="text" name="RLSDetails['+row+'].daysYear3" value="" pattern="[0-9]+" title="Please enter digits"></td>';
			
			addMoreString +=  '<td align="left" class="y4"><Input class="'+horizontalClass+' v4" type="text" name="RLSDetails['+row+'].daysYear4" value="" pattern="[0-9]+" title="Please enter digits"></td>';
			
			addMoreString +=  '<td align="left" class="y5"><Input class="'+horizontalClass+' v5" type="text" name="RLSDetails['+row+'].daysYear5" value="" pattern="[0-9]+" title="Please enter digits"></td>';
			
			addMoreString +=  '<td align="left" class="y6"><Input class="'+horizontalClass+' v6" type="text" name="RLSDetails['+row+'].daysYear6" value="" pattern="[0-9]+" title="Please enter digits"></td>';
			
			addMoreString +=  '<td align="left" class="y7"><Input class="'+horizontalClass+' v7" type="text" name="RLSDetails['+row+'].daysYear7" value="" pattern="[0-9]+" title="Please enter digits"></td>';
			
			addMoreString +=  '<td align="left" class="y8"><Input class="'+horizontalClass+' v8" type="text" name="RLSDetails['+row+'].daysYear8" value="" pattern="[0-9]+" title="Please enter digits"></td>';
			
			addMoreString +=  '<td align="left" class="y9"><Input class="'+horizontalClass+' v9" type="text" name="RLSDetails['+row+'].daysYear9" value="" pattern="[0-9]+" title="Please enter digits"></td>';
			
			addMoreString +=  '<td align="left" class="y10"><Input class="'+horizontalClass+' v10" type="text" name="RLSDetails['+row+'].daysYear10" value="" pattern="[0-9]+" title="Please enter digits"></td>';
			
			addMoreString +=  '<td align="left"><Input class="myTotal" type="text" name="RLSDetails['+row+'].total" value="" id="'+totaIdObj+'">'+
			
							   '<Input type="hidden" name="RLSDetails['+row+'].dsId" value="${dl_id_key}" >'+
							   '<input type="hidden" name="RLSDetails['+row+'].trackingNumber" value="${trackingNumber}"/>'+
							   '<input type="hidden" name="RLSDetails['+row+'].creationDate" value="${creationDate}"/>'+
							   '<input type="hidden" name="RLSDetails['+row+'].createdBy" value="${createdBy}"/></td>';
							 
			
          	addMoreString +=  '<td align="left"><button type="button" class="btn btn-info mr-1" name="remove" value="Remove" onclick="DeleteRow('+row+')">Remove</button></td>';
          	
          	addMoreString +=  '</tr>'; 

           //	alert(addMoreString);
          	
          $("#myTableObj").append(addMoreString);

        //Calling function for hiding extra daysYear columns
     		showHideCol(projectduration1);
     		
       //Calling function for horizontal total
          $("."+horizontalClass).each(function() {

     			$(this).keyup(function(){
     				calculateSum(horizontalClass,totaIdObj);
     			});
     		});
          	 row++;
          	
       }
</script>

 <script>
    //document.ready start
	$(document).ready(function(){
		
		//Calling function for hiding extra daysYear columns
			showHideCol(projectduration1);
		
		
		// For populating cities in city drop down
			 $('#country').on('change', function(){

				//alert("Hello");
				var countryId = $(this).val();
				
				$.ajax({
					type: 'GET',
                    url: '/getCities',
                   data:{ countryId: countryId}, 
                   
					success: function(result) {
						//alert("Hello2"+result);
						var result = JSON.parse(result);
						
						//alert("Hello3"+result);
						var s = '';
						for(var i = 0; i < result.length; i++) {
							s += '<option value="' + result[i].cityId + '">' + result[i].city + '</option>';
						} 
						$('#city').html(s);
					},
					error: function () {
	                    alert("error");
	                }
				});
			});
	//End
 		
			
        //Calling function for horizontal total
        
         var row = document.getElementById("listCount").value;

       for(int i=0;i<row;i++)
         {
		$(".h"+i).each(function() {

			$(this).keyup(function(){
				calculateSum('h'+i,'total'+i);
			});
		});

         }
		
	});
	//document.ready end

	  //Function for hiding daysYear columns 
		function showHideCol(projectduration1){
								
			for(i=1; i<=projectduration1; i++){
				
				//alert(".y"+i);
				$(".y"+i).show();
				
			}
			
		}

	// Function to calculate columns values total
	var grandTotalSum = 0;
	function calculateSum(className,classTotal) {
		var sum = 0;
		//iterate through each textboxes and add the values
		$("."+className).each(function() {

			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				sum += parseFloat(this.value);
			}

		});
		 document.getElementById(classTotal).value = sum
	}
	//End
	
	$("input").hover(function(){
		totCalc();
	});
	$("input").blur(function(){
		totCalc();
	});
	$(document).hover(function(){
		totCalc();
	});
	

	//Function to calculate vertical totals
	function totCalc(){
		 //alert("hello");
		var mySum = 0,mySum1=0;
		//iterate through each textboxes and add the values
		$(".myTotal").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				mySum += parseFloat(this.value);
			}

		});
		$("#grandTotal").html(mySum);

		
		for(i=1; i<=projectduration1; i++){
			mySum1=0;
			$(".v"+i).each(function() {

				if(!isNaN(this.value) && this.value.length!=0) {
					mySum1 += parseFloat(this.value);
				}
			});
			$("#YearTotal"+i).html(mySum1);
		}

		
	}
 //End
</script>

<script>
function validate()
{
	var x, text;

	  // Get the value of the input field with id="numb"
	  x = document.getElementById("daysYear1").value;

	  // If x is Not a Number or less than one or greater than 10
	  if (isNaN(x) || x < 0) {
	    text = "Input not valid";
	  } else {
	    text = "Input OK";
	  }
}

</script>

<!--  Form End---- -->

<br><br><br>
<div style="overflow-x:auto;">
  <table class="table table-bordered table-sm" id="tblRLS">
  	<thead>
   	 <tr>
   		<th align="left">Version Id</th>
		<th align="left">Creation Date</th>
     	<th align="left">Created By</th>
 		
	    </tr>
    </thead>
  		 <c:forEach items="${rlsDetailsSorted}" var="e">
						<tr>
							<td><a href="/getRLSDetails1?trackingNo=${e.trackingNumber}&dsld=${dl_id_key}&durayear=${e.projectDuration}"><c:out value=" ${e.trackingNumber}" /></a></td>
							<td><c:out value=" ${e.creationDate}" /></td>
							<td><c:out value=" ${sessionScope.name}" /></td>
							
						</tr>
		  </c:forEach>
	   
	
 </table>
 </div>

<%-- <br>
<a href="/getRLSDetails?dsld=${dl_id_key}">View Added Details</a>
<br>
<a href="/excelExport.xls?dsld=${dl_id_key}">Excel Export</a> --%>

<br>
</div>
</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>