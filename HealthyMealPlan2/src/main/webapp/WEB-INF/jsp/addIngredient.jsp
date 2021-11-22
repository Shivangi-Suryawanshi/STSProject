<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />

<title>Add Ingredient</title>
</head>
<body>

<%@include file="ingredientNavbar.jsp"%><br>
 


  <div class="col-md-4 offset-md-4">
  <p class="alert alert-success" role="alert">
Ingredient Successfully Added!
</p>
 <div class="card">
       <div class="card-header new-background text-white text-center"><p>Add Ingredient !</p></div>
       <div class="card-body"> 
         <label>Enter Ingredient Name</label>
         <input id="iname" placeholder="Ingredient Name">
         <button type="button" class="addbtn btn btn-success">Add</button>
      </div>
      </div>
</div> 

 
        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script>
$(document).ready(function () {
	 $(".alert").hide();	
	 
	  $(".addbtn").on("click", function() {
		  let inputVal = document.getElementById("iname").value;
		  console.log(inputVal);
		  $.get("saveingredient?ingredientname=" +inputVal, function(response){ 	  	
	  		})
		  
		  $(".alert").show();
		   window.setTimeout('test()',900);
			             	
                    })
                    
                    
})

function test(){

	 $(".alert").hide();

      } 
</script>
</body>
</html>