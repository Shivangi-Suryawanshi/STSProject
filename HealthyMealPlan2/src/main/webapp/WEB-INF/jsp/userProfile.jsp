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

<title>Your Profile</title>
</head>
<body>
 <%@include file="userNavbar.jsp"%>
<br><br>
   <div class="col-md-6 offset-md-3">
        <div class="card" id="plandetail">
        <div class="card-header new-background text-white text-center"><p>Your Profile!</p></div>
        <div class="card-body" align="center">
    <Table>
    <tr>
    <td><h5>Name :</h5></td>
     <td><h5>${data.name}</h5></td>
    </tr>
    <tr>
    <td><h5>Email :</h5></td>
     <td><h5>${data.email}</h5></td>
    </tr>
    <tr>
    <td><h5>Age   :</h5></td>
     <td><h5>${data.age}</h5></td>
    </tr>
    <tr>
    <td><h5>Gender :</h5></td>
     <td><h5>${data.gender}</h5></td>
    </tr>
    <tr>
    <td><h5>BMI :</h5></td>
     <td><h5>${data.bmi}</h5></td>
    </tr>
    <tr>
    <td><h5>Height :</h5></td>
     <td><h5>${data.height}</h5></td>
    </tr>
    <tr>
    <td><h5>Weight :</h5></td>
     <td><h5>${data.weight}</h5></td>
    </tr>
    </Table>
       </div>
     </div>
 </div>
 

<script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script>
            
     /* console.log("1");
                $(document).ready(function () {
                	  console.log("2");
                	  $("#editProfileDetail").hide();
                    $("#edit").click(function () {
                    	$("#editProfileDetail").show();
                    	 $("#view").hide();
                    //	$("#editProfileDetail").show();
                  
                 
                });
                    $("#home").click(function () {
                    	 window.location.href = "userHome";
                });
            }); */
        </script>
</body>
</html>