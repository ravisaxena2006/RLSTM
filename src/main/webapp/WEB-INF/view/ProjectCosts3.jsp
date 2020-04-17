
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


 
<jsp:include page="header.jsp" />

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

</style>
<div class="container-fluid">

         <div class="row">
                    <div class="col-md-12" style ="margin-top:20px;">
<h2 class="text-center">
				<b>Project Cost</b>
			</h2>
<br>
<div class="row">	
	
			<div class="btn-group pull-left " style="width:1080px">
			<div class="text-right">
			<a href="/view?dsld=${Bid_ID}&durayear=${sessionScope.duryr}" class="btn btn-info">Deal Specs</a>
			 <a href="/RLS?dsld=${Bid_ID}&durayear=${sessionScope.duryr}" class="btn btn-info">RLS</a>
			 <a href="/BoughtOuts?dsld=${Bid_ID}&durayear=${sessionScope.duryr}" class="btn btn-info">Bought-Out</a>
			 </div>
			</div>
</div> 

 <form:form action="ProjectCostsDetails" modelAttribute="projectCostList" enctype="multipart/form-data">
<div style="overflow-x:auto;">
  <table class="table table-bordered" id="tblProjects">
  	<thead>
    <tr>
   		<th align="center">Tower</th>
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
		  </select>
		  <input type="hidden"  id=mydealid  name="projectCost[0].dl_id" value="${dl_id_key}"/>
		
		<input type="hidden"  id="timestamp" name="projectCost[0].time_stamp" value="${timestamp_key}"/>
		<input type="hidden"  name="dlidkey" value="${dl_id_key}"/>
		<input type="hidden"  id="projectduration" name="project_duration" value="${project_duration}"/>
		<input type="hidden"  id="projectduration" name="projectCost[0].project_duration" value="${project_duration}"/>
		<input type="hidden" id="creationDate" name="projectCost[0].creationDate" value="${creationDate}" /> 
		 <input type="hidden"  id="createdBy" name="projectCost[0].createdBy" value="${createdBy}" />
		  </td>
			  
	    <td align="left"><input type="text" id="description"  size = 11 name="projectCost[0].description" >
	    
	    </td>
		 
		<td align="left" class="y1" ><Input class="h v ty1"  size=10 type="text" pattern="\d*" name="projectCost[0].daysYear1" id="daysYear1" required>	</td>
		
	    <td align="left" class="y2"><Input class="h v ty2" size =10 type="text" pattern="\d*" name="projectCost[0].daysYear2" id="daysYear2"></td>
	    
	    <td align="left" class="y3"><Input class="h v ty3" size =10  type="text" pattern="\d*" name="projectCost[0].daysYear3" id="daysYear3"></td>
	    
	    <td align="left" class="y4"><Input  class="h v ty4" size =10  type="text" pattern="\d*" name="projectCost[0].daysYear4" id="daysYear4"></td>
	    
	    <td align="left" class="y5"><Input class="h v ty5" size =10  type="text" pattern="\d*" name="projectCost[0].daysYear5" id="daysYear5"></td>
	    
	    <td align="left" class="y6"><Input class="h v ty6" size =10  type="text" pattern="\d*" name="projectCost[0].daysYear6" id="daysYear6"></td>
	    
	    <td align="left" class="y7"><Input class="h v ty7" size =10  type="text" pattern="\d*" name="projectCost[0].daysYear7" id="daysYear7"></td>
	    
		<td align="left" class="y8"><Input  class="h v ty8" size =10   type="text" pattern="\d*" name="projectCost[0].daysYear8" id="daysYear8"></td>
		
		<td align="left" class="y9"><Input class="h v ty9" size =10 type="text" pattern="\d*" name="projectCost[0].daysYear9" id="daysYear9"></td>
		
		<td align="left" class="y10"><Input class="h v ty10" size =10   type="text" pattern="\d*" name="projectCost[0].daysYear10" id="daysYear10"></td>
		
		<td align="left"><Input  type="text" readonly="readonly" size =10 name="projectCost[0].total" id="total" class="myTotal"></td>
		
	 
	
    </tr>
    </tbody>
	<tfoot>
	<tr>
	
	<td ><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td class="y1"><span style="color:black;font-weight:bold">Y1 Total :</span><span style="color:blue;font-weight:bold" id="gy1Total"></span></td>
	<td class="y2"><span style="color:black;font-weight:bold">Y2 Total :</span><span style="color:blue;font-weight:bold" id="gy2Total"></span></td>
	<td class="y3"><span style="color:black;font-weight:bold">Y3 Total :</span><span style="color:blue;font-weight:bold" id="gy3Total"></span></td>
	<td class="y4"><span style="color:black;font-weight:bold">Y4 Total :</span><span style="color:blue;font-weight:bold" id="gy4Total"></span></td>
	<td class="y5"><span style="color:black;font-weight:bold">Y5 Total :</span><span style="color:blue;font-weight:bold" id="gy5Total"></span></td>
	<td class="y6"><span style="color:black;font-weight:bold">Y6 Total :</span><span style="color:blue;font-weight:bold" id="gy6Total"></span></td>
	<td class="y7"><span style="color:black;font-weight:bold">Y7 Total :</span><span style="color:blue;font-weight:bold" id="gy7Total"></span></td>
	<td class="y8"><span style="color:black;font-weight:bold">Y8 Total :</span><span style="color:blue;font-weight:bold" id="gy8Total"></span></td>
	<td class="y9"><span style="color:black;font-weight:bold">Y9 Total :</span><span style="color:blue;font-weight:bold" id="gy9Total"></span></td>
	 <td class="y10"><span>Y10Total :</span><span id="gy10Total"></span></td>
	  <td><span style="color:black;font-weight:bold">Total :</span>
	<span style="color:blue;font-weight:bold" id="grandTotal"></span></td>
	</tr>
	</tfoot>
	
    </table>
    
