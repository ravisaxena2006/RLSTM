<%@ page language="java" contentType="text/html; charset=UTF-8"
      pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp" />
<style>
.y1, .y2, .y3, .y4, .y5, .y6, .y7, .y8, .y9, .y10{
display:none;
}
.s1, .s2, .s3, .s4, .s5, .s6, .s7, .s8, .s9, .s10{
display:none;
}
.o1, .o2, .o3, .o4, .o5, .o6, .o7, .o8, .o9, .o10{
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
    color: white;
    text-align: center;
}


</style>
<div class="container-fluid">
<h2 class="text-center">
				<b>Bought Out</b>
			</h2>
<br>
<div class="row">	
	
			<div class="btn-group pull-left " style="width:1080px">
			<div class="text-right">
			<a href="/bidview/${sessionScope.Bid_ID}" class="btn btn-info">Deal Specs</a>
			 <a href="/RLS?dsld=${Bid_ID}&durayear=${duryr}" class="btn btn-info">RLS</a>
			 <a href="/ProjectCosts?dsld=${Bid_ID}&durayear=${duryr}" class="btn btn-info">Project Cost</a>
			 
			 </div>
			</div>
</div> 
<div class="row">
                    <div class="col-md-12" style ="margin-top:20px;">

<!--  Form Started---- -->
<form:form action="BoughtOutsDetails" modelAttribute="boughtOutsList" method="post">
<div style="overflow-x:auto;">
  <table class="table table-bordered" id="tblProjects">
  	<thead>
  	<tr>
  	<th colspan =3 align="center" bgcolor="#66b3ff">Vendor\Products</th>
  	<th rowspan=2 align="center" bgcolor="#66b3ff">Amortize</th>
 	<th rowspan=2 align="center" bgcolor="#66b3ff">Quote Currency</th>
 	<th rowspan=2 align="center" bgcolor="#66b3ff">Quote Exists?</th>
 	 <!-- change by DC -->
    <c:if test="${sessionScope.roleName=='Sales SPOC' || sessionScope.roleName=='PreSales Head'}">
 	<th rowspan=2 align="center" bgcolor="#66b3ff"> Price Total</th>
   	 <th id="l1" colspan="auto" align="center" bgcolor="#66b3ff">Licence\Equipments</th> 
  	 <th id="sm" colspan="auto" align="center" bgcolor="#66b3ff">Support & Maintenance</th>
  	<th rowspan=2 align="center" bgcolor="#66b3ff">Professional Service</th>
 	<th rowspan=2 align="center" bgcolor="#66b3ff">Training</th>
  	 <th id="oth" colspan="auto" align="center" bgcolor="#66b3ff">Other</th>
  	 </c:if>
  	</tr>
    <tr>
   		<th align="center" bgcolor="#99CCFF">Tower</th>
		<th align="center" bgcolor="#99CCFF">Vendor</th>
     	<th align="center" bgcolor="#99CCFF">Product Description</th>
     	 <!-- change by DC -->
    <c:if test="${sessionScope.roleName=='Sales SPOC' || sessionScope.roleName=='PreSales Head'}">
       	<th class="y1" align="center" bgcolor="#99CCFF">Y1</th>
 		<th class="y2" align="center" bgcolor="#99CCFF">Y2</th>
 		<th class="y3" align="center" bgcolor="#99CCFF">Y3</th>
    	<th class="y4" align="center" bgcolor="#99CCFF">Y4</th>
   		<th class="y5" align="center" bgcolor="#99CCFF">Y5</th>
 		<th class="y6" align="center" bgcolor="#99CCFF">Y6</th>
     	<th class="y7" align="center" bgcolor="#99CCFF">Y7</th>
     	<th class="y8" align="center" bgcolor="#99CCFF">Y8</th>
     	<th class="y9" align="center" bgcolor="#99CCFF">Y9</th>
		<th class="y10" align="center" bgcolor="#99CCFF">Y10</th>
		<th align="center" bgcolor="#99CCFF">Licence Total</th>
		<th class="s1" align="center" bgcolor="#99CCFF">Y1</th>
 		<th class="s2" align="center" bgcolor="#99CCFF">Y2</th>
 		<th class="s3" align="center" bgcolor="#99CCFF">Y3</th>
    	<th class="s4" align="center" bgcolor="#99CCFF">Y4</th>
   		<th class="s5" align="center" bgcolor="#99CCFF">Y5</th>
 		<th class="s6" align="center" bgcolor="#99CCFF">Y6</th>
     	<th class="s7" align="center" bgcolor="#99CCFF">Y7</th>
     	<th class="s8" align="center" bgcolor="#99CCFF">Y8</th>
     	<th class="s9" align="center" bgcolor="#99CCFF">Y9</th>
		<th class="s10" align="center" bgcolor="#99CCFF">Y10</th>
		<th align="center" bgcolor="#99CCFF">S&M Total</th>
		
		<th align="center" bgcolor="#99CCFF">Description</th>
		<th class="o1" align="center" bgcolor="#99CCFF">Y1</th>
 		<th class="o2" align="center" bgcolor="#99CCFF">Y2</th>
 		<th class="o3" align="center" bgcolor="#99CCFF">Y3</th>
    	<th class="o4" align="center" bgcolor="#99CCFF">Y4</th>
   		<th class="o5" align="center" bgcolor="#99CCFF">Y5</th>
 		<th class="o6" align="center" bgcolor="#99CCFF">Y6</th>
     	<th class="o7" align="center" bgcolor="#99CCFF">Y7</th>
     	<th class="o8" align="center" bgcolor="#99CCFF">Y8</th>
     	<th class="o9" align="center" bgcolor="#99CCFF">Y9</th>
		<th class="o10" align="center" bgcolor="#99CCFF">Y10</th>
		<th align="center" bgcolor="#99CCFF">Other Total</th>
	 </c:if>
	
	</tr>		
  </thead>
  <tbody id="myTableObj">
    <tr>
	     <td align="left"><select id="towerId" name="boughtOuts[0].towerId">
		  <c:forEach items="${towerList}" var="tower">
		        <option value="${tower.towerId}">${tower.tower}</option>
		    </c:forEach>
	 	  </select>
	 	    <input type="hidden"  id="user" name="user" value="${sessionScope.roleName}"/>
		  	<input type="hidden"  name="dlidkey" value="${dl_id_key}"/>
			<input type="hidden"  id="projectduration" name="project_duration" value="${project_duration}"/>
			<input type="hidden" id=mydealid  name="boughtOuts[0].dlId" value="${dl_id_key}"/>
		 	<input type="hidden" id="timestamp" name="boughtOuts[0].timeStamp" value="${timestamp_key}"/>
		    <input type="hidden" id="creationDate" name="boughtOuts[0].creationDate" value="${creationDate}" />
		   	<input type="hidden"  id="createdBy" name="boughtOuts[0].createdBy" value="${createdBy}" />
		   	<input type="hidden"  id="projectduration" name="boughtOuts[0].project_duration" value="${project_duration}"/>
	 	  </td>
	 	  
	 	  <td align="left"><Input type="text" size=6 name="boughtOuts[0].vendor" id="vendor"></td>
	 	  	 	  
	 	  <td align="left"><Input type="text" size=11 name="boughtOuts[0].productDescription" id="productDescription"></td>
	 	  
	 	  <td align="left"><select id="amortizeId" name="boughtOuts[0].amortizeId">
	 	  <c:forEach items="${amortizeList}" var="amortize">
		        <option value="${amortize.amortizeId}">${amortize.amortize}</option>
		    </c:forEach>
	 	  </select></td>
	 	  
	 	  <td align="left"><select id="quoteCurrencyId" name="boughtOuts[0].quoteCurrencyId">
		  <c:forEach items="${quoteCurrencyList}" var="quoteCurrency">
		        <option value="${quoteCurrency.quoteCurrencyId}">${quoteCurrency.quoteCurrency}</option>
		    </c:forEach>
		  </select></td>
		  
		  <td align="left"><select id="quoteExistsId" name="boughtOuts[0].quoteExistsId">
		  <c:forEach items="${quoteExistsList}" var="quoteExists">
		        <option value="${quoteExists.quoteExistsId}">${quoteExists.quoteExists}</option>
		    </c:forEach>
		  </select>
		  </td>
		  <!-- change by DC -->
		  <c:if test="${sessionScope.roleName=='Sales SPOC' || sessionScope.roleName=='PreSales Head'}">
		  <td align="left"><Input type="text" pattern="\d*" value = "0" title="Please Enter Number" name="boughtOuts[0].priceTotal" size=11 id="priceTotal" ></td>
		  
		  <td align="left" class="y1"><Input type="text" pattern="\d*" value = "0" size=10 title="Please Enter Number" class="h ty1" name="boughtOuts[0].licenceYear1" id="licenceYear1"></td>
		  <td align="left" class="y2"><Input type="text" pattern="\d*" value = "0"  size=10 title="Please Enter Number" class="h ty2" name="boughtOuts[0].licenceYear2" id="licenceYear2"></td>
		  <td align="left" class="y3"><Input type="text" pattern="\d*" value = "0" size=10 title="Please Enter Number" class="h ty3" name="boughtOuts[0].licenceYear3" id="licenceYear3"></td>
		  <td align="left" class="y4"><Input type="text" pattern="\d*" value = "0" size=10 title="Please Enter Number" class="h ty4" name="boughtOuts[0].licenceYear4" id="licenceYear4"></td>
		  <td align="left" class="y5"><Input type="text" pattern="\d*" value = "0" size=10 title=" Please Enter Number" class="h ty5" name="boughtOuts[0].licenceYear5" id="licenceYear5"></td>
		  <td align="left" class="y6"><Input type="text" pattern="\d*" value = "0" size=10 title=" Please Enter Number" class="h ty6" name="boughtOuts[0].licenceYear6" id="licenceYear6"></td>
		  <td align="left" class="y7"><Input type="text" pattern="\d*" value = "0" size=10 title=" Please Enter Number" class="h ty7" name="boughtOuts[0].licenceYear7" id="licenceYear7"></td>
		  <td align="left" class="y8"><Input type="text" pattern="\d*" value = "0" size=10 title=" Please Enter Number" class="h ty8" name="boughtOuts[0].licenceYear8" id="licenceYear8"></td>
		  <td align="left" class="y9"><Input type="text" pattern="\d*" value = "0" size=10 title=" Please Enter Number" class="h ty9" name="boughtOuts[0].licenceYear9" id="licenceYear9"></td>
		  <td align="left" class="y10"><Input type="text" pattern="\d*"value = "0"  size=10 title=" Please Enter Number" class="h ty10" name="boughtOuts[0].licenceYear10" id="licenceYear10"></td>
		  <td align="left" ><Input type="text" class="myTotal" size=10 readonly="readonly" name="boughtOuts[0].licenceTotal" id="licenceTotal"></td>
			
		  <td align="left" class="s1"><Input type="text" class="s sty1"size=10 pattern="\d*" title=" Please Enter Number"  name="boughtOuts[0].supportYear1" id="supportYear1"></td>
		  <td align="left" class="s2"><Input type="text" class="s sty2" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].supportYear2" id="supportYear2"></td>
		  <td align="left" class="s3"><Input type="text" class="s sty3" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].supportYear3" id="supportYear3"></td>
		  <td align="left" class="s4"><Input type="text" class="s sty4" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].supportYear4" id="supportYear4"></td>
		  <td align="left" class="s5"><Input type="text" class="s sty5" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].supportYear5" id="supportYear5"></td>
		  <td align="left" class="s6"><Input type="text" class="s sty6" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].supportYear6" id="licenceYear6"></td>
		  <td align="left" class="s7"><Input type="text" class="s sty7" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].supportYear7" id="licenceYear7"></td>
		  <td align="left" class="s8"><Input type="text" class="s sty8" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].supportYear8" id="licenceYear8"></td>
		  <td align="left" class="s9"><Input type="text" class="s sty9" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].supportYear9" id="licenceYear9"></td>
		  <td align="left" class="s10"><Input type="text" class="s sty10" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].supportYear10" id="supportYear10"></td>
		  <td align="left"><Input type="text" class="myTotal1" readonly="readonly" size=10 name="boughtOuts[0].supportTotal" id="supportTotal"></td>
		  
		  <td align="left"><Input type="text" pattern="\d*" title=" Please Enter Number" size=10 name="boughtOuts[0].professionalService" id="professionalService"></td>
	 	  	 	  
	 	  <td align="left"><Input type="text" pattern="\d*" title=" Please Enter Number" size=10 name="boughtOuts[0].Training" id="Training"></td>
	 	  
		  <td align="left"><Input type="text" name="boughtOuts[0].description" size=10 id="description"></td>
		  <td align="left" class="o1"><Input type="text" class="o oty1" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].otherYear1" id="otherYear1"></td>
		  <td align="left" class="o2"><Input type="text" class="o oty2" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].otherYear2" id="otherYear2"></td>
		  <td align="left" class="o3"><Input type="text" class="o oty3" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].otherYear3" id="otherYear3"></td>
		  <td align="left" class="o4"><Input type="text" class="o oty4" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].otherYear4" id="otherYear4"></td>
		  <td align="left" class="o5"><Input type="text" class="o oty5" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].otherYear5" id="otherYear5"></td>
		  <td align="left" class="o6"><Input type="text" class="o oty6" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].otherYear6" id="otherYear6"></td>
		  <td align="left" class="o7"><Input type="text" class="o oty7" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].otherYear7" id="otherYear7"></td>
		  <td align="left" class="o8"><Input type="text" class="o oty8" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].otherYear8" id="otherYear8"></td>
		  <td align="left" class="o9"><Input type="text" class="o oty9" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].otherYear9" id="otherYear9"></td>
		  <td align="left" class="o10"><Input type="text" class="o oty10" size=10 pattern="\d*" title=" Please Enter Number" name="boughtOuts[0].otherYear10" id="otherYear10"></td>
		  <td align="left"><Input type="text" class="myTotal2" size=10 readonly="readonly" name="boughtOuts[0].otherTotal" id="otherTotal">		  
		  </td>
		   </c:if>
	
    </tr>
    </tbody>
    <!-- change by DC -->
    <c:if test="${sessionScope.roleName=='Sales SPOC' || sessionScope.roleName=='PreSales Head'}">
    <tfoot>
	<tr>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
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
	 <td class="y10"><span style="color:black;font-weight:bold">Y10 Total :</span><span id="gy10Total"></span></td>
	<td><span style="color:black;font-weight:bold">Total :</span>
	<span style="color:blue;font-weight:bold" id="grandTotal"></span></td>
	<td class="s1"><span style="color:black;font-weight:bold">Y1 Total :</span><span style="color:blue;font-weight:bold" id="gy1Total1"></span></td>
	<td class="s2"><span style="color:black;font-weight:bold">Y2 Total :</span><span style="color:blue;font-weight:bold" id="gy2Total1"></span></td>
	<td class="s3"><span style="color:black;font-weight:bold">Y3 Total :</span><span style="color:blue;font-weight:bold" id="gy3Total1"></span></td>
	<td class="s4"><span style="color:black;font-weight:bold">Y4 Total :</span><span style="color:blue;font-weight:bold" id="gy4Total1"></span></td>
	<td class="s5"><span style="color:black;font-weight:bold">Y5 Total :</span><span style="color:blue;font-weight:bold" id="gy5Total1"></span></td>
	<td class="s6"><span style="color:black;font-weight:bold">Y6 Total :</span><span style="color:blue;font-weight:bold" id="gy6Total1"></span></td>
	<td class="s7"><span style="color:black;font-weight:bold">Y7 Total :</span><span style="color:blue;font-weight:bold" id="gy7Total1"></span></td>
	<td class="s8"><span style="color:black;font-weight:bold">Y8 Total :</span><span style="color:blue;font-weight:bold" id="gy8Total1"></span></td>
	<td class="s9"><span style="color:black;font-weight:bold">Y9 Total :</span><span style="color:blue;font-weight:bold" id="gy9Total1"></span></td>
	<td class="s10"><span style="color:black;font-weight:bold">Y10 Total :</span><span style="color:blue;font-weight:bold" id="gy10Total1"></span></td>
	<td><span style="color:black;font-weight:bold">Total :</span>
	<span style="color:blue;font-weight:bold" id="grandTotal1"></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td class="o1"><span style="color:black;font-weight:bold">Y1 Total :</span><span style="color:blue;font-weight:bold" id="gy1Total2"></span></td>
	<td class="o2"><span style="color:black;font-weight:bold">Y2 Total :</span><span style="color:blue;font-weight:bold" id="gy2Total2"></span></td>
	<td class="o3"><span style="color:black;font-weight:bold">Y3 Total :</span><span style="color:blue;font-weight:bold" id="gy3Total2"></span></td>
	<td class="o4"><span style="color:black;font-weight:bold">Y4 Total :</span><span style="color:blue;font-weight:bold" id="gy4Total2"></span></td>
	<td class="o5"><span style="color:black;font-weight:bold">Y5 Total :</span><span style="color:blue;font-weight:bold" id="gy5Total2"></span></td>
	<td class="o6"><span style="color:black;font-weight:bold">Y6 Total :</span><span style="color:blue;font-weight:bold" id="gy6Total2"></span></td>
	<td class="o7"><span style="color:black;font-weight:bold">Y7 Total :</span><span style="color:blue;font-weight:bold" id="gy7Total2"></span></td>
	<td class="o8"><span style="color:black;font-weight:bold">Y8 Total :</span><span style="color:blue;font-weight:bold" id="gy8Total2"></span></td>
	<td class="o9"><span style="color:black;font-weight:bold">Y9 Total :</span><span style="color:blue;font-weight:bold" id="gy9Total2"></span></td>
	<td class="o10"><span style="color:black;font-weight:bold">Y10 Total :</span><span style="color:blue;font-weight:bold" id="gy10Total2"></span></td>
	<td><span style="color:black;font-weight:bold">Total :</span>
	<span style="color:blue;font-weight:bold" id="grandTotal2"></span></td>
	</tr>
	</tfoot>
	</c:if>
   </table>
 </div>
 <br>
   <table>
   <tr>
		<td align="left">
		<c:choose>
		 <c:when test="${sessionScope.roleName=='Competency SPOCs' || sessionScope.roleName=='Delivery SPOCS'}">
		<button type="button" class="btn btn-info mr-1" name="AddMore" id="addmore" onclick="Add()" disabled>Add More</button>
		<button type="submit" class="btn btn-info mr-1" name="submit" id="submit" disabled>Submit</button>
		</c:when>
		<c:otherwise>
		
        <c:choose>
		<c:when test="${sessionScope.roleName=='Delivery SPOCS' || sessionScope.roleName=='CMC SPOC' || sessionScope.roleName=='Solution Architect' && sessionScope.review=='y'}">
		<button type="submit" class="btn btn-info mr-1" name="submit" id="submit">Submit</button>
		<marquee bgcolor="#d9d9ff" hspace="50" vspace="20">
               Review is on
        </marquee>
		</c:when>
		<c:when test="${sessionScope.roleName=='Solution Architect' && sessionScope.freeze=='y'}">
		
		</c:when>
		
		<c:otherwise>
		<button type="button" class="btn btn-info mr-1" name="AddMore" id="addmore" onclick="Add()">Add More</button>
		<button type="submit" class="btn btn-info mr-1" name="submit" id="submit">Submit</button>
		</c:otherwise>
		
		</c:choose>
		</c:otherwise>
		</c:choose>
		</td>
	</tr>
 </table>
