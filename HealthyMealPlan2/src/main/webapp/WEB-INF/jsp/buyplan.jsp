<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>      
<meta charset="ISO-8859-1">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <title>Profile Creation</title>
</head>
<body>
  <br><br>
       
        <div class="col-md-6 offset-md-3">
        <div class="card" id="plandetail">
        <div class="card-header new-background text-white text-center"><p>Buy plan!</p></div>
        <div class="card-body">
          <c:forEach var="item" items="${allplans}">
       
        <div class="card" align="center">
        <table>
        <tr>
        <td>
        <h5>Plan Name : </h5>
         </td>
        <td>
        ${item.mealPlanName}
        </td>
        <td></td>
        </tr>
        <tr>
        <td>
        <h5>Plan Price :</h5>
         </td>
          <td>          
      ${item.mealPlanPrice}         
          </td>
          </tr>
         
           </table>
       
           <div>
            <div align="left">
             <h5><label >Select Plan for : </label></h5>                     
            <select class="selectday form-control" id="selectday" name=gender>
                <option>7</option>
                <option>14</option>
                <option>21</option>                    
           </select>      
           <input type="hidden"  class="name" id="name" value="${item.mealPlanName}">
           <input type="hidden" class="price" id="price" value="${item.mealPlanPrice}"> 
           <input type="hidden" class="planid" id="id" value="${item.id}"> 
           
        <button type="button" class="buy btn-success"  id="buy">Buy</button> 
         </div>  <br>   
         </div>
      
        </div><br>
        </c:forEach>  
       </div>
     </div>
      <div class="card" id="bill">
      <div class="card-header new-background text-white text-center"><p>your bill !</p></div>
        <div class="card-body">
        <table>
        <tr>
        <td><p>plan Name : </p></td>      
        <td><p id="billname"></p></td>
        </tr>
        <tr>
        <td><p>Total Amount : </p></td>
        <td><p id="billprice"></p></td>
        </tr>
        <tr>
        <td><button type="button" class="btn-success"  id="ok">Buy</button></td>
        <td>
        <button type="button" class="cancel btn-success"  id="cancel">cancel</button>               
        </td></tr>
        </table>
        </div>
      </div>
 </div>


      
        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

 <script>
 $(document).ready(function (){	
	$("#bill").hide();
	 var planid=0;
	 var day;
	 $(".buy").on("click", function() {
		 var name = $(this).closest("div").find(".name").val();
		 var price = $(this).closest("div").find(".price").val();
		 day = $(this).closest("div").find(".selectday").val();
		planid= $(this).closest("div").find(".planid").val();
		console.log("************"+planid);
		 if(day==7){
			 price=price*1;
		 }else if(day==14){
			 price=price*2; 
		 }else if(day==21){
			 price=price*3;
		 }
		 	$("#plandetail").hide();
		 	
		 document.getElementById("billname").innerHTML=name;
		 document.getElementById("billprice").innerHTML=price;
		 $("#bill").show();
		 
			 console.log("name = "+name);
			console.log(" price = " +price);
		    console.log("day = "+day);  	 
	 })
	 
		 $("#cancel").on("click", function() {
			 $("#bill").hide();
			 	$("#plandetail").show(); 
		 }) 
		 
			 $("#ok").on("click", function() {
				 console.log(" planid => " +planid);
				    console.log("day => "+day);  
				 
				  for(i=1;i<=2;i++){
					if(i==1){
						  $.get("billdata?data=" +planid, function(response){
					    		
					    	})
					} 
					if(i==2){
						  $.get("billdata?data=" +day, function(response){
					    		
					    	})
					} 
					
					}  
				 
				 alert("now you can login and see your Healthy Meal Plan");
				 
				 window.location.href = "login";
			 }) 
})


</script>
</body>
</html>