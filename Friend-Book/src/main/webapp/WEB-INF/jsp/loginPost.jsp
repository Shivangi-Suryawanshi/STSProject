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
               
                <a class="navbar-brand" href="#"> <span class="navbar-brand mb-0 h1" id="UName">Posts  </span></a>
            </div>
 </form>
        </nav>
      
      
      
      
        <main class="d-flex align-items-center" style="height: 400vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                    
                    <c:forEach var="item" items="${mypost}">
                        <div class="card" >
                       
                
                            <div class="card-header new-background text-white"><p>Post</p></div>
                          
                            <div class="card-body">
                                <form id="loginF">
                                    <div class="form-group text-center">

                                        <img src="img/${item.userpost}" width="250" height="250">
  
  
                                    
                                    </div>
                                    <div class="card-footer new-background text-white">
                                    <table>
                                    <tr>
                                    <td>
                                        <span class="like btn-secondary new-background fa fa-heart-o"   data-toggle="tooltip" data-placement="top" title="Likes" id="like">${item.like}</span>                                  
                                        <span class="comment btn-secondary new-background fa fa-comments-o" data-toggle="tooltip" data-placement="left" title="Comment" id="comment"></span> 
                                        <small class="viewcomment">View Comment</small>
                                    </td>
                                     </tr>
                                    
                                     </table>                                     
                                    </div>

                                </form>

                            </div>
                            
                             
                        </div>
                        </c:forEach>
                        
                        
                    </div>
                </div>
            </div> 
        </main>
        
        

        
        
        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script>
        $("#home").click(function () {
            window.location.href="userHome";
       }); 
        </script>
</body>
</html>