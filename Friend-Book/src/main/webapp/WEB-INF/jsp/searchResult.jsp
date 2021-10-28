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
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Search-Result</title>
</head>
<body> 
 <nav class="navbar navbar-expand-lg navbar-dark bg-light new-background">
             <div>
            <span class="fa fa-home"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="Home" id="home"></span>
            <a class="navbar-brand" href="#"> <span class="navbar-brand mb-0 h1" id="UName">   Your Search Result  </span></a>
            </div>
        </nav>
<main class="d-flex align-items-center" style="height: 90vh">
 <div class="container">

 <div class="col-md-7 offset-md-3 "> 

                   <c:forEach var="item" items="${sr}">
                  <form action="detail" method="post">
                         <div class="card">
                            <div class="card-body" id="">
<div>
                          <input name="id" type="text" value="${item.id}" id="temp">
                                   <span class="fa fa-user-circle"  class="btn-secondary" id="profileicon" > 
                                   ${item.name}
                                   </span>
                        <button type="submit" class="btn btn-secondary btn-block" id="save">view</button>
                                </div>
                          
                            </div>

                        </div>
                        </form>
                        </c:forEach>
</div>

</div>
</main>

        


        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        
        <script>
        
        $(document).ready(function () {
        	//$("input").hide();
        	
        //	 $("#temp").hide();
        /*	for(i=1;i<=2;i++){
        let card=document.createElement("div");
       let name= document.createTextNode('Name:'+"hgfd"+' , ');
       card.appendChild(name);
        let desc= document.createTextNode('Desc:'+"aaaa"+' , ');
        card.appendChild(desc);
        let container = document.querySelector("");
        container.appendChild(card)
        	} */
        	$("#home").click(function () {
           	 window.location.href = "userHome";
       });
        
        });
       
        </script>
            
   
</body>
</html>