<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp" />

<style>
.y1, .y2, .y3, .y4, .y5, .y6, .y7, .y8, .y9, .y10{
display:none;
}
</style>
<div class="container-fluid">
         <div class="row">
                    <div class="col-md-12" style ="margin-top:20px;">
 

<h1> View and  Edit Page</h1>





<form:form action="ProjectCostsDetails" modelAttribute="projectCostList">
<div style="overflow-x:auto;">
  <table border=1 id="tblProjects">
  	<thead>
   <tr>
   		<th  align="center">Tower</th>
		<th align="center">Cost Category</th>
     	<th align="center">Cost Item</th>
 		<th align="center">Cost Type</th>
 		<th align="center">Description</th>
      	<th class="y1" align="center">Y1</th>
 		<th class="y2" align="center">Y2</th>
 		<th class="y3" align="center">Y3</th>
    	<th class="y4" align="center">Y4</th>
   		<th class="y5" align="center">Y5</th>
 		<th class="y6" align="center">Y6</th>
     	<th class="y7" align="center">Y7</th>
     	<th class="y8" align="center">Y8</th>
     	<th class="y9" align="center">Y9</th>
		<th class="y10" align="center">Y10</th>
		<th align="center">Total</th>
		<th></th>
    </tr>  
		</thead>
	<tr>	<td> <input type="hidden"  id="listCount" name="listCount" value="${count}"/>
		 	<td> <td>  <input type="hidden"  id="projectduration2" name="project_duration" value="${project_duration2}"/> </td>
    </tr>
    
    <tbody id="myTableObj">
   
    
     <c:forEach items="${projectCostsview}" var="allEmp" varStatus="loop"> 
   
    <tr>
	     <td align="left"><select id="towerId" name="projectCost[${loop.index}].tower" >
		 <c:forEach items="${towerList}" var="tower">
		        <option value="${tower.towerId}" ${tower.towerId == allEmp.towerId ? 'selected="selected"' : ''}>${tower.tower}</option>
		    </c:forEach>
	 	  </select></td>
 	  
	     <td align="left"><select id="costCategoryId" name="projectCost[${loop.index}].costCategory">
		  <c:forEach items="${costCategoryList}" var="costCategory">
		        <option value="${costCategory.costCategoryId}" ${costCategory.costCategoryId == allEmp.costCategoryId ? 'selected="selected"' : ''}>${costCategory.costCategory}</option>
		    </c:forEach>
		  </select></td>
	  
	     <td align="left"><select id="costItemId" name="projectCost[${loop.index}].costItem" >
		   <c:forEach items="${CostItemList}" var="costItem">
		        <option value="${costItem.costItemId}" ${costItem.costItemId == allEmp.costItemId ? 'selected="selected"' : ''}>${costItem.costItem}</option>
		    </c:forEach>
		  </select></td>
		   
		 <td align="left"><select id="costTypeId" name="projectCost[${loop.index}].costType">
		 <c:forEach items="${CostTypeList}" var="costType">
		        <option value="${costType.costTypeId}"  ${costType.costTypeId == allEmp.costTypeId ? 'selected="selected"' : ''}>${costType.costType}</option>
		    </c:forEach>
		  </select></td>
			  
	    <td align="left"><textarea id="description" name="projectCost[${loop.index}].description"  rows="2" cols="20"> <c:out value="${allEmp.description}" /></textarea>
	    <input type="hidden"  id="mydealid" name="projectCost[${loop.index}].dl_id" value="${allEmp.dl_id}"/>
			<input type="hidden"  id="timestamp" name="projectCost[${loop.index}].time_stamp" value="${timestamp_key}"/>
			
			<input type="hidden"  id="projectduration" name="projectCost[0].project_duration" value="${allEmp.project_duration}"/>
	    
	    </td>
		 
		<td align="left" class="y1" ><Input class="h v"  type="text" name="projectCost[${loop.index}].daysYear1" value="${allEmp.daysYear1}" >
		
			
		</td>
		
	    
     
         <td align="left" class="y2" ><Input class="h v" type="text" name="projectCost[${loop.index}].daysYear2" id="daysYear2" value="${allEmp.daysYear2}"></td>
	    
	   <td align="left" class="y3" ><Input class="h v" type="text" name="projectCost[${loop.index}].daysYear3" id="daysYear3" value="${allEmp.daysYear3}"></td>
	    
	    <td align="left" class="y4" ><Input class="h v" type="text" name="projectCost[${loop.index}].daysYear4" id="daysYear4" value="${allEmp.daysYear4}"></td>
	    
	    <td align="left" class="y5" ><Input class="h v" type="text" name="projectCost[${loop.index}].daysYear5" id="daysYear5" value="${allEmp.daysYear5}"></td>
	    
	    <td align="left" class="y6" ><Input class="h v" type="text" name="projectCost[${loop.index}].daysYear6" id="daysYear6" value="${allEmp.daysYear6}"></td>
	    
	   <td align="left" class="y7" ><Input class="h v" type="text" name="projectCost[${loop.index}].daysYear7" id="daysYear7" value="${allEmp.daysYear7}"></td>
	    
		<td align="left" class="y8" ><Input type="text" name="projectCost[${loop.index}].daysYear8" id="daysYear8" value="${allEmp.daysYear8}"></td>
		
		<td align="left" class="y9" ><Input class="h v" type="text" name="projectCost[${loop.index}].daysYear9" id="daysYear9" value="${allEmp.daysYear9}"></td>
		
		<td align="left" class="y10" ><Input class="h v" type="text" name="projectCost[${loop.index}].daysYear10" id="daysYear10" value="${allEmp.daysYear10}"></td>
		
		<td align="left"><Input class="myTotal" type="text" name="projectCost[${loop.index}].total" id="total" value="${allEmp.total}"></td>
		
	 
	  
    </tr>
    </c:forEach>
    </tbody>
	
	<tfoot>
	<tr>
	<td ><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td class="y1"><span></span></td>
	<td class="y2"><span></span></td>
	<td class="y3"><span></span></td>
	<td class="y4"><span></span></td>
	<td class="y5"><span></span></td>
	<td class="y6"><span></span></td>
    <td class="y7"><span></span></td>
	<td class="y8"><span></span></td>
	<td class="y9"><span></span></td>
	<td class="y10"><span></span></td>
		<td><span>Total :</span><span id="grandTotal"></span></td>
	</tr>
	</tfoot>
	
     
    </table>
    
