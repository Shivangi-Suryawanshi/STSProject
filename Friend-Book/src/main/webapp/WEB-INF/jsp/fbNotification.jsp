<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>User home</title>
</head>
<body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-light new-background ">
        <form action="" method="post">
            <div>
                  <span class="fa fa-home"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="Home" id="home"></span>
               
                <a class="navbar-brand" href="#"> <span class="navbar-brand mb-0 h1" id="UName"> Activity  </span></a>
            </div>
 </form>
        </nav>



<div class="container" id="notify" align="left">
<main class="d-flex " style="height: 25vh">
         <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                    
                     <c:forEach var="item" items="${requestreceive}">
                     <form>
                        <div class="card" id="card">

                            <div class="card-body">
                                       
                                        <p>${item.name}, Location:   <small>${item.place} , Requested to follow you !! </small></p>
                                        <table>
                                        <tbody>
                                        <tr>
                                        <td><input type="button"  class="confirm btn btn-primary"  id="confirm1" value="Confirm"/><input type="hidden" value="${item.id}" name="sendorId" id="sendorId"/>
                                        </td>                                     
                                        <td><input type="button" class="cancel  btn btn-primary "  id="cancel1" value="Cancel"/><input type="hidden" value="${item.id}" name="deleteRequest" id="deleteRequest"/>
                                        </td>
                                        </tr>
                                        </tbody>
                                        </table>
                                       
                                        
 </div>
                        </div>
                        </form>
                        </c:forEach>
                    </div>
                </div>
          </div>
        </main>  
  </div> 


        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script>
        
     
              $(document).ready(function () {
            	  console.log("5");
            	 
            	  $("#home").click(function () {
                       window.location.href="userHome";
                  });
            	  
            	  
            	  $(".confirm" ).on("click", function() {
            		 
            		 var groupId = $(this).closest("td").find("#sendorId").val();
            	  		var id=groupId.toString();	
            	  		console.log(id);
            	  		
            	  		
            	  		 $.get("reqaccepted?id=" + id, function(response){
            	  			$("#cancel1").hide();
            	  			$("#card").hide();
            	  		})
            	  });
            	  		
            	  		
            	  		
            	  		 $(".cancel" ).on("click", function() {
            	  			console.log("oooooooooooooo");
            	  			 var groupId = $(this).closest("td").find("#deleteRequest").val();
                 	  		var id=groupId.toString();	
                 	  		console.log(id);
            	  		
                 	  		$.get("reqDeletedFromNotification?id=" + id, function(response){
                	  			$("#confirm1").hide();
                	  			$(".card").hide();
                	  		})
                	  	
            	  		 });
            	  		
            	  
            	  		
            	  		
            	  		
            	  		
            	  		
            	  		
            	  	/*  $.ajax({
            	  		 type:'GET',
                    	  url: 'reqaccepted/id/' + id,                   
                    	 success: function(id) {
                    		 
                    	 },
                    	 
                    	 error: function(jqXHR, textStatus, errorThrown){
                    		 console.log("Error...."); 
                    	 }
                    	 
                    	 })
                    	 
            	  		*/
            	  		
            		
            	}); 
              
       
        </script>
</body>
</html>