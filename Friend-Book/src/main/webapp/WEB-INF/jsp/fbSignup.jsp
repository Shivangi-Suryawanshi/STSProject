<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <title>Signup</title>
</head>
<body>
 <main class="d-flex align-items-center" style="height: 90vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 offset-md-3 ">
                        <div class="card">
                            <div class="card-header new-background text-white text-center"><p>Signup !</p></div>
                            <div class="card-body">
                                <form id="reg-form" action="register" method="post">
                                    <div class="form-group">
                                        <label for="exampleInputName">Full Name</label>
                                        <input name="name" type="text" class="form-control" id="name" placeholder="Enter Name">
                                         
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email id">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Create password">
                                    </div>
                                    <div class="form-group">
                                        <table class="table">

                                            <tr>   
                                                <td>Captcha  :</td>

                                                <td>  <div class="container" id="data"></div></td>
                                                <td><input name="captchadata" class="form-control" id="captchadata" placeholder="Enter Captcha"></td>
                                            </tr>

                                        </table>                                          
                                    </div>
                                    <div class="card-footer new-background text-white text-center ">
                                        <button type="button" class="btn btn-primary "  id="back" >Back</button> 
                                        <button type="submit" class="btn btn-primary "  id="signup" >Signup</button>
                                       
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
            console.log("hello");
            $(document).ready(function () {
             
                var randomNumber = Math.floor(Math.random() * 10000);
                document.getElementById("data").innerHTML = randomNumber;

                /*
                $("#reg-form").on('submit', function (event) {
                    event.preventDefault();
                    console.log("form on");
                    
                    var name = $("#name").val();
                 
                    var str1 = $("#captchadata").val();
                    
                     var autogeneratename=name.substr(0,5) + Math.floor(Math.random() * 1000).toString();
                     
                     autogeneratename=autogeneratename.charAt(0).toUpperCase()+autogeneratename.substr(1,autogeneratename.length);
                     console.log(autogeneratename);
                    alert("Your Friend-Book name is = > "+ autogeneratename);
                    if (randomNumber == str1) {
                     //   window.location.href = "login";
                    } else {
                        console.log("wrong");
                    }

                });  */
                $("#back").click(function () {
                    window.location.href = "test";
                });
            });
        </script>
</body>
</html>