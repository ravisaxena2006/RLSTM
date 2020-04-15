
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


 
<jsp:include page="header.jsp" />
<div class="container-fluid">
         <div class="row">
                    <div class="col-md-12" style ="margin-top:20px;">

 <form:form action="ProjectCostsDetails" modelAttribute="projectCostList">
<div style="overflow-x:auto;">
  <table border=1 id="tblProjects">
  	<thead>
    <tr>
   		<th align="center">Tower</th>
		<th align="center">Cost Category</th>
     	<th align="center">Cost Item</th>
 		<th align="center">Cost Type</th>
 		<th align="center">Description</th>
      	<th align="center">Y1</th>
 		<th align="center">Y2</th>
 		<th align="center">Y3</th>
    	<th align="center">Y4</th>
   		<th align="center">Y5</th>
 		<th align="center">Y6</th>
     	<th align="center">Y7</th>
     	<th align="center">Y8</th>
     	<th align="center">Y9</th>
		<th align="center">Y10</th>
		<th align="center">Total</th>
		<th></th>
		<td> <input type="hidden"  name="dlidkey" value="${dl_id_key}"/></td>
    </tr>
    </thead>
    <tbody id="myTableObj">
   
    <tr>
	    
	 	  
	 	    <td align="left"><select id="towerId" name="projectCost[0].towerId">
		  <c:forEach items="${towerList}" var="tower">
		        <option value="${tower.towerId}">${tower.tower}</option>
		    </c:forEach>
	 	  </select></td>
 	  
	
		  
		  
		  <td align="left"><select id="costCategoryId" name="projectCost[0].costCategoryId">
		  <c:forEach items="${costCategoryList}" var="costCategory">
		        <option value="${costCategory.costCategoryId}">${costCategory.costCategory}</option>
		    </c:forEach>
		  </select></td>
	
		   <td align="left"><select id="costItemId" name="projectCost[0].costItemId">
		    <c:forEach items="${CostItemList}" var="costItem">
		        <option value="${costItem.costItemId}">${costItem.costItem}</option>
		    </c:forEach>
		  </select></td>
		   
		 <td align="left"><select id="costTypeId" name="projectCost[0].costTypeId">
		    <c:forEach items="${CostTypeList}" var="costType">
		        <option value="${costType.costTypeId}">${costType.costType}</option>
		    </c:forEach>
		  </select></td>
			  
	    <td align="left"><textarea id="description" name="projectCost[0].description" rows="2" cols="20"></textarea></td>
		 
		<td align="left"><input class="h" type="text" name="projectCost[0].daysYear1" id="daysYear1">
		
		<input type="hidden"  id=mydealid  name="projectCost[0].dl_id" value="${dl_id_key}"/>
		
		<input type="hidden"  id="timestamp" name="projectCost[0].time_stamp" value="${timestamp_key}"/>
		 <input type="hidden" id="creationDate" name="projectCost[0].creationDate" value="${creationDate}" /> 
		 <input type="hidden"  id="createdBy" name="projectCost[0].createdBy" value="${createdBy}" />
		</td>
		
	    <td align="left"><input class="h" type="text" name="projectCost[0].daysYear2" id="daysYear2"></td>
	    
	    <td align="left"><input class="h" type="text" name="projectCost[0].daysYear3" id="daysYear3"></td>
	    
	    <td align="left"><input class="h" type="text" name="projectCost[0].daysYear4" id="daysYear4"></td>
	    
	    <td align="left"><input class="h"  type="text" name="projectCost[0].daysYear5" id="daysYear5"></td>
	    
	    <td align="left"><input class="h" type="text" name="projectCost[0].daysYear6" id="daysYear6"></td>
	    
	    <td align="left"><input class="h" type="text" name="projectCost[0].daysYear7" id="daysYear7"></td>
	    
		<td align="left"><input class="h" type="text" name="projectCost[0].daysYear8" id="daysYear8"></td>
		
		<td align="left"><input class="h" type="text" name="projectCost[0].daysYear9" id="daysYear9"></td>
		
		<td align="left"><input class="h" type="text" name="projectCost[0].daysYear10" id="daysYear10"></td>
		
		<td align="left"><input type="text" name="projectCost[0].total" id="total"></td>
		
	 
	
    </tr>
    </tbody>
	
	
    </table>
    
</div>
    
   <table>
   <tr>
		<td align="left">
		<Input type="button" name="AddMore" id="addmore" value="Add More" onclick="Add()" />
		<Input type="submit" name="submit" id="submit" value="submit">
		
		</td>
	</tr>
 </table>
</form:form>

