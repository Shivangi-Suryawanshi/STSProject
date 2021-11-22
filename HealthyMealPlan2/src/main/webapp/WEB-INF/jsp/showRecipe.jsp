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

<title>Remove Recipe</title>
</head>
<body>

   <%@include file="recipeNavbar.jsp"%><br>
 
 

  <div class="col-md-6 offset-md-3">
      <div class="card">
          <div class="card-header new-background text-white text-center"><p>Recipes !</p></div>
       <div class="recipe card-body">                          
  
  <table class="table table-borderless text-center">
   <tbody> 
   <tr>
   <td><h5>Recipe_Image </h5></td>
    <td><h5>Recipe_Name</h5></td>
     <td><h5>Recipe_Detail</h5></td>
   </tr>
     <c:forEach var="item" items="${recipes}">
      <tr>
    <td><img src="img/${item.image}" alt="cant" class="cat_circle">
      </td>
    
    <td>${item.recipen}</td>
     
    <td>
    <input type="hidden" value="${item.id}" name="s" id="recipeidhidden"/>
    <button type="button" class="recipedetail addbtn btn btn-success" >View Detail</button></td>  
     </tr> 
    </c:forEach>
    
  </tbody>
    </table>
    </div>
    <div class="recipedetails card-body">

     <table>
     <tr>
     <td><h5>Recipe Name : </h5></td>
     <td id="recipename">
     
     </td>
     </tr>
     <tr>
     <td id="recipeimage">
     
     </td>
     </tr>
     <tr><td><h5>Ingredient : </h5></td></tr>
     <tr>
     <td id="ingredient">
    
     </td>
     </tr>
     <tr><td><h5>Direction : </h5></td></tr>
     <tr>
     <td id="direction">
    
     </td>
     </tr>
     </table>
    </div>
    </div> 
   </div>
    
  </div> 

        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script>
$(document).ready(function () {
	 $(".recipedetails").hide();	
	 $(".back").hide();

	 
$(".recipedetail").on("click", function() {
	 var recipeid = $(this).closest("td").find("#recipeidhidden").val();
	 $(".recipe").hide();
	 $(".recipedetails").show();  
	 $(".back").show();
    console.log(recipeid);
    //$.get("recipeprescription?prescription=" + temp, function(response){
    $.get("getrecipe?recipeid=" +recipeid, function(response){
    	var data=response;
    	var pic=data.image;
    console.log(pic);
    	 var html = "";	    	  	
   	   a= '<p class="labels">'+'<h5 >'+data.recipen+'</h5>'+'</p>';	    	
          html +=a;
          $("#recipename").append(html);
          
          var html = "";	    	  	
    	   //a= '<label class="labels">'+data.recipen+'</label>';	 
    	   //${data.image}
    	  a= '<img src="img/'+pic+'" alt="image not available" width="250" height="250">';
           html +=a;
           $("#recipeimage").append(html);
    
    })
     $.get("getrecipeingredient?recipeid=" +recipeid, function(response){
    	 
    	 var data = response;
    	 var list="<ul>";
		  data.forEach(function(clist) {
			list+= '<li>'+clist.ingredient+'</li><br>' ;
			});
	 		
		  list+="</ul>" ;
		  $("#ingredient").append(list); 
    })
    
     $.get("getrecipeprescription?recipeid=" +recipeid, function(response){
    	 var data = response;
    	 var list="<ul>";
		  data.forEach(function(clist) {
				//console.log(clist.comment);
			list+= '<li>'+clist.prescription+'</li><br>' ;
			});
	 		
		  list+="</ul>" ;
		  $("#direction").append(list);
     })
    
  
	   
   })
   
 
   
})  
</script>
</body>
</html>