<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
<title>Add Ingredient</title>
</head>
<body>

  <%@include file="mealpalnNavbar.jsp"%><br>

  <div class="col-md-7 offset-md-3">
  
   <div class="card">
       <div class="card-header new-background text-white text-center"><p> Create Meal Plan!</p></div>
       <div class="card-body">
       <p class="invalidalert alert-danger"  align="center" role="alert">
This recipe is not available!
</p><br>

       <div id="mealplanname"> 
         <table>
           <tr> 
           <td> 
                <label>Enter Meal Plan Name</label>
                <input id="mptname" placeholder="Meal Plan Name">
                <label>Enter Meal Plan Price</label>
                <input id="mptprice" placeholder="Price">
                <button type="button" class="createmealpaln btn btn-success">Create</button>
           </td>                                                                            
           </tr>
         </table>
         </div>
         <div id="mealforday" align="center">
         <p class="days alert-primary"  align="center" role="alert">
You have to create meals for all 21 day otherwise this paln type will not show to user!
</p><br>
         <table id="mealplandetail">
           <tr>                
              <td>Meal for Day</td>
              <td><select class="selectday form-control" id="selectday">
               <option>1</option>
               <option>2</option>
               <option>3</option>
               <option>4</option>
               <option>5</option>
               <option>6</option>
               <option>7</option>
               <option>8</option>
               <option>9</option>
               <option>10</option>
               <option>11</option>
               <option>12</option>
               <option>13</option>
               <option>14</option>
               <option>15</option>
               <option>16</option>
               <option>17</option>
               <option>18</option>
               <option>19</option>
               <option>20</option>
               <option>21</option>                                    
               </select>
            </td> 
            <td>
            
            <button type="button" class="addbtn btn btn-success" id="nextdayformeal">Next</button>
            
            </td>
             <td>
            
            <button type="button" class="btn btn-success" id="backtocreatingmealplan">Back</button>
            
            </td>                                                                           
          </tr>
        
        </table>
        </div>
        
        <div id="mealtype" align="center">    
<p class="mealtype alert-primary"  align="center" role="alert">
You have to add recipes for all 6 meal type otherwise this meal paln type will not show to user!
</p><br>
        <table>
        <tr>
        <td>Select Meal</td>
               <td><select class="selectmeal form-control" id="selectmeal">
                 <option>Breakfast</option>
                 <option>Morning Snack</option>
                 <option>Lunch</option>
                 <option>Afternoon Snack</option>
                 <option>Dinner</option>
                 <option>Hydration</option>
                 </select>
               </td> 
               <td>
               <button type="button" class="addbtn btn btn-success" id="nextmealtype">Next</button>
               <td> <button type="button" class="backtoday btn btn-success">Back</button></td>
               </td>
        </tr>
        </table>
        </div>
        <div id="addrecipe" align="center">
        <p class="recipenotpresent alert-danger"  align="center" role="alert">
You have to add atleast one recipe !
</p>  

 <p class="recipeadded alert-success"  align="center" role="alert">
 Recipe Successfully Added!
</p>
        <table>
         <tr>  
           <td>Enter Recipe Name</td>
           <td><input id="recipename" placeholder="Recipe Name"></td> 
             <td> <button type="button" class="addrecipeformeal btn btn-success" id="addrecipeformeal">Add</button></td>  
           <td> <button type="button" class="back btn btn-success">Back</button></td>        
         </tr> 
        <tr>
        <td></td>
         <td>
            <div  id="recipelist" class="recipelist" align="center"></div> 
         </td>
        </tr>
        </table>
        </div>
       </div>
         <div class="card-footer new-background text-white text-center " align="center" id="footer">
      <button type="submit" class="addbtn btn btn-success" id="save">Done</button>
    </div>
       </div>
  </div> 

        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script>