</form:form>

<script type="text/javascript">

var projectdurationCount=document.getElementById("projectduration").value; 

       function DeleteRow(objId){
       	   var rowT = document.getElementById("myrow_" + objId);
    	   rowT.parentNode.removeChild(rowT);
       }
      
       var row = 1;
       function Add() {

    	   var dlId1 = document.getElementById("mydealid").value;
    	   var creationDate1 = document.getElementById("creationDate").value;
			var createdBy1 = document.getElementById("createdBy").value;
   	       var timestamp1=document.getElementById("timestamp").value;
   	       var user=document.getElementById("user").value;
   	       
   	  
   	  
   	    var horizontalClass = "hh"+row;
   	    var horizontalClass1 = "ss"+row;
   	    var horizontalClass2 = "oo"+row;
	    var verticalClass = "vv"+row;
	    var licenceTotal  = "myTotal" +row;
	    var supportTotal  = "myTotal1" +row;
	   var otherTotal  = "myTotal2" +row;
	   
   			var addMoreString = '<tr id="myrow_'+ row +'">';
			//alert(addMoreString);
          
       	addMoreString += '<td align="left"><select name="boughtOuts['+row+'].towerId">'
       	
          					  +document.getElementById("towerId").innerHTML+' </select><input type="hidden" name="boughtOuts['+row+'].createdBy" value="'+createdBy1+'"></td>';

        addMoreString +=  '<td align="left"><Input type="text" size =6 name="boughtOuts['+row+'].vendor" value="" ></td>';

        addMoreString +=  '<td align="left"><Input type="text" size =11 name="boughtOuts['+row+'].productDescription" value="" ><Input type="hidden" name="boughtOuts['+row+'].project_duration" value="'+projectdurationCount+'"></td>';

     	addMoreString += '<td align="left"><select name="boughtOuts['+row+'].amortizeId">'
		 					 +document.getElementById("amortizeId").innerHTML+' </select><input type="hidden" name="boughtOuts['+row+'].timeStamp" value="'+timestamp1+'"></td>';

	   addMoreString += '<td align="left"><select name="boughtOuts['+row+'].quoteCurrencyId">'
		  					+document.getElementById("quoteCurrencyId").innerHTML+' </select><Input type="hidden" name="boughtOuts['+row+'].dlId" value="'+dlId1+'"></td>';

	    addMoreString += '<td align="left"><select name="boughtOuts['+row+'].quoteExistsId">'
		 				    +document.getElementById("quoteExistsId").innerHTML+' </select><input type="hidden" name="boughtOuts['+row+'].creationDate" value="'+creationDate1+'"></td>';


		  //change by DC
		 if(user=="Sales SPOC" || user=="PreSales Head")
			{
        addMoreString +=  '<td align="left"><Input type="text" size =11 name="boughtOuts['+row+'].priceTotal" value="" ></td>';

        addMoreString +=  '<td align="left" class="y1"><Input type="text" size =10 class="'+horizontalClass+' ty1"  name="boughtOuts['+row+'].licenceYear1" value="" ></td>';
        addMoreString +=  '<td align="left" class="y2"><Input type="text" size =10 class="'+horizontalClass+' ty2"  name="boughtOuts['+row+'].licenceYear2" value="" ></td>';
        addMoreString +=  '<td align="left" class="y3"><Input type="text" size =10 class="'+horizontalClass+' ty3"  name="boughtOuts['+row+'].licenceYear3" value="" ></td>';
        addMoreString +=  '<td align="left" class="y4"><Input type="text" size =10 class="'+horizontalClass+' ty4"  name="boughtOuts['+row+'].licenceYear4" value="" ></td>';
        addMoreString +=  '<td align="left" class="y5"><Input type="text" size =10 class="'+horizontalClass+' ty5"  name="boughtOuts['+row+'].licenceYear5" value="" ></td>';
        addMoreString +=  '<td align="left" class="y6"><Input type="text" size =10 class="'+horizontalClass+' ty6"  name="boughtOuts['+row+'].licenceYear6" value="" ></td>';
        addMoreString +=  '<td align="left" class="y7"><Input type="text" size =10 class="'+horizontalClass+' ty7"  name="boughtOuts['+row+'].licenceYear7" value="" ></td>';
        addMoreString +=  '<td align="left" class="y8"><Input type="text" size =10 class="'+horizontalClass+' ty8"  name="boughtOuts['+row+'].licenceYear8" value="" ></td>';
        addMoreString +=  '<td align="left" class="y9"><Input type="text" size =10 class="'+horizontalClass+' ty9"  name="boughtOuts['+row+'].licenceYear9" value="" ></td>';
        addMoreString +=  '<td align="left" class="y10"><Input type="text" size =10 class="'+horizontalClass+' ty10"  name="boughtOuts['+row+'].licenceYear10" value="" ></td>';
        addMoreString +=  '<td align="left"><Input type="text" class="myTotal" size =10 name="boughtOuts['+row+'].licenceTotal" value="" id="'+licenceTotal+'" ></td>';
        
        addMoreString +=  '<td align="left" class="s1"><Input type="text" size =10 class="'+horizontalClass1+' sty1" name="boughtOuts['+row+'].supportYear1" value="" ></td>';
        addMoreString +=  '<td align="left" class="s2"><Input type="text" size =10 class="'+horizontalClass1+' sty2" name="boughtOuts['+row+'].supportYear2" value="" ></td>';
        addMoreString +=  '<td align="left" class="s3"><Input type="text" size =10 class="'+horizontalClass1+' sty3" name="boughtOuts['+row+'].supportYear3" value="" ></td>';
        addMoreString +=  '<td align="left" class="s4"><Input type="text" size =10 class="'+horizontalClass1+' sty4" name="boughtOuts['+row+'].supportYear4" value="" ></td>';
        addMoreString +=  '<td align="left" class="s5"><Input type="text" size =10 class="'+horizontalClass1+' sty5" name="boughtOuts['+row+'].supportYear5" value="" ></td>';
        addMoreString +=  '<td align="left" class="s6"><Input type="text" size =10 class="'+horizontalClass1+' sty6" name="boughtOuts['+row+'].supportYear6" value="" ></td>';
        addMoreString +=  '<td align="left" class="s7"><Input type="text" size =10 class="'+horizontalClass1+' sty7" name="boughtOuts['+row+'].supportYear7" value="" ></td>';
        addMoreString +=  '<td align="left" class="s8"><Input type="text" size =10 class="'+horizontalClass1+' sty8" name="boughtOuts['+row+'].supportYear8" value="" ></td>';
        addMoreString +=  '<td align="left" class="s9"><Input type="text" size =10 class="'+horizontalClass1+' sty9" name="boughtOuts['+row+'].supportYear9" value="" ></td>';
        addMoreString +=  '<td align="left" class="s10"><Input type="text" size =10 class="'+horizontalClass1+' sty10" name="boughtOuts['+row+'].supportYear10" value="" ></td>';
        addMoreString +=  '<td align="left"><Input type="text" class="myTotal1" size =10 name="boughtOuts['+row+'].supportTotal" value="" id="'+supportTotal+'" ></td>';
        
        addMoreString +=  '<td align="left"><Input type="text" size =10 name="boughtOuts['+row+'].professionalService" value="" ></td>';
        
        addMoreString +=  '<td align="left"><Input type="text" size =10 name="boughtOuts['+row+'].training" value="" ></td>';
        
        addMoreString +=  '<td align="left"><Input type="text" size =10 name="boughtOuts['+row+'].description" value="" ></td>';
        
        addMoreString +=  '<td align="left" class="o1"><Input type="text" size =10 class="'+horizontalClass2+' oty1" name="boughtOuts['+row+'].otherYear1" value="" ></td>';
        addMoreString +=  '<td align="left" class="o2"><Input type="text" size =10 class="'+horizontalClass2+' oty2" name="boughtOuts['+row+'].otherYear2" value="" ></td>';
        addMoreString +=  '<td align="left" class="o3"><Input type="text" size =10 class="'+horizontalClass2+' oty3" name="boughtOuts['+row+'].otherYear3" value="" ></td>';
        addMoreString +=  '<td align="left" class="o4"><Input type="text" size =10 class="'+horizontalClass2+' oty4" name="boughtOuts['+row+'].otherYear4" value="" ></td>';
        addMoreString +=  '<td align="left" class="o5"><Input type="text" size =10 class="'+horizontalClass2+' oty5" name="boughtOuts['+row+'].otherYear5" value="" ></td>';
        addMoreString +=  '<td align="left" class="o6"><Input type="text" size =10 class="'+horizontalClass2+' oty6" name="boughtOuts['+row+'].otherYear6" value="" ></td>';
        addMoreString +=  '<td align="left" class="o7"><Input type="text" size =10 class="'+horizontalClass2+' oty7" name="boughtOuts['+row+'].otherYear7" value="" ></td>';
        addMoreString +=  '<td align="left" class="o8"><Input type="text" size =10 class="'+horizontalClass2+' oty8" name="boughtOuts['+row+'].otherYear8" value="" ></td>';
        addMoreString +=  '<td align="left" class="o9"><Input type="text" size =10 class="'+horizontalClass2+' oty9" name="boughtOuts['+row+'].otherYear9" value="" ></td>';
        addMoreString +=  '<td align="left" class="o10"><Input type="text" size =10 class="'+horizontalClass2+' oty10" name="boughtOuts['+row+'].otherYear10" value="" ></td>';
        addMoreString +=  '<td align="left"><Input type="text" class="myTotal2" size =10 name="boughtOuts['+row+'].otherTotal" value="" id="'+otherTotal+'" ></td>';
			 } 
       	
        addMoreString +=  '<td align="left"><button type="button" class="btn btn-info mr-1" name="remove" value="Remove" onclick="DeleteRow('+row+')">Remove</button></td>';
       	addMoreString +=  '</tr>'; 
          					  
        $("#myTableObj").append(addMoreString);

        showHideCol(projectdurationCount);
        
        $("."+horizontalClass).each(function() {

			$(this).keyup(function(){
				calculateSum(horizontalClass,licenceTotal);
			});
		});

        $("."+horizontalClass1).each(function() {

			$(this).keyup(function(){
				calculateSum(horizontalClass1,supportTotal);
			});
		});

        $("."+horizontalClass2).each(function() {

   			$(this).keyup(function(){
   				calculateSum(horizontalClass2,otherTotal);
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
//alert('hi');
showHideCol(projectdurationCount);
		//iterate through each textboxes and add keyup
		//handler to trigger sum event
		$(".h").each(function() {

			$(this).keyup(function(){
				calculateSum('h','licenceTotal');
			});
		});
		$(".s").each(function() {

			$(this).keyup(function(){
				calculateSum('s','supportTotal');
			});
		});
		$(".o").each(function() {

			$(this).keyup(function(){
				calculateSum('o','otherTotal');
			});
		});

	});

function showHideCol(projectdurationCount){
		

 $("#l1").attr("colspan",parseInt(projectdurationCount) + 1);

$("#sm").attr("colspan",parseInt(projectdurationCount) + 1);

$("#oth").attr("colspan",parseInt(projectdurationCount) + 2);

		for(i=1; i<=projectdurationCount; i++){
			
			$(".y"+i).show();
			$(".s"+i).show();
			$(".o"+i).show();
			
		}
		
		
		
	}
	
	var grandTotalSum = 0;
	var grandTotalSum1 = 0;
	var grandTotalSum2 = 0;


	
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

	$("input").hover(function(){
		totCalc1();
		
		totaly1Calc1();
		totaly2Calc1();
		totaly3Calc1();
		totaly4Calc1();
		totaly5Calc1();
		totaly6Calc1();
		totaly7Calc1();
		totaly8Calc1();
		totaly9Calc1();
		totaly10Calc1();
	});
	$("input").blur(function(){
		totCalc1();

		totaly1Calc1();
		totaly2Calc1();
		totaly3Calc1();
		totaly4Calc1();
		totaly5Calc1();
		totaly6Calc1();
		totaly7Calc1();
		totaly8Calc1();
		totaly9Calc1();
		totaly10Calc1();
	});
	$(document).hover(function(){
		totCalc1();

		totaly1Calc1();
		totaly2Calc1();
		totaly3Calc1();
		totaly4Calc1();
		totaly5Calc1();
		totaly6Calc1();
		totaly7Calc1();
		totaly8Calc1();
		totaly9Calc1();
		totaly10Calc1();
	});
	function totCalc1(){
		 //alert("hello");
		var mySum1 = 0;
		//iterate through each textboxes and add the values
		$(".myTotal1").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				mySum1 += parseFloat(this.value);
			}

		});
		
		$("#grandTotal1").html(mySum1);

		
		
	}

	$("input").hover(function(){
		totCalc2();

		totaly1Calc2();
		totaly2Calc2();
		totaly3Calc2();
		totaly4Calc2();
		totaly5Calc2();
		totaly6Calc2();
		totaly7Calc2();
		totaly8Calc2();
		totaly9Calc2();
		totaly10Calc2();
	});
	$("input").blur(function(){
		totCalc2();

		totaly1Calc2();
		totaly2Calc2();
		totaly3Calc2();
		totaly4Calc2();
		totaly5Calc2();
		totaly6Calc2();
		totaly7Calc2();
		totaly8Calc2();
		totaly9Calc2();
		totaly10Calc2();
	});
	$(document).hover(function(){
		totCalc2();

		totaly1Calc2();
		totaly2Calc2();
		totaly3Calc2();
		totaly4Calc2();
		totaly5Calc2();
		totaly6Calc2();
		totaly7Calc2();
		totaly8Calc2();
		totaly9Calc2();
		totaly10Calc2();
	});

	
	function totCalc2(){
		 //alert("hello");
		var mySum2 = 0;
		//iterate through each textboxes and add the values
		$(".myTotal2").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				mySum2 += parseFloat(this.value);
			}

		});
		
		$("#grandTotal2").html(mySum2);

}

