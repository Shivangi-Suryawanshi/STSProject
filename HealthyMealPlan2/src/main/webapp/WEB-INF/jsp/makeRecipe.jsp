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
 <title>Make Recipe</title>
</head>
<body>

   <%@include file="recipeNavbar.jsp"%><br><br>
 
 


  <div class="col-md-6 offset-md-3">
      <div class="card">
      
  <form action="recipedata" enctype="multipart/form-data" method="POST">
      <div class="card-header new-background text-white text-center"><p>Make Recipe !</p></div>
       <div class="card-body">                          
  <p class="invalidalert alert-danger"  align="center" role="alert">
This ingredient is not available!
</p><br>
  
  <table class="table table-borderless text-center">
   <tbody> 
  <tr>  
    <td>Enter Recipe Name</td>
    <td><input id="rname" name="recipename" type="text" class="form-control mr-sm-2" placeholder="Recipe Name"></td>   
    </tr>  
    <tr> 
    <td>Recipe Image</td> 
    <td><input  id="recepiimage" name="img" type="file"></td>  
  </tr>
  <tr>
    <td>Require Ingredient</td>
    <td><input id="iname" type="text" class="form-control mr-sm-2" placeholder="Ingredient Name"></td>
    <td><button type="button" class="addbtn btn btn-success" id="addbtn">Add</button></td>     
  </tr>
  <tr>
    <td></td>
    <td>
    <div  id="items" class="ingredientlist" ></div> 
    </td>
  </tr>
  <tr>
    <td>Prescription to make</td>
    <td><input id="prescription" type="text" class="form-control mr-sm-2" placeholder="Enter Prescription One by One"></td>
    <td><button type="button" class="addbtn btn btn-success" id="addprescription">Next</button></td> 
   </tr>
   <tr>
   <td></td> 
    <td id="pl">
      <div class="card" id="prescriptionlist" align="left"></div> 
    </td>		 
  </tr>
  
  </tbody>
    </table>
    </div>
      <div class="card-footer new-background text-white text-center " align="center">
      <button type="submit" class="addbtn btn btn-success" id="save">Done</button>
    </div>
      </form> 
   </div>  
  </div> 

        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script>
//$(".prescriptionlist").hide();
$(document).ready(function (){
	 $(".invalidalert").hide();
	 $(".pl").hide();
	
          $("#addbtn").on("click", function() {
           create();
	      })
	      
	       $("#addprescription").on("click", function() {
	             let ingredientname = document.getElementById("prescription").value;
	             if(ingredientname){
	             var html = "";	    	  	
	         	   a= '<label class="labels">'+ingredientname+'</label>';	    	
	                html +=a;
	                $("#prescriptionlist").append(html);
	             }
      
	      })
	      
	      /*
	       $("#save").on("click", function() {
	    	   
	    	   var selected_file = document.querySelector('#recepiimage');
	    	   var file = selected_file.files[0];
	    	   var form_data = new FormData();
	    	    // append selected file to the formData object
	    	   form_data.append("recepiimage", document.querySelector('#recepiimage').files[0]);
	    	   //let recipename=document.getElementById("rname").value;
	    	 //  console.log(recipename);
	    	//  let recipeimage= document.getElementById("recepiimage").value;
	    	 // console.log(recipeimage);
	    	 // var List=new Array();
	    	 // List[0]=recipename;
	    	//  List[1]=recipeimage;
	    	 // List.add(recipename);
	    	 // List.add(recipeimage);
	    	 //  var List=new List(recipename,recipeimage);
	    	   $.get("recipedata?recipedetail=" +form_data, function(response){
	    		   
	    	   })
	    	   
	    	   
	    	 /*  var ele = document.getElementsByTagName('label');
	    	   for (i = 0; i <= ele.length - 1; i++) {
	    		   console.log(ele[i].innerHTML);
	              // msg.innerHTML = msg.innerHTML + '<br />' + ele[i].id;
	           }*/
     //   console.log("save...");
	  //    })
	      
	      
	      
	      
	      function create(){
        	  
             let ingredientname = document.getElementById("iname").value;
             
             if(ingredientname){
     	     $.get("ingredientforrecipe?ingredientname=" +ingredientname, function(response){	    	
     	    	 var status=response;
     	    	 if(status.ingredient==ingredientname){
     	    		var ad=status.id;
     	    		console.log(ad);
     	    		  var html = "";	    	  	
     	         	   a= '<div class="Cards card" id="'+ad+'"> '+status.ingredient+ '<span type="button" onclick = "abc(this.id)" class="fa fa-times" id="'+ad+'" data-toggle="tooltip" data-placement="top" title="cancel"></span>'+'</div>';	    	
     	                html +=a;
     	                $("#items").append(html);     	    		 
     	    	 }
     	    	 else{ 

      	    		$(".invalidalert").show();
     			     window.setTimeout('invalid()',1100);  
     	             
                     } 
     	    	 })
          }
     	    	 
     	  		}
     	
     	  		             	 
              
         
         
       /*   $(document).ready(function () {
        	  $("#"+ad).on("click", function() {
        	  console.log("cancel");
        	//  $(this).closest("div").remove(); 
   	      })
          })*/
          
     
})
 function abc(a){ 

 //var ele = document.getElementsByTagName('span');
 //console.log(ele);
// document.getElementsByTagName('');
 $("#"+a).closest("div").remove();
            	  //$("#fd").remove();
          }

function invalid(){
	 $(".invalidalert").hide();
}

document.getElementById("save").addEventListener("click", fun);  
function fun() {	
	console.log("event listener");
	ingredient();
	 var prescription = document.getElementsByClassName('labels');
      for (i = 0; i <= prescription.length - 1; i++) {
		  // console.log(ele[i].innerHTML);
        // msg.innerHTML = msg.innerHTML + '<br>' + ele[i].id;        
        var temp=prescription[i].innerHTML;
         $.get("recipeprescription?prescription=" + temp, function(response){
	 })
     }
	
}
 function ingredient(){
	 var ingredient = document.getElementsByClassName('Cards');
	 for (i = 0; i <= ingredient.length - 1; i++) {
			var temp=ingredient[i].id;
			 $.get("recipeingredient?ingredient=" + temp, function(response){
			 }) 
		 }
 }
           
          
</script>
</body>
</html>








