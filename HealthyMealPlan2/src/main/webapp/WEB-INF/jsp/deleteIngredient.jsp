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

 <%@include file="ingredientNavbar.jsp"%><br><br>
 
 


  <div class="col-md-5 offset-md-4">
  <p class="alert alert-success"  align="center" role="alert">
Ingredient Successfully Removed!
</p><br>
 <p class="invalidalert alert-danger"  align="center" role="alert">
This ingredient is not available!
</p><br>
        <div class="card">
       <div class="card-header new-background text-white text-center"><p>Remove Ingredient !</p></div><br>
        
    <div align="center">  
    <label>Enter Ingredient Name</label>
    <input id="iname" placeholder="Ingredient Name">
    <button type="button" class="removebtn btn btn-success">Remove</button>
    </div>
    <!--
         <div>
         <table>
         <tr>
         <td id="items">
         
         </td>
         </tr>
         </table>
        </div>
        
      --> 
         
   </div>

  </div> 

        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script>

/*
var count = 5;

var html = "";
for(i=1;i<=count;i++)
{
	
	var a="test"+i;
	//+${a}+
 carddiv= '<div class="card" id="'+a+'">card ' + i + '<span class="cancel fa fa-times" id="'+a+'"  data-toggle="tooltip" data-placement="top" title="cancel"></span>'+'</div>';
 //carddiv.className = a;
 html +=carddiv ;
  
  //  html += "<span class='cancel fa fa-times'   data-toggle='tooltip' data-placement='top' title='cancel'></span>";
  html += "<br>";
}
$("#items").html(html);
*/

$(document).ready(function () {
	      $(".alert").hide();	
	      $(".invalidalert").hide();
	      
	      $(".removebtn").on("click", function() {
		     let ingredientname = document.getElementById("iname").value;
		     $.get("checkingredient?ingredientname=" +ingredientname, function(response){
		    	 
		    	 var status=response;
		    	 if(status==true){
		    		 $(".alert").show();
				     window.setTimeout('test()',900);	 
		    	 }else{
		    		 $(".invalidalert").show();
				     window.setTimeout('invalid()',1000); 
		    	 }
		    	 
		  		})
		     console.log(ingredientname);
		  		             	
          })
/*
$("#test2").on("click", function() {
	// var groupId = $(this).closest("td").find("#s").val();
	 console.log("ugfgfd");
	$("#test2").hide();
})
*/
//<td><span class="cancel fa fa-times"   data-toggle="tooltip" data-placement="top" title="cancel"></span>
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