//---License total function----1
	
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
	
	//---License total function----2
	
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
	//---License total function----3
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
	
	//---License total function----4
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
	
	//---License total function----5
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
	//---License total function----6
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
	//---License total function----7
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
	
	//---License total function----8
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
	//---License total function----9
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
	
	//---License total function----10
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

//---S&M total function----1
	
	function totaly1Calc1(){
		// alert("hello y1");
		var ys1Sum = 0;
		//iterate through each textboxes and add the values
		$(".sty1").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				ys1Sum += parseFloat(this.value);
			}

		});
		
		$("#gy1Total1").html(ys1Sum);
		
	}
	
	//---S&M total function----2
	
	function totaly2Calc1(){
		// alert("hello y1");
		var ys2Sum = 0;
		//iterate through each textboxes and add the values
		$(".sty2").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				ys2Sum += parseFloat(this.value);
			}

		});
		
		$("#gy2Total1").html(ys2Sum);
		
	}
	//---S&M Total function----3
	function totaly3Calc1(){
		// alert("hello y1");
		var ys3Sum = 0;
		//iterate through each textboxes and add the values
		$(".sty3").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				ys3Sum += parseFloat(this.value);
			}

		});
		
		$("#gy3Total1").html(ys3Sum);
		
	}
	
	//---S&M Total function----4
	function totaly4Calc1(){
		// alert("hello y1");
		var ys4Sum = 0;
		//iterate through each textboxes and add the values
		$(".sty4").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				ys4Sum += parseFloat(this.value);
			}

		});
		
		$("#gy4Total1").html(ys4Sum);
		
	}
	
	//---S&M Total function----5
	function totaly5Calc1(){
		// alert("hello y1");
		var ys5Sum = 0;
		//iterate through each textboxes and add the values
		$(".sty5").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				ys5Sum += parseFloat(this.value);
			}

		});
		
		$("#gy5Total1").html(ys5Sum);
		
	}
	//---S&M Total function----6
	function totaly6Calc1(){
		// alert("hello y1");
		var ys6Sum = 0;
		//iterate through each textboxes and add the values
		$(".sty6").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				ys6Sum += parseFloat(this.value);
			}

		});
		
		$("#gy6Total1").html(ys6Sum);
		
	}
	//---S&M Total function----7
	function totaly7Calc1(){
		// alert("hello y1");
		var ys7Sum = 0;
		//iterate through each textboxes and add the values
		$(".sty7").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				ys7Sum += parseFloat(this.value);
			}

		});
		
		$("#gy7Total1").html(ys7Sum);
		
	}
	
	//---S&M Total function----8
	function totaly8Calc1(){
		// alert("hello y1");
		var ys8Sum = 0;
		//iterate through each textboxes and add the values
		$(".sty8").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				ys8Sum += parseFloat(this.value);
			}

		});
		
		$("#gy8Total1").html(ys8Sum);
		
	}
	//---S&M Total function----9
	function totaly9Calc1(){
		// alert("hello y1");
		var ys9Sum = 0;
		//iterate through each textboxes and add the values
		$(".sty9").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				ys9Sum += parseFloat(this.value);
			}

		});
		
		$("#gy9Total1").html(ys9Sum);
		
	}
	
	//---S&M Total function----10
	function totaly10Calc1(){
		// alert("hello y1");
		var ys10Sum = 0;
		//iterate through each textboxes and add the values
		$(".sty10").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				ys10Sum += parseFloat(this.value);
			}

		});
		
		$("#gy10Total1").html(ys10Sum);
		
	}