<script type="text/javascript">

       function DeleteRow(objId){
    	 //  document.getElementById("myrow_" + objId).delete();
    	   
    	   var rowT = document.getElementById("myrow_" + objId);
    	   rowT.parentNode.removeChild(rowT);
       }
       var dlId1 = document.getElementById("mydealid").value;
	    
	    var timestamp1=document.getElementById("timestamp").value;

	    var creationDate1 = document.getElementById("creationDate").value;
	    var createdBy1 = document.getElementById("createdBy").value;
       var row = 1;
       function Add() {
    	     
    	    
    	   
			var addMoreString = '<tr id="myrow_'+ row +'">';
           
			addMoreString +=   '<td align="left"><select name="projectCost['+row+'].towerId">' +document.getElementById("towerId").innerHTML+'</select></td>';
			  
			addMoreString +=   '<td align="left"><select name="projectCost['+row+'].costCategoryId">' +document.getElementById("costCategoryId").innerHTML+'</select></td>';
			addMoreString +=   '<td align="left"><select name="projectCost['+row+'].costItemId">' +document.getElementById("costItemId").innerHTML+'</select></td>';
        	
			addMoreString +=   '<td align="left"><select name="projectCost['+row+'].projectPhase">' +document.getElementById("costTypeId").innerHTML+'</select></td>';
           	addMoreString += ' <td align="left"><textarea id="description" name="projectCost['+row+'].description" value=""  rows="2" cols="20"></textarea></td>';
           	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].daysYear1" value="" ></td>';
           	
          	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].daysYear2" value="" ></td>';
          	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].daysYear3" value="" ></td>';
          	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].daysYear4" value="" ></td>';
          	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].daysYear6" value="" ></td>';
          	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].daysYear6" value="" ></td>';
          	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].daysYear7" value="" ></td>';
          	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].daysYear8" value="" ></td>';
          	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].daysYear9" value="" ></td>';
          	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].daysYear10" value="" ></td>';
          	addMoreString += ' <td align="left"><Input type="text" name="projectCost['+row+'].total" value="" ></td>';
          	
        	addMoreString += ' <td align="left"><Input type="hidden" name="projectCost['+row+'].dl_id" value="'+dlId1+'"></td>';
        	
        	addMoreString += ' <td align="left"><Input type="hidden" name="projectCost['+row+'].time_stamp" value="'+timestamp1+'">'+
        	 '<input type="hidden" name="projectCost['+row+'].creationDate" value="'+creationDate1+'">'+
			   '<input type="hidden" name="projectCost['+row+'].createdBy" value="'+createdBy1+'"></td>';

            
           	addMoreString += ' <td align="left"><Input type="button" name="remove" value="Remove" onclick="DeleteRow('+row+')"></td>';
           	addMoreString += ' </tr>';
           	//alert(addMoreString);
           	//tabObj.appendChild(addMoreString);
           	 //mydiv = document.getElementById("myTableObj");
           	 
           //	 mydiv.innerHTML = mydiv.innerHTML +  addMoreString ; 
           
           $("#myTableObj").append(addMoreString);
           	 row++;
           	
       }
       
       function test(){
    	   
    	   //alert('hello');
       }

</script>

    <script>
	$(document).ready(function(){
 //alert('hi');
		//iterate through each textboxes and add keyup
		//handler to trigger sum event
		$(".h").each(function() {

			$(this).keyup(function(){
				calculateSum();
			});
		});

	});

	function calculateSum() {
		 //alert('hello');
		var sum = 0;
		//iterate through each textboxes and add the values
		$(".h").each(function() {

			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				sum += parseFloat(this.value);
			}

		});
		//.toFixed() method will roundoff the final sum to 2 decimal places
		//$("#total").html(total);
		 document.getElementById('total').value = sum
		 //alert(sum);
	}

	
</script>


<!--  Form End---- -->

<br>

<table border="1">
<thead>
   	 <tr>
   		<th align="left">Version Id</th>
		<th align="left">Creation Date</th>
     	<th align="left">Created By</th>
 		
	    </tr>
    </thead>
<c:forEach items="${projectCostsviewTimp}" var="e"> 
<tr>
<td><a href="${pageContext.request.contextPath}/ProjectCostsView?timestampId=${e.time_stamp}&dsld=${e.dl_id}">
          <c:out value=" ${e.time_stamp}" /></a></td>
		<td><c:out value=" ${e.creationDate}" /></td>
		<td><c:out value=" ${e.createdBy}" /></td>
		</tr>
</c:forEach>
</table>
<br><a href="/view" class="button">Home</a>
</div>
</div>
</div>
<jsp:include page="footer.jsp" />