</div>
<br>
    
   <table>
   <tr>
		<td align="left">
		
		
		
		
		<button type="button" class="btn btn-info mr-1" name="AddMore" id="addmore" onclick="Add()">Add More</button>
		<div class="file btn btn-info mr-1">	
							<input type="file" name="file" id="filepath" accept=".xls,.xlsx" required="required" />
						</div>
		<br> <br>
		<button type="submit" class="btn btn-info" name="submit" id="submit" >Submit</button>
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
       var projectduration1=document.getElementById("projectduration").value; 
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
           	addMoreString += ' <td align="left"><Input type="text" id="description" name="projectCost['+row+'].description" value="" size =11  ></td>';
           	addMoreString += ' <td align="left" class="y1"><Input class="'+horizontalClass+' ty1" size =10   type="text" name="projectCost['+row+'].daysYear1" value=""  id="daysYear1"></td>';
           	
          	addMoreString += ' <td align="left" class="y2"><Input class="'+horizontalClass+' ty2"  size =10 type="text" name="projectCost['+row+'].daysYear2"></td>';
          	addMoreString += ' <td align="left" class="y3"><Input class="'+horizontalClass+' ty3" size =10   type="text" name="projectCost['+row+'].daysYear3"></td>';
          	addMoreString += ' <td align="left" class="y4"><Input class="'+horizontalClass+' ty4" size =10  type="text" name="projectCost['+row+'].daysYear4"></td>';
          	addMoreString += ' <td align="left" class="y5"><Input class="'+horizontalClass+' ty5" size =10  type="text" name="projectCost['+row+'].daysYear5"></td>';
          	addMoreString += ' <td align="left" class="y6"><Input class="'+horizontalClass+' ty6" size =10 type="text" name="projectCost['+row+'].daysYear6"></td>';
          	addMoreString += ' <td align="left" class="y7"><Input class="'+horizontalClass+' ty7" size =10 type="text" name="projectCost['+row+'].daysYear7"  ></td>';
          	addMoreString += ' <td align="left" class="y8"><Input class="'+horizontalClass+' ty8" size =10 type="text" name="projectCost['+row+'].daysYear8"></td>';
          	addMoreString += ' <td align="left" class="y9"><Input class="'+horizontalClass+' ty9" size =10   type="text" name="projectCost['+row+'].daysYear9"></td>';
        	addMoreString += ' <td align="left" class="y10"><Input class="'+horizontalClass+' ty10" size =10   type="text" name="projectCost['+row+'].daysYear10"></td>';
          	addMoreString += ' <td align="left"><Input type="text" class="myTotal" size =10 name="projectCost['+row+'].total" value="" id="'+totaIdObj+'" ></td>';
          	
            
           	addMoreString += ' <td align="left"><button type="button" class="btn btn-info mr-1" name="remove" value="Remove" onclick="DeleteRow('+row+')">Remove</button></td>';
           	addMoreString += ' </tr>';
           	//alert(addMoreString);
           	//tabObj.appendChild(addMoreString);
           	 //mydiv = document.getElementById("myTableObj");
           	 
           //	 mydiv.innerHTML = mydiv.innerHTML +  addMoreString ; 
           
          // alert(projectduration1);
          
           
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
		
		totaly1Calc();
		totaly2Calc();
		totaly3Calc();
		totaly4Calc();
		totaly5Calc();
		totaly6Calc();
		totaly7Calc();
		totaly8Calc();
		totaly9Calc();
		totaly10Calc();
	});
	$("input").blur(function(){
		totCalc();

		totaly1Calc();
		totaly2Calc();
		totaly3Calc();
		totaly4Calc();
		totaly5Calc();
		totaly6Calc();
		totaly7Calc();
		totaly8Calc();
		totaly9Calc();
		totaly10Calc();
	});
	$(document).hover(function(){
		totCalc();

		totaly1Calc();
		totaly2Calc();
		totaly3Calc();
		totaly4Calc();
		totaly5Calc();
		totaly6Calc();
		totaly7Calc();
		totaly8Calc();
		totaly9Calc();
		totaly10Calc();
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


//---prem function----1
	
	function totaly1Calc(){
		// alert("hello y1");
		var y1Sum = 0;
		//iterate through each textboxes and add the values
		$(".ty1").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y1Sum += parseFloat(this.value);
			}

		});
		
		$("#gy1Total").html(y1Sum);
		
	}
	
	//---prem function----2
	
	function totaly2Calc(){
		// alert("hello y1");
		var y2Sum = 0;
		//iterate through each textboxes and add the values
		$(".ty2").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y2Sum += parseFloat(this.value);
			}

		});
		
		$("#gy2Total").html(y2Sum);
		
	}
	//---prem function----3
	function totaly3Calc(){
		// alert("hello y1");
		var y3Sum = 0;
		//iterate through each textboxes and add the values
		$(".ty3").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y3Sum += parseFloat(this.value);
			}

		});
		
		$("#gy3Total").html(y3Sum);
		
	}
	
	//---prem function----4
	function totaly4Calc(){
		// alert("hello y1");
		var y4Sum = 0;
		//iterate through each textboxes and add the values
		$(".ty4").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y4Sum += parseFloat(this.value);
			}

		});
		
		$("#gy4Total").html(y4Sum);
		
	}
	
	//---prem function----5
	function totaly5Calc(){
		// alert("hello y1");
		var y5Sum = 0;
		//iterate through each textboxes and add the values
		$(".ty5").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y5Sum += parseFloat(this.value);
			}

		});
		
		$("#gy5Total").html(y5Sum);
		
	}
	//---prem function----6
	function totaly6Calc(){
		// alert("hello y1");
		var y6Sum = 0;
		//iterate through each textboxes and add the values
		$(".ty6").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y6Sum += parseFloat(this.value);
			}

		});
		
		$("#gy6Total").html(y6Sum);
		
	}
	//---prem function----7
	function totaly7Calc(){
		// alert("hello y1");
		var y7Sum = 0;
		//iterate through each textboxes and add the values
		$(".ty7").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y7Sum += parseFloat(this.value);
			}

		});
		
		$("#gy7Total").html(y7Sum);
		
	}
	
	//---prem function----8
	function totaly8Calc(){
		// alert("hello y1");
		var y8Sum = 0;
		//iterate through each textboxes and add the values
		$(".ty8").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y8Sum += parseFloat(this.value);
			}

		});
		
		$("#gy8Total").html(y8Sum);
		
	}
	//---prem function----9
	function totaly9Calc(){
		// alert("hello y1");
		var y9Sum = 0;
		//iterate through each textboxes and add the values
		$(".ty9").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y9Sum += parseFloat(this.value);
			}

		});
		
		$("#gy9Total").html(y9Sum);
		
	}
	
	//---prem function----10
	function totaly10Calc(){
		// alert("hello y1");
		var y10Sum = 0;
		//iterate through each textboxes and add the values
		$(".ty10").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y10Sum += parseFloat(this.value);
			}

		});
		
		$("#gy10Total").html(y10Sum);
		
	}
	
</script>


<!--  Form End---- -->

<br>

<table class="table table-bordered table-sm">
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
		<td><c:out value=" ${sessionScope.name}" /></td>
		<td>
		<a href="/uploads/RLS_DB_MAPPING_V1.1.xlsx" class=" btn btn-info">
		<c:out value="Download" /></a></td>
		</tr>
</c:forEach>
</table>


</div>

</div>
</div>
<jsp:include page="footer.jsp" />