//---Other Total function----1
	
	function totaly1Calc2(){
		// alert("hello y1");
		var y1Sum = 0;
		//iterate through each textboxes and add the values
		$(".oty1").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y1Sum += parseFloat(this.value);
			}

		});
		
		$("#gy1Total2").html(y1Sum);
		
	}
	
	//---Other Total function----2
	
	function totaly2Calc2(){
		// alert("hello y1");
		var y2Sum = 0;
		//iterate through each textboxes and add the values
		$(".oty2").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y2Sum += parseFloat(this.value);
			}

		});
		
		$("#gy2Total2").html(y2Sum);
		
	}
	//---Other Total function----3
	function totaly3Calc2(){
		// alert("hello y1");
		var y3Sum = 0;
		//iterate through each textboxes and add the values
		$(".oty3").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y3Sum += parseFloat(this.value);
			}

		});
		
		$("#gy3Total2").html(y3Sum);
		
	}
	
	//---Other Total function----4
	function totaly4Calc2(){
		
		var y4Sum = 0;
		//iterate through each textboxes and add the values
		$(".oty4").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y4Sum += parseFloat(this.value);
			}

		});
		
		$("#gy4Total2").html(y4Sum);
		
	}
	
	//---Other Total function----5
	function totaly5Calc2(){
		 
		var y5Sum = 0;
		//iterate through each textboxes and add the values
		$(".oty5").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y5Sum += parseFloat(this.value);
			}

		});
		
		$("#gy5Total2").html(y5Sum);
		
	}
	//---Other Total function----6
	
	function totaly6Calc2(){
		// alert("hello y1");
		var y6Sum = 0;
		//iterate through each textboxes and add the values
		$(".oty6").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y6Sum += parseFloat(this.value);
			}

		});
		
		$("#gy6Total2").html(y6Sum);
		
	}
	//---Other Total function----7
	function totaly7Calc2(){
		// alert("hello y1");
		var y7Sum = 0;
		//iterate through each textboxes and add the values
		$(".oty7").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y7Sum += parseFloat(this.value);
			}

		});
		
		$("#gy7Total2").html(y7Sum);
		
	}
	
	//---Other Total function----8
	function totaly8Calc2(){
		// alert("hello y1");
		var y8Sum = 0;
		//iterate through each textboxes and add the values
		$(".oty8").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y8Sum += parseFloat(this.value);
			}

		});
		
		$("#gy8Total2").html(y8Sum);
		
	}
	//---Other Total function----9
	function totaly9Calc2(){
		// alert("hello y1");
		var y9Sum = 0;
		//iterate through each textboxes and add the values
		$(".oty9").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y9Sum += parseFloat(this.value);
			}

		});
		
		$("#gy9Total2").html(y9Sum);
		
	}
	
	//---Other Total function----10
	function totaly10Calc2(){
		// alert("hello y1");
		var y10Sum = 0;
		//iterate through each textboxes and add the values
		$(".oty10").each(function() {

			// alert('class' + className);
			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				y10Sum += parseFloat(this.value);
			}

		});
		
		$("#gy10Total2").html(y10Sum);
		
	}
</script> 
<br>
<br>
<br>
			<table class="table table-bordered table-sm">
				<thead>
					<tr>
						<th align="left" bgcolor="#66b3ff">Version Id</th>
						<th align="left" bgcolor="#66b3ff">Creation Date</th>
						<th align="left" bgcolor="#66b3ff">Created By</th>
					</tr>
				</thead>
				<c:forEach items="${boughtoutviewTimp}" var="e">
					<tr>
						<td><a
							href="${pageContext.request.contextPath}/BoughtOutsView?timestampId=${e.timeStamp}&dsld=${e.dlId}&durayear=${e.project_duration}">
							<c:out value=" ${e.timeStamp}" /></a></td>
						<td><c:out value=" ${e.creationDate}" /></td>
						<td><c:out value=" ${e.createdBy}" /></td>

					</tr>
				</c:forEach>
			</table>
</div>
</div>
</div>

<jsp:include page="footer.jsp" />