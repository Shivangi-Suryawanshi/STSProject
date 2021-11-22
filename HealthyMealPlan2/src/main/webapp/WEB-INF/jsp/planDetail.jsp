<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Your Meal Plan</title>
</head>
<body>
 <%@include file="userNavbar.jsp"%>
<br><br>
   <div class="col-md-6 offset-md-3">
        <div class="card" id="plandetail">
        <div class="card-header new-background text-white text-center"><p>Your Plan For -</p></div>
        <div class="recipe card-body" align="center">
        <div align="left">
        <table>
        <tr>
        <td><h5>Breakfast</h5></td>
        </tr>
        <c:forEach var="item" items="${breakfast}">
        <tr>
        <td><ul><li>
        <input type="hidden" value="${item.id}"><p>${item.recipen}</p>
        </li></ul></td>
        
        </tr> 
        </c:forEach>
        
        <tr>
        <td><h5>Morning snacks</h5></td>
        </tr>
        <c:forEach var="item" items="${MS}">
        <tr>
        <td>
        <ul>
        <li><input type="hidden" value="${item.id}"><p>${item.recipen}</p></li>
        </ul>
        </td>
        </tr>
        </c:forEach>
        
        <tr>
        <td><h5>Lunch</h5></td>
        </tr>
        <c:forEach var="item" items="${lunch}">
        <tr>
        <td><ul><li>
        <input type="hidden" value="${item.id}"><p>${item.recipen}</p>
        </li></ul></td>
        </tr>
        </c:forEach>
        
        <tr>
        <td><h5>Afternoon snacks</h5></td>
        </tr>
        <c:forEach var="item" items="${AS}">
        <tr>
        <td><ul><li>
        <input type="hidden" value="${item.id}"><p>${item.recipen}</p>
        </li></ul></td>
        </tr>
        </c:forEach>
        
        <tr>
        <td><h5>Dinner</h5></td>
        </tr>
        <c:forEach var="item" items="${dinner}">
        <tr>
        <td><ul><li>
        <input type="hidden" value="${item.id}"><p>${item.recipen}</p>
        </li></ul></td>
        </tr>
        </c:forEach>
        
        <tr>
        <td><h5>Hydration</h5></td>
        </tr>
        <c:forEach var="item" items="${H}">
        <tr>
        <td><ul><li>
        <input type="hidden" value="${item.id}" id="data"><p>${item.recipen}</p>       
      </li></ul></td>
        </tr>
        </c:forEach>
       
        </table>
    </div>
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
       <div class="card-footer new-background text-white text-center ">
       
        </div> 
     </div>
 </div>
 

<script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script>
            
      console.log("1");
                $(document).ready(function () {
                	 $(".recipedetails").hide();
                	 $("#back").hide();
                	/*   console.log("2");
                	  $("#editProfileDetail").hide();
                    $("#edit").click(function () {
                    	$("#editProfileDetail").show();
                    	 $("#view").hide();
                    //	$("#editProfileDetail").show();
                  
                 
                }); */
                    $("p").click(function () {
                    	$(".recipe").hide();
                    	 $("#back").show();
                   	 $(".recipedetails").show(); 
                    	 var recipeid = $(this).closest("td").find("input").val();
                    	 console.log("*****"+recipeid);
                    	  $.get("getrecipe?recipeid=" +recipeid, function(response){
                    	    	var data=response;
                    	    	var pic=data.image;
                    	    console.log(pic);
                    	    	 var html = "";	    	  	
                    	   	   a= '<p class="labels" id="label">'+'<h5 >'+data.recipen+'</h5>'+'</p>';	    	
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
                    	 
                    	 
                    	 //window.location.href = "userHome";
                });
                
               
            }); 
        </script>
</body>
</html>