</div>
    
   <table>
   <tr>
		<td align="left">
		<Input type="button" name="AddMore" id="addmore" value="Add More" onclick="Add()" />
		<br>
		<input type="file" name="file" id="filepath" accept=".xls,.xlsx" />
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
      
       var row = 1;
       var projectduration1=document.getElementById("projectduration2").value; 
       function Add() {
    	     
    	    var dlId1 = document.getElementById("mydealid").value; 
    	    
    	    var timestamp1=document.getElementById("timestamp").value;
    	    
    	     
    	    
    	    var horizontalClass = "hh"+row;
    	    var verticalClass = "vv"+row;
    	    var totaIdObj  = "myTotal" +row;
    	   // var showhide=
			var addMoreString = '<tr id="myrow_'+ row +'">';
           
			addMoreString +=   '<td align="left"><select name="projectCost['+row+'].towerId">' +document.getElementById("towerId").innerHTML+'</select><Input type="hidden" name="projectCost['+row+'].time_stamp" value="'+timestamp1+'"></td>';
			  
			addMoreString +=   '<td align="left"><select name="projectCost['+row+'].costCategoryId">' +document.getElementById("costCategoryId").innerHTML+'</select><Input type="hidden" name="projectCost['+row+'].project_duration" value="'+projectduration1+'"></td>';
			addMoreString +=   '<td align="left"><select name="projectCost['+row+'].costItemId">' +document.getElementById("costItemId").innerHTML+'</select><Input type="hidden" name="projectCost['+row+'].dl_id" value="'+dlId1+'"></td>';
        	
			addMoreString +=   '<td align="left"><select name="projectCost['+row+'].projectPhase">' +document.getElementById("costTypeId").innerHTML+'</select></td>';
           	addMoreString += ' <td align="left"><textarea id="description" name="projectCost['+row+'].description" value=""  rows="2" cols="20"></textarea></td>';
           	addMoreString += ' <td align="left" class="y1"><Input class="'+horizontalClass+'"    type="text" name="projectCost['+row+'].daysYear1" value=""  id="daysYear1"></td>';
           	
          	addMoreString += ' <td align="left" class="y2"><Input class="'+horizontalClass+'"   type="text" name="projectCost['+row+'].daysYear2"></td>';
          	addMoreString += ' <td align="left" class="y3"><Input class="'+horizontalClass+'"    type="text" name="projectCost['+row+'].daysYear3"></td>';
          	addMoreString += ' <td align="left" class="y4"><Input class="'+horizontalClass+'"   type="text" name="projectCost['+row+'].daysYear4"></td>';
          	addMoreString += ' <td align="left" class="y5"><Input class="'+horizontalClass+'"   type="text" name="projectCost['+row+'].daysYear5"></td>';
          	addMoreString += ' <td align="left" class="y6"><Input class="'+horizontalClass+'"  type="text" name="projectCost['+row+'].daysYear6"></td>';
          	addMoreString += ' <td align="left" class="y7"><Input class="'+horizontalClass+'"  type="text" name="projectCost['+row+'].daysYear7"  ></td>';
          	addMoreString += ' <td align="left" class="y8"><Input class="'+horizontalClass+'"  type="text" name="projectCost['+row+'].daysYear8"></td>';
          	addMoreString += ' <td align="left" class="y9"><Input class="'+horizontalClass+'"    type="text" name="projectCost['+row+'].daysYear9"></td>';
        	addMoreString += ' <td align="left" class="y10"><Input class="'+horizontalClass+'"    type="text" name="projectCost['+row+'].daysYear10"></td>';
          	addMoreString += ' <td align="left"><Input type="text" class="myTotal" name="projectCost['+row+'].total" value="" id="'+totaIdObj+'" ></td>';
          	
            
           	addMoreString += ' <td align="left"><Input type="button" name="remove" value="Remove" onclick="DeleteRow('+row+')"></td>';
           	addMoreString += ' </tr>';
           	//alert(addMoreString);
           	//tabObj.appendChild(addMoreString);
           	 //mydiv = document.getElementById("myTableObj");
           	 
           //	 mydiv.innerHTML = mydiv.innerHTML +  addMoreString ; 
           
           alert(projectduration1);
          
           
           $("#myTableObj").append(addMoreString);
           showHideCol(projectduration1);
           $("."+horizontalClass).each(function() {

   			$(this).keyup(function(){
   				calculateSum(horizontalClass,totaIdObj);
   			});
   		});
           	 row++;
           	
       }
       
       function test(){
    	   
    	   alert('hello');
       }

