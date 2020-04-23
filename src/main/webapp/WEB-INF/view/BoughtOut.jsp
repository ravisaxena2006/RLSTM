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
			<a href="/bidview/dsld=${Bid_ID}&durayear=${duryr}" class="btn btn-info">Deal Specs</a>
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
 	<th rowspan=2 align="center" bgcolor="#66b3ff"> Price Total</th>
   	 <th id="l1" colspan="auto" align="center" bgcolor="#66b3ff">Licence\Equipments</th> 
  	 <th id="sm" colspan="auto" align="center" bgcolor="#66b3ff">Support & Maintenance</th>
  	<th rowspan=2 align="center" bgcolor="#66b3ff">Professional Service</th>
 	<th rowspan=2 align="center" bgcolor="#66b3ff">Training</th>
  	 <th id="oth" colspan="auto" align="center" bgcolor="#66b3ff">Other</th>
  	
  	</tr>
    <tr>
   		<th align="center" bgcolor="#99CCFF">Tower</th>
		<th align="center" bgcolor="#99CCFF">Vendor</th>
     	<th align="center" bgcolor="#99CCFF">Product Description</th>
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
	
		 
		 
    </tr>
    </thead>
    
  <tbody id="myTableObj">
    <c:forEach items="${boughtoutview}" var="b" varStatus="loop">
						<tr>
							<td><select id="towerId" name="towerId" name="boughtOuts[${loop.index}].towerId" disabled="disabled">
							<c:forEach items="${towerList}" var="tower">
		        <option value="${tower.towerId}"
		        ${tower.towerId == b.towerId ? 'selected="selected"' : ''}>${tower.tower}</option>
		    </c:forEach>  
		    </select>
		    <input type="hidden"  id="listCount" name="listCount" value="${count}"/>
		   <input type="hidden"  id="projectduration2" name="project_duration" value="${project_duration2}"/>
		    </td>
		    
		   
		   
	 <td align="left"><Input type="text" size=6 name="boughtOuts[${loop.index}].vendor" readonly="readonly" id="vendor" value="${b.vendor}"></td>
	 	  	 	  
	 	  <td align="left"><Input type="text" size=11 name="boughtOuts[${loop.index}].productDescription" readonly="readonly" id="productDescription" value="${b.productDescription}"></td>
											
							
							<td><select name="amortizeId" id="amortizeId" name="boughtOuts[${loop.index}].amortizeId" disabled="disabled">
							<c:forEach items="${amortizeList}" var="amortize">
		        <option value="${amortize.amortizeId}"
		        ${amortize.amortizeId == b.amortizeId ? 'selected="selected"' : ''}>${amortize.amortize}</option>
		    </c:forEach></select></td>
							<td><select name="quoteCurrencyId" id="quoteCurrencyId" name="boughtOuts[${loop.index}].quoteCurrencyId" disabled="disabled">
							<c:forEach items="${quoteCurrencyList}" var="quoteCurrency">
		        <option value="${quoteCurrency.quoteCurrencyId}"
		        ${quoteCurrency.quoteCurrencyId == b.quoteCurrencyId ? 'selected="selected"' : ''}>${quoteCurrency.quoteCurrency}</option>
		    </c:forEach></select></td>
							<td><select name="quoteExistsId" name="boughtOuts[${loop.index}].quoteExistsId" id="quoteExistsId" disabled="disabled">
							<c:forEach items="${quoteExistsList}" var="quoteExists">
		        <option value="${quoteExists.quoteExistsId}"
		        ${quoteExists.quoteExistsId == b.quoteExistsId ? 'selected="selected"' : ''}>${quoteExists.quoteExists}</option>
		    </c:forEach></select>
  
		  
		  <td align="left"><Input type="text" pattern="\d*" title="Please Enter Number" size=10 name="boughtOuts[${loop.index}].priceTotal" id="priceTotal" value="${b.priceTotal}"></td>
		  
		  <td class="y1" align="left"><Input type="text" pattern="\d*" size=10 title=" Please Enter Number" class="h ty1" name="boughtOuts[${loop.index}].licenceYear1" id="licenceYear1" value="${b.licenceYear1}"></td>
		  <td class="y2" align="left"><Input type="text" pattern="\d*" size=10 title=" Please Enter Number" class="h ty2" name="boughtOuts[${loop.index}].licenceYear2" id="licenceYear2" value="${b.licenceYear2}"></td>
		  <td class="y3" align="left"><Input type="text" pattern="\d*" size=10 title=" Please Enter Number" class="h ty3" name="boughtOuts[${loop.index}].licenceYear3" id="licenceYear3" value="${b.licenceYear3}"></td>
		  <td class="y4" align="left"><Input type="text" pattern="\d*" size=10 title=" Please Enter Number" class="h ty4" name="boughtOuts[${loop.index}].licenceYear4" id="licenceYear4" value="${b.licenceYear4}"></td>
		  <td class="y5" align="left"><Input type="text" pattern="\d*" size=10 title=" Please Enter Number" class="h ty5" name="boughtOuts[${loop.index}].licenceYear5" id="licenceYear5" value="${b.licenceYear5}"></td>
		  <td class="y6" align="left"><Input type="text" pattern="\d*" size=10 title=" Please Enter Number" class="h ty6" name="boughtOuts[${loop.index}].licenceYear6" id="licenceYear6" value="${b.licenceYear6}"></td>
		  <td class="y7" align="left"><Input type="text" pattern="\d*" size=10 title=" Please Enter Number" class="h ty7" name="boughtOuts[${loop.index}].licenceYear7" id="licenceYear7" value="${b.licenceYear7}"></td>
		  <td class="y8" align="left"><Input type="text" pattern="\d*" size=10 title=" Please Enter Number" class="h ty8" name="boughtOuts[${loop.index}].licenceYear8" id="licenceYear8" value="${b.licenceYear8}"></td>
		  <td class="y9" align="left"><Input type="text" pattern="\d*" size=10 title=" Please Enter Number" class="h ty9" name="boughtOuts[${loop.index}].licenceYear9" id="licenceYear9" value="${b.licenceYear9}"></td>
		  <td class="y10" align="left"><Input type="text" pattern="\d*" size=10 title=" Please Enter Number" class="h ty10" name="boughtOuts[${loop.index}].licenceYear10" id="licenceYear10" value="${b.licenceYear10}"></td>
		  <td align="left"><Input type="text" class="myTotal" readonly="readonly" size=10 name="boughtOuts[${loop.index}].licenceTotal" id="licenceTotal" value="${b.licenceTotal}"></td>
			
		  <td class="s1" align="left"><Input type="text" class="s sty1" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].supportYear1" id="supportYear1" value="${b.supportYear1}"></td>
		  <td class="s2" align="left"><Input type="text" class="s sty2" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].supportYear2" id="supportYear2" value="${b.supportYear2}"></td>
		  <td class="s3" align="left"><Input type="text" class="s sty3" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].supportYear3" id="supportYear3" value="${b.supportYear3}"></td>
		  <td class="s4" align="left"><Input type="text" class="s sty4" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].supportYear4" id="supportYear4" value="${b.supportYear4}"></td>
		  <td class="s5" align="left"><Input type="text" class="s sty5" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].supportYear5" id="supportYear5" value="${b.supportYear5}"></td>
		  <td class="s6" align="left"><Input type="text" class="s sty6" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].supportYear6" id="supportYear6" value="${b.supportYear6}"></td>
		  <td class="s7" align="left"><Input type="text" class="s sty7" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].supportYear7" id="supportYear7" value="${b.supportYear7}"></td>
		  <td class="s8" align="left"><Input type="text" class="s sty8" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].supportYear8" id="supportYear8" value="${b.supportYear8}"></td>
		  <td class="s9" align="left"><Input type="text" class="s sty9" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].supportYear9" id="supportYear9" value="${b.supportYear9}"></td>
		  <td class="s10" align="left"><Input type="text" class="s sty10" pattern="\d*" size=10 title="Please Enter Number" name="boughtOuts[${loop.index}].supportYear10" id="supportYear10" value="${b.supportYear10}"></td>
		  <td align="left"><Input type="text" class="myTotal1" readonly="readonly" size=10 name="boughtOuts[${loop.index}].supportTotal" id="supportTotal" value="${b.supportTotal}"></td>
		  
		  <td align="left"><Input type="text" pattern="\d*" title=" Please Enter Number" size=10 name="boughtOuts[${loop.index}].professionalService" id="professionalService" value="${b.professionalService}"></td>
	 	  	 	  
	 	  <td align="left"><Input type="text" pattern="\d*" title=" Please Enter Number" size=10 name="boughtOuts[${loop.index}].Training" id="training" value="${b.training}"></td>
	 	  
		  <td align="left"><Input type="text" name="boughtOuts[${loop.index}].description" size=10 id="description" value="${b.description}"></td>
		  <td align="left" class="o1"><Input type="text" class="o oty1" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].otherYear1" id="otherYear1" value="${b.otherYear1}"></td>
		  <td align="left" class="o2"><Input type="text" class="o oty2" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].otherYear2" id="otherYear2" value="${b.otherYear2}"></td>
		  <td align="left" class="o3"><Input type="text" class="o oty3" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].otherYear3" id="otherYear3" value="${b.otherYear3}"></td>
		  <td align="left" class="o4"><Input type="text" class="o oty4" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].otherYear4" id="otherYear4" value="${b.otherYear4}"></td>
		  <td align="left" class="o5"><Input type="text" class="o oty5" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].otherYear5" id="otherYear5" value="${b.otherYear5}"></td>
		  <td align="left" class="o6"><Input type="text" class="o oty6" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].otherYear6" id="otherYear6" value="${b.otherYear6}"></td>
		  <td align="left" class="o7"><Input type="text" class="o oty7" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].otherYear7" id="otherYear7" value="${b.otherYear7}"></td>
		  <td align="left" class="o8"><Input type="text" class="o oty8" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].otherYear8" id="otherYear8" value="${b.otherYear8}"></td>
		  <td align="left" class="o9"><Input type="text" class="o oty9" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].otherYear9" id="otherYear9" value="${b.otherYear9}"></td>
		  <td align="left" class="o10"><Input type="text" class="o oty10" pattern="\d*" size=10 title=" Please Enter Number" name="boughtOuts[${loop.index}].otherYear10" id="otherYear10" value="${b.otherYear10}"></td>
		  <td align="left"><Input type="text" class="myTotal2" readonly="readonly" size=10 name="boughtOuts[${loop.index}].otherTotal" id="otherTotal" value="${b.otherTotal}">
		  
		  
		 <input type="hidden"  id="mydealid" name="boughtOuts[${loop.index}].dl_id" value="${b.dl_id}"/>
			<input type="hidden"  id="timestamp" name="boughtOuts[${loop.index}].time_stamp" value="${timestamp_key}"/>
			<input type="hidden"  id="creationDate" name="boughtOuts[${loop.index}].creationDate" value="${creationDate}"/>
			<input type="hidden"  id="createdBy" name="boughtOuts[${loop.index}].createdBy" value="${createdBy}"/>
			<input type="hidden"  id="projectduration" name="boughtOuts[0].project_duration" value="${b.project_duration}"/>
		  </td>
	
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
	<td class="y1"><span style="color:black;font-weight:bold">Y1Total :</span><span style="color:blue;font-weight:bold" id="gy1Total"></span></td>
	<td class="y2"><span style="color:black;font-weight:bold">Y2Total :</span><span style="color:blue;font-weight:bold" id="gy2Total"></span></td>
	<td class="y3"><span style="color:black;font-weight:bold">Y3Total :</span><span style="color:blue;font-weight:bold" id="gy3Total"></span></td>
	<td class="y4"><span style="color:black;font-weight:bold">Y4Total :</span><span style="color:blue;font-weight:bold" id="gy4Total"></span></td>
	<td class="y5"><span style="color:black;font-weight:bold">Y5Total :</span><span style="color:blue;font-weight:bold" id="gy5Total"></span></td>
	<td class="y6"><span style="color:black;font-weight:bold">Y6Total :</span><span style="color:blue;font-weight:bold" id="gy6Total"></span></td>
	<td class="y7"><span style="color:black;font-weight:bold">Y7Total :</span><span style="color:blue;font-weight:bold" id="gy7Total"></span></td>
	<td class="y8"><span style="color:black;font-weight:bold">Y8Total :</span><span style="color:blue;font-weight:bold" id="gy8Total"></span></td>
	<td class="y9"><span style="color:black;font-weight:bold">Y9Total :</span><span style="color:blue;font-weight:bold" id="gy9Total"></span></td>
	 <td class="y10"><span style="color:black;font-weight:bold">Y10Total :</span><span style="color:blue;font-weight:bold" id="gy10Total"></span></td>
	<td><span style="color:black;font-weight:bold">Total :</span>
	<span style="color:blue;font-weight:bold" id="grandTotal"></span></td>
	<td class="s1"><span style="color:black;font-weight:bold">Y1Total :</span><span style="color:blue;font-weight:bold" id="gy1Total1"></span></td>
	<td class="s2"><span style="color:black;font-weight:bold">Y2Total :</span><span style="color:blue;font-weight:bold" id="gy2Total1"></span></td>
	<td class="s3"><span style="color:black;font-weight:bold">Y3Total :</span><span style="color:blue;font-weight:bold" id="gy3Total1"></span></td>
	<td class="s4"><span style="color:black;font-weight:bold">Y4Total :</span><span style="color:blue;font-weight:bold" id="gy4Total1"></span></td>
	<td class="s5"><span style="color:black;font-weight:bold">Y5Total :</span><span style="color:blue;font-weight:bold" id="gy5Total1"></span></td>
	<td class="s6"><span style="color:black;font-weight:bold">Y6Total :</span><span style="color:blue;font-weight:bold" id="gy6Total1"></span></td>
	<td class="s7"><span style="color:black;font-weight:bold">Y7Total :</span><span style="color:blue;font-weight:bold" id="gy7Total1"></span></td>
	<td class="s8"><span style="color:black;font-weight:bold">Y8Total :</span><span style="color:blue;font-weight:bold" id="gy8Total1"></span></td>
	<td class="s9"><span style="color:black;font-weight:bold">Y9Total :</span><span style="color:blue;font-weight:bold" id="gy9Total1"></span></td>
	<td class="s10"><span style="color:black;font-weight:bold">Y10Total :</span><span style="color:blue;font-weight:bold" id="gy10Total1"></span></td>
	<td><span style="color:black;font-weight:bold">Total :</span>
	<span style="color:blue;font-weight:bold" id="grandTotal1"></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td><span></span></td>
	<td class="o1"><span style="color:black;font-weight:bold">Y1Total :</span><span style="color:blue;font-weight:bold" id="gy1Total2"></span></td>
	<td class="o2"><span style="color:black;font-weight:bold">Y2Total :</span><span style="color:blue;font-weight:bold" id="gy2Total2"></span></td>
	<td class="o3"><span style="color:black;font-weight:bold">Y3Total :</span><span style="color:blue;font-weight:bold" id="gy3Total2"></span></td>
	<td class="o4"><span style="color:black;font-weight:bold">Y4Total :</span><span style="color:blue;font-weight:bold" id="gy4Total2"></span></td>
	<td class="o5"><span style="color:black;font-weight:bold">Y5Total :</span><span style="color:blue;font-weight:bold" id="gy5Total2"></span></td>
	<td class="o6"><span style="color:black;font-weight:bold">Y6Total :</span><span style="color:blue;font-weight:bold" id="gy6Total2"></span></td>
	<td class="o7"><span style="color:black;font-weight:bold">Y7Total :</span><span style="color:blue;font-weight:bold" id="gy7Total2"></span></td>
	<td class="o8"><span style="color:black;font-weight:bold">Y8Total :</span><span style="color:blue;font-weight:bold" id="gy8Total2"></span></td>
	<td class="o9"><span style="color:black;font-weight:bold">Y9Total :</span><span style="color:blue;font-weight:bold" id="gy9Total2"></span></td>
	<td class="o10"><span style="color:black;font-weight:bold">Y10Total :</span><span style="color:blue;font-weight:bold" id="gy10Total2"></span></td>
	<td><span style="color:black;font-weight:bold">Total :</span>
	<span style="color:blue;font-weight:bold" id="grandTotal2"></span></td>
	</tr>
	</tfoot>
   </table>
 </div>
  <table>
   <tr>
		<td align="left">
		<c:choose>
		 <c:when test="${sessionScope.roleName=='CMC SPOC' || sessionScope.roleName=='PreSales Head'}">
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

