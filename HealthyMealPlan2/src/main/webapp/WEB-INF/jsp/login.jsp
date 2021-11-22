<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>      
<meta charset="ISO-8859-1">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <title>Login to HMP</title>
</head>
<body>
  <main class="d-flex align-items-center" style="height: 90vh">
        <div class="container">
        <div class="row">
        <div class="col-md-4 offset-md-4">
        <div class="card">
        <div class="card-header new-background text-white text-center"><p>Login Here!</p></div>
        <div class="card-body">
        <form id="loginF" action="loginverification">
        <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input name="pass" type="password" class="form-control" id="exampleInputPassword1" required>
        </div>
        <div class="card-footer new-background text-white text-center ">
        <button type="submit" class="btn btn-primary" id="loginbtn">Login</button>
        <a href="/signup">For signup click here</a>
        </div>
        </form>
       </div>
     </div>
 </div>
</div>
  </div> 
        </main>
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