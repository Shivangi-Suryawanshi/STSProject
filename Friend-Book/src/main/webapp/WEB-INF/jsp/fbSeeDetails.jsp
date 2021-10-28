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
        <title>Your Profile</title>
</head>
<body>
     
        <main class="d-flex align-items-center" style="height: 95vh">
         <div class="container">
        <form action="request" method="POST" id="doreq">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="card">
                    
                            <div class="card-header text-dark text-center bg-light new-background">
                                
                                <table class="table table-borderless">                                  
                                    <tbody> 
                                        <tr>    
                                            <td><div> <span class="fa fa-arrow-left"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="Go Back" id="back"></span></div></td>
                                            <td>Post   :</td> 
                                            <td>${post}</td>
                                            <td>Followers   :</td>
                                            <td>${flwrs}</td>
                                            <td>Following   :</td>
                                            <td>${flwing}</td>
                                        </tr>
                                    </tbody>
                                </table>   
                            </div>                      
                            <div class="card-body" id="viewProfile">
                     
                                    <div class="form-group text-center" >
                                        <img src="img/${dp}" width="250" height="150">
                                        </div>                                  
                                    <div class="text-center">
                                       <input name="id" type="text" value="${id}" id="searchedid">
                                       <input type="text" value="${flag}" id="flag">
                                        <span class="navbar-brand mb-0 h1 text-center" id="UName" >${n}</span>
                                       <button type="submit" class="btn-primary text-center" id="sendrequest">Send Friend Request <span class=" text-center" id="sendrequest" ></span></button>
                                       
                                          <button type="button" class="btn-primary text-center" id="cancelrequest">Cancel</button>
                                    </div>                                 
                        
                                <table class="table table-borderless text-center">                                  
                                    <tbody> 
                                       
                                        <tr>                                          
                                            <td>Favourite Book   </td> 
                                            <td>  <label for="exampleInputPassword1" name="name">${b}</label></td> </td>                                         
                                        </tr>  <tr>                                          
                                            <td>Favourite Movie   </td> 
                                            <td><label for="exampleInputPassword1">${m}</label></td> </td>                                         
                                        </tr>
                                        <tr>                                          
                                            <td>Favourite Song</td> 
                                            <td><label for="exampleInputPassword1">${s}</label></td> <td></td> <td> </td>                                  
                                        </tr>
                                        <tr>                                          
                                            <td>Favourite Place</td> 
                                            <td>   <label for="exampleInputPassword1">${p}</label></td><td> </td>                                         
                                        </tr>
                                    </tbody>
                                </table> 
                              
                            </div>                       
                        </div>
                    </div>
                </div>
            </div> 
            </form>
            </div>
        </main>
 <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
  <script>

                $(document).ready(function () {
                	$("#flag").hide();
                	var flag = $("#flag").val();
               	 console.log(flag);
                if(flag === 'dont'){
                	 $("#sendrequest").hide();		
                }
                if(flag === 'do'){
                	 $("#sendrequest").show();	
                }	
               	 
               	 
                	$("#searchedid").hide();
                	
                	
                	
                    $("#back").click(function () {
                            
                    window.location.href="back";
                });
                    
                    
                    $("#span").click(function () {
                        console.log("active");
                    });
                    
                    var i=1;
                 $("#doreq").on('submit',function (event) {
                	   event.preventDefault();
                	   var f=$(this).serialize();
                	   
                	   
                	   $.ajax({
                		   
                	  url: "request",
                	  data: f,
                	  type:'POST',
                	  
                	 success: function(data, textStatus, jqXHR) {
                		  console.log(data);
                		  console.log("success....");
                	 },
                	 
                	 error: function(jqXHR, textStatus, errorThrown){
                		 console.log("Error...."); 
                	 }
                	 
                	 })
                	 i=f;
                	 
                	 $("#sendrequest").hide();
                 });
                 
                 $("#cancelrequest").click(function () {
                	
                	 var id = $("#searchedid").val();
                	 console.log(id);
                	 
                	   
              	   $.ajax({
              		   
              	  url: "reqdelete",
              	  data: id,
              	  type:'POST',
              	
              	 success: function(data, textStatus, jqXHR) {
              		  
              		  console.log("success done");
              	 },
              	 
              	 error: function(jqXHR, textStatus, errorThrown){
              		 console.log("Error...."); 
              	 }
              	 
              	 }) 
              	 $("#sendrequest").show();	 
                	 
                 });
                 
            });
    </script>
</body>
</html>