$(".invalidalert").hide();
$(".recipenotpresent").hide();
$(".recipeadded").hide();
$(document).ready(function () {
	
	
	var day=1;
	var mealtype=0;
	
	
	$("#footer").hide();
	$("#mealforday").hide();
	$("#mealtype").hide();
	$("#addrecipe").hide(); 
	
	  $(".createmealpaln").on("click", function() {
	
		  let mealplantypename = document.getElementById("mptname").value;
		  let mealplantypeprice = document.getElementById("mptprice").value;
		 
		  if(mealplantypename && mealplantypeprice!=0){
		    $.get("mealplantypename?name=" +mealplantypename, function(response){	    			    
		    })
		     $.get("mealplantypeprice?price=" +mealplantypeprice, function(response){	    	
		   		    
		    })
		    
			  $("#mealplanname").hide();
			  $("#mealforday").show();  
		  }else{
			  alert("Some field is Empty");
		  }
  })
          $("#nextdayformeal").on("click", function() {
          
        	 
		   $("#mealforday").hide();
		   $("#mealtype").show();
		   
		   day = document.getElementById("selectday").value;
       	
		   
		   console.log("Day => "+day);
		   
 		  $.get("day?day=" +day, function(response){
 				
 	    	})
          })
                   
          $("#nextmealtype").on("click", function() {
        	
        	  $("#footer").show();
		  let value = document.getElementById("selectmeal").value;
		  console.log("value =>  "+value);
		  
		 
		  
		  if(value=="Breakfast"){
			  mealtype=1;
		  }else if(value=="Morning Snack"){
			  mealtype=2;
		  }else if(value=="Lunch"){
			  mealtype=3;
		  }else if(value=="Afternoon Snack"){
			  mealtype=4;
		  }else if(value=="Dinner"){
			  mealtype=5;
		  }else if(value=="Hydration"){
			  mealtype=6;
		  }
		 
		  
		  console.log("mealtype => "+mealtype);
		  
		  $.get("meal?meal=" +mealtype, function(response){
	    		
	    	})
	
		  $("#mealtype").hide();
		  $("#addrecipe").show();         	
          })
                   
      $("#addrecipeformeal").on("click", function() {

              $("#addrecipe").show(); 
              let recipename = document.getElementById("recipename").value; 
              //console.log();
              if(recipename){            	  
      	        $.get("recipeformeal?recipename=" +recipename, function(response){	    	
      	    	 var recipedata=response;
      	    	 if(recipedata.recipen==recipename){
      	    		var ad=recipedata.id;
      	    		console.log(ad);
      	    		  var html = "";	    	  	
      	         	   a= '<div class="Cards card" id="'+ad+'"> '+recipedata.recipen+ '<span type="button" onclick = "abc(this.id)" class="fa fa-times" id="'+ad+'" data-toggle="tooltip" data-placement="top" title="cancel"></span>'+'</div>';	    	
      	                html +=a;
      	                $("#recipelist").append(html);     	    		 
      	    	 }
      	    	 else{ 

       	    		$(".invalidalert").show();
      			     window.setTimeout('invalid()',1100);  
      	             
                      } 
      	    	 })
           }
              
        }) 
        
        $(".back").on("click", function() {
        	 $("#addrecipe").hide();
        	 $("#footer").hide();
        	 $("#mealtype").show();
   		  
      })  
      
         $(".backtoday").on("click", function() {
        	 $("#mealtype").hide();
        	 $("#mealforday").show(); 
   		  
      }) 
      $("#backtocreatingmealplan").on("click", function() {
   	   $("#mealforday").hide();
    	  $("#mealplanname").show();
		  
   }) 
      
      $("#save").on("click", function() {
    	  console.log("tttttttttttttttttttttttt");
    	  var recipe=null;
    	  console.log("@@@@"+recipe);
    	   recipe = document.getElementsByClassName('Cards');
    	   recipe=recipe[0];
    	   console.log("###"+recipe);
    		 if(recipe!=null){
    			  recipe = document.getElementsByClassName('Cards');
    	  for (i = 0; i <= recipe.length - 1; i++) {
    				var temp=recipe[i].id;
    				console.log(temp);
    				 $.get("recipeformealplantype?recipeid=" + temp, function(response){
    				 }) 
    			 } 
    	  $(".recipeadded").show();
			 window.setTimeout('recipeadd()',1100);  
            
    		 $(".Cards").remove();
    		 }else{
    			 $(".recipenotpresent").show();
    			 window.setTimeout('recipealert()',1400);  
   	            
    		 }
      
      })

})
 function abc(a){ 
         $("#"+a).closest("div").remove();           
}
          
function invalid(){
	 $(".invalidalert").hide();
}
 
 function recipealert(){
	 $(".recipenotpresent").hide();	 
 }

 function recipeadd(){
	 $(".recipeadded").hide();
 }
 
</script>
</body>
</html>