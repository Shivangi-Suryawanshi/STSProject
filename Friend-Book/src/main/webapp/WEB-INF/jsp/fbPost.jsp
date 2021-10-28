<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Posts</title>
</head>
<body>

        <main class="d-flex align-items-center" style="height: 50vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 offset-md-4">
                        <div class="card">
                            <div class="card-header new-background text-white"><p>Posted By</p></div>
                            <div class="card-body">
                                <form id="loginF">
                                    <div class="form-group">

                                    </div>
                                    <div class="card-footer new-background text-white">
                                        <span class="fa fa-heart-o"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="Likes" id="like"></span>
                                        <small>0</small>
                                         <span class="fa fa-comments-o" class="btn-secondary" data-toggle="tooltip" data-placement="left" title="Comment" id="like"></span>   
                                           <small>0</small>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </main>   

        <main class="d-flex align-items-center" style="height: 50vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 offset-md-4">
                        <div class="card">

                            <div class="card-body">
                                <form id="loginF">
                                    <div class="form-group">
                                        <p>Notification Friend name   <small>Requested to follow you !! </small></p>
                                        <button type="submit" class="btn btn-primary" id="Lbtn">Confirm</button>
                                        <button type="submit" class="btn btn-primary" id="Bbtn">Follow Back</button>  
                                        <button type="submit" class="btn btn-primary" id="Bbtn">Decline</button>  
                                    </div>

                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </main>   

        
        <main class="d-flex align-items-center" style="height: 50vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 offset-md-4">
                        <div class="card">

                            <div class="card-body">
                                
                                    <div class="form-group">
                                        <p id="comment">Friend name   <small id="commentMsg">Comment!! </small></p>
                                       
                                    </div>
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
     // function GFG_Fun() {
      //      document.getElementById('div1').id = 'div2';
      //  }
</script>
</body>
</html>