var projectdurationCount=document.getElementById("projectduration").value; 

var dlId1 = document.getElementById("mydealid").value;

var creationDate1 = document.getElementById("creationDate").value;
var createdBy1 = document.getElementById("createdBy").value;
var timestamp1=document.getElementById("timestamp").value;


       function DeleteRow(objId){
       	   var rowT = document.getElementById("myrow_" + objId);
    	   rowT.parentNode.removeChild(rowT);
       }
      
       var row = document.getElementById("listCount").value;
       function Add() {
 	  
   	    var horizontalClass = "hh"+row;
   	    var horizontalClass1 = "ss"+row;
   	    var horizontalClass2 = "oo"+row;
	    var verticalClass = "vv"+row;
	    var licenceTotal  = "myTotal" +row;
	    var supportTotal  = "myTotal1" +row;
	    var otherTotal  = "myTotal2" +row;
	   
   		var addMoreString = '<tr id="myrow_'+ row +'">';
			//alert(addMoreString);
 
	    addMoreString += '<td align="left"><select name="boughtOuts['+row+'].towerId">' +document.getElementById("towerId").innerHTML+ '</select></td>';

        addMoreString +=  '<td align="left"><Input type="text" name="boughtOuts['+row+'].vendor" size=6 value="" ><input type="hidden" name="boughtOuts['+row+'].time_stamp" value="'+timestamp1+'"></td>';

        addMoreString +=  '<td align="left"><Input type="text" name="boughtOuts['+row+'].productDescription" size =11 value="" ><Input type="hidden" name="boughtOuts['+row+'].dl_id" value="'+dlId1+'"></td>';

     	addMoreString += '<td align="left"><select name="boughtOuts['+row+'].amortizeId">'
		 					 +document.getElementById("amortizeId").innerHTML+' </select><input type="hidden" name="boughtOuts['+row+'].creationDate" value="'+creationDate1+'"></td>';

	    addMoreString += '<td align="left"><select name="boughtOuts['+row+'].quoteCurrencyId">'
		  					+document.getElementById("quoteCurrencyId").innerHTML+' </select><input type="hidden" name="boughtOuts['+row+'].creationDate" value="'+creationDate1+'"></td>';

	    addMoreString += '<td align="left"><select name="boughtOuts['+row+'].quoteExistsId">'
		 				    +document.getElementById("quoteExistsId").innerHTML+' </select><input type="hidden" name="boughtOuts['+row+'].createdBy" value="'+createdBy1+'"></td>';
  
        addMoreString +=  '<td align="left"><Input type="text" size =11 name="boughtOuts['+row+'].priceTotal" value="" ><Input type="hidden" name="boughtOuts['+row+'].project_duration" value="'+projectdurationCount+'"></td>';

        addMoreString +=  '<td align="left" class="y1"><Input type="text" class="'+horizontalClass+' ty1"  name="boughtOuts['+row+'].licenceYear1" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="y2"><Input type="text" class="'+horizontalClass+' ty2"  name="boughtOuts['+row+'].licenceYear2" value="" size =10></td>';
        addMoreString +=  '<td align="left" class="y3"><Input type="text" class="'+horizontalClass+' ty3"  name="boughtOuts['+row+'].licenceYear3" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="y4"><Input type="text" class="'+horizontalClass+' ty4"  name="boughtOuts['+row+'].licenceYear4" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="y5"><Input type="text" class="'+horizontalClass+' ty5"  name="boughtOuts['+row+'].licenceYear5" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="y6"><Input type="text" class="'+horizontalClass+' ty6"  name="boughtOuts['+row+'].licenceYear6" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="y7"><Input type="text" class="'+horizontalClass+' ty7"  name="boughtOuts['+row+'].licenceYear7" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="y8"><Input type="text" class="'+horizontalClass+' ty8"  name="boughtOuts['+row+'].licenceYear8" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="y9"><Input type="text" class="'+horizontalClass+' ty9"  name="boughtOuts['+row+'].licenceYear9" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="y10"><Input type="text" class="'+horizontalClass+' ty10"  name="boughtOuts['+row+'].licenceYear10" value="" size =10 ></td>';
        addMoreString +=  '<td align="left"><Input type="text" class="myTotal" name="boughtOuts['+row+'].licenceTotal" value="" id="'+licenceTotal+'" size =10 ></td>';
        
        addMoreString +=  '<td align="left" class="s1"><Input type="text" class="'+horizontalClass1+' sty1" name="boughtOuts['+row+'].supportYear1" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="s2"><Input type="text" class="'+horizontalClass1+' sty2" name="boughtOuts['+row+'].supportYear2" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="s3"><Input type="text" class="'+horizontalClass1+' sty3" name="boughtOuts['+row+'].supportYear3" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="s4"><Input type="text" class="'+horizontalClass1+' sty4" name="boughtOuts['+row+'].supportYear4" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="s5"><Input type="text" class="'+horizontalClass1+' sty5" name="boughtOuts['+row+'].supportYear5" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="s6"><Input type="text" class="'+horizontalClass1+' sty6" name="boughtOuts['+row+'].supportYear6" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="s7"><Input type="text" class="'+horizontalClass1+' sty7" name="boughtOuts['+row+'].supportYear7" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="s8"><Input type="text" class="'+horizontalClass1+' sty8" name="boughtOuts['+row+'].supportYear8" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="s9"><Input type="text" class="'+horizontalClass1+' sty9" name="boughtOuts['+row+'].supportYear9" value="" size =10 ></td>';
        addMoreString +=  '<td align="left" class="s10"><Input type="text" class="'+horizontalClass1+' sty10" name="boughtOuts['+row+'].supportYear10" value="" size =10></td>';
        addMoreString +=  '<td align="left"><Input type="text" class="myTotal1" name="boughtOuts['+row+'].supportTotal" value="" id="'+supportTotal+'" size =10></td>';
        
        addMoreString +=  '<td align="left"><Input type="text" name="boughtOuts['+row+'].professionalService" value="" size =10></td>';
        
        addMoreString +=  '<td align="left"><Input type="text" name="boughtOuts['+row+'].training" value="" size =10></td>';
        
        addMoreString +=  '<td align="left"><Input type="text" name="boughtOuts['+row+'].description" value="" size =10></td>';
        
        addMoreString +=  '<td align="left" class="o1"><Input type="text" class="'+horizontalClass2+' oty1" name="boughtOuts['+row+'].otherYear1" value="" size =10></td>';
        addMoreString +=  '<td align="left" class="o2"><Input type="text" class="'+horizontalClass2+' oty2" name="boughtOuts['+row+'].otherYear2" value="" size =10></td>';
        addMoreString +=  '<td align="left" class="o3"><Input type="text" class="'+horizontalClass2+' oty3" name="boughtOuts['+row+'].otherYear3" value="" size =10></td>';
        addMoreString +=  '<td align="left" class="o4"><Input type="text" class="'+horizontalClass2+' oty4" name="boughtOuts['+row+'].otherYear4" value="" size =10></td>';
        addMoreString +=  '<td align="left" class="o5"><Input type="text" class="'+horizontalClass2+' oty5" name="boughtOuts['+row+'].otherYear5" value="" size =10></td>';
        addMoreString +=  '<td align="left" class="o6"><Input type="text" class="'+horizontalClass2+' oty6" name="boughtOuts['+row+'].otherYear6" value="" size =10></td>';
        addMoreString +=  '<td align="left" class="o7"><Input type="text" class="'+horizontalClass2+' oty7" name="boughtOuts['+row+'].otherYear7" value="" size =10></td>';
        addMoreString +=  '<td align="left" class="o8"><Input type="text" class="'+horizontalClass2+' oty8" name="boughtOuts['+row+'].otherYear8" value="" size =10></td>';
        addMoreString +=  '<td align="left" class="o9"><Input type="text" class="'+horizontalClass2+' oty9" name="boughtOuts['+row+'].otherYear9" value="" size =10></td>';
        addMoreString +=  '<td align="left" class="o10"><Input type="text" class="'+horizontalClass2+' oty10" name="boughtOuts['+row+'].otherYear10" value="" size =10></td>';
        addMoreString +=  '<td align="left"><Input type="text" class="myTotal2" name="boughtOuts['+row+'].otherTotal" value="" id="'+otherTotal+'" size =10></td>';
       	
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
							href="${pageContext.request.contextPath}/BoughtOutsView?timestampId=${e.time_stamp}&dsld=${e.dl_id}">
							<c:out value=" ${e.time_stamp}" /></a></td>
						<td><c:out value=" ${e.creationDate}" /></td>
						<td><c:out value=" ${e.createdBy}" /></td>

					</tr>
				</c:forEach>
			</table>
</div>
</div>
</div>

<jsp:include page="footer.jsp" />