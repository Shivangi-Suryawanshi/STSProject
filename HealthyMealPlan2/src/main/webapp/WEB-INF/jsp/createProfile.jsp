<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>      
<meta charset="ISO-8859-1">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <title>Profile Creation</title>
</head>
<body>
  <br><br>
       
        <div class="col-md-4 offset-md-4">
        <div class="card">
        <div class="card-header new-background text-white text-center"><p>Create your profile !</p></div>
        <div class="card-body">
        <form id="loginF" action="buy">
        <div class="form-group row">
        <label for="exampleInputEmail1">Full Name</label>
        <input name="name" type="text" class="form-control" id="name"  required>
         </div>
        <div class="form-group">
        <label for="exampleInputPassword1">Age</label>
        <input name="age" type="text" class="form-control" id="age" required>
        </div>
         <div class="form-group">
        <label for="exampleInputPassword1">Gender</label>
            <select class="gender form-control" id="gender" name=gender>
                <option>None</option>
               <option>Male</option>
               <option>Female</option>
               <option>Other</option>        
           </select>
        </div>       
         <div class="form-group">
        <label for="exampleInputPassword1">Weight</label>
        <input name="weight" type="text" class="form-control" id="weight" required>
        </div>
         <div class="form-group">
        <label for="exampleInputPassword1">BMI</label>
        <input name="bmi" type="text" class="form-control" id="bmi" required>
        </div>
         <div class="form-group">
        <label for="exampleInputPassword1">Height</label>
        <input name="height" type="text" class="form-control" id="height" required>
        </div>
        <div class="card-footer new-background text-white text-center ">
        <button type="submit" class="btn btn-primary" id="profilecreation">Create</button>
       
        </div>
        </form>
       </div>
     </div>
 </div>


      
        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

 <script>
 /* 
 $(document).ready(function (){

 document.getElementById("loginbtn").addEventListener("click", fun);  
 
 function fun(){
	var email = document.getElementById("exampleInputEmail1").value;
	var password = document.getElementById("exampleInputPassword1").value;
	 
		console.log("ewrqew = "+email+"............"+password);
		 if(email && password)
		 {
		 console.log("  null  ");
		 }else{	
			 
			 console.log(" else  ");
			 $('#loginF').submit(function(event) {
				    event.preventDefault();  
				}); 			 
		 }

	}
 
 }) */
</script>
</body>
</html>