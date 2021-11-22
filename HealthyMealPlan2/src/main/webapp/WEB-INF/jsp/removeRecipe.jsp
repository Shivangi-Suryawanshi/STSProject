<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
   <p class="alert alert-success"  align="center" role="alert">
Recipe Successfully Removed!
</p><br>
<p class="invalidalert alert-danger"  align="center" role="alert">
This Recipe is not available!
</p><br>
      <div class="card">
      <div class="card-header new-background text-white text-center"><p>Remove Recipe !</p></div><br>
        
       <div class="card-body">                          
  
  <table class="table table-borderless text-center">
   <tbody> 
    <tr>  
    <td>Enter Recipe Name</td>
    <td><input id="recipename" placeholder="Recipe Name"></td> 
    <td> <button type="button" class="removebtn btn btn-success" id="removerecipe">Remove</button></td>  
    </tr>  
  </tbody>
    </table>
    </div>
   </div>  
  </div> 

        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script>
//$(document).ready(function () {
$(".alert").hide();	
$(".invalidalert").hide();

$(".removebtn").on("click", function() {
    let recipename = document.getElementById("recipename").value;
    if(recipename){
    $.get("checkrecipe?recipename=" +recipename, function(response){
   	 
   	 var status=response;
   	 if(status==true){
   		 $(".alert").show();
		     window.setTimeout('test()',1000);	 
   	 }else{
   		 $(".invalidalert").show();
		     window.setTimeout('invalid()',1000); 
   	 }
   	 
 		})
}
    console.log(ingredientname);
 		             	
 })
  function test(){
	 $(".alert").hide();
  }

function invalid(){
	 $(".invalidalert").hide();
}
</script>
</body>
</html>