</script>


    <script type="text/javascript">
 

    </script>
    
    
    <script>
	$(document).ready(function(){
		showHideCol(projectduration1);
 //alert('hi');
		//iterate through each textboxes and add keyup
		//handler to trigger sum event
		$(".h").each(function() {

			$(this).keyup(function(){
				calculateSum('h','total');
			});
		});
		
		
		

	});
	
	function showHideCol(projectduration1){
		

		
		for(i=1; i<=projectduration1; i++){
			
			$(".y"+i).show();
			
		}
		
		
		
	}
	var grandTotalSum = 0;

	function calculateSum(className,classTotal) {
		// alert('hello' + classTotal);
		var sum = 0;
		//iterate through each textboxes and add the values
		$("."+className).each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				sum += parseFloat(this.value);
			}

		});
		//.toFixed() method will roundoff the final sum to 2 decimal places
		//$("#total").html(total);
		 

		 document.getElementById(classTotal).value = sum
		 //alert(sum);
	}
	
	$("input").hover(function(){
		totCalc();
	});
	$("input").blur(function(){
		totCalc();
	});
	$(document).hover(function(){
		totCalc();
	});
	
	
	function totCalc(){
		 //alert("hello");
		var mySum = 0;
		//iterate through each textboxes and add the values
		$(".myTotal").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				mySum += parseFloat(this.value);
			}

		});
		
		$("#grandTotal").html(mySum);
		
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
     	<th align="left">File Location</th>
 		
	    </tr>
    </thead>
<c:forEach items="${projectCostsviewTimp}" var="e"> 
<tr>
<td><a href="${pageContext.request.contextPath}/ProjectCostsView?timestampId=${e.time_stamp}&dsld=${e.dl_id}&durayear=${e.project_duration}">
		<c:out value=" ${e.time_stamp}" /></a></td>
		<td><c:out value=" ${e.creationDate}" /></td>
		<td><c:out value=" ${e.createdBy}" /></td>
		<td><a href="${e.filepath}">  <c:out value="Download file" /></a></td>
		</tr>
</c:forEach>
</table>


</div>

</div>
</div>
<jsp:include page="footer.jsp" />