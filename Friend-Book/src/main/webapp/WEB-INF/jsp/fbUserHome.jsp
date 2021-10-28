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
        <form action="forsearch" method="post">
        
        <div class="container">
            <div>
                <span class="fa fa-home"  class="btn-secondary" data-toggle="tooltip" data-placement="top" id="Home"></span>
               
                <a class="navbar-brand" href="#"> <span class="navbar-brand mb-0 h1" id="UName"> ${name}   </span></a>
            </div>
            <div align="center">
             <input name="name" type="text" class="form-control mr-sm-2" id="name" placeholder="Enter Name">
            
            </div>
                <div >
                <button type="submit" class="btn btn-success" id="search" >Search</button>
                <span class="fa fa-bell"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="Notification" id="notification" ></span>
               <span class="fa fa-user-circle"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="See Profile" id="profile" ></span>
               <span class="seepost new-background" data-toggle="tooltip" data-placement="top" title="See your posts" id="posts" >Post</span>
               <span class="fa fa-sign-out"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="Logout" id="logout" ></span>
            </div>
            </div>
            </form>
            </nav>
            
 <div id="card" align="left" >
                <form action="savepost" enctype="multipart/form-data" method="POST"> 
                <div class="card-body">                        
               <input name="userpost"  type="file" id="s"> 
               <button type="submit" class="btn btn-primary">Upload Post</button>
                </div>     
               </form>                     
                  
 </div>


   
          
        <main class="d-flex align-items-center" style="height: 250vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                    
                    <c:forEach var="item" items="${post}">
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
                                        <input type="hidden" value="${item.id}" name="sendor" id="postId"/>
                                        <span class="comment btn-secondary new-background fa fa-comments-o" data-toggle="tooltip" data-placement="left" title="Comment" id="comment"></span> 
                                        <small class="viewcomment"  id="viewcomment" >View Comment</small>
                                     
                                        <div>
                                        <span onclick="this.parentElement.style.display='none'" class="closebtn">x</span> 
                                        <div id="${item.id}" class="new-background">
                                                                                              
                                         </div> 
                                          </div>
                                         </td>
                                         </tr >
                                         <tr class="commenttr">
                                         <td>
                                         <input type="text" id="writecmt" class="wcmt">
                                        
                                         <button type="button" class="savecomment new-background"  id="signup" style="border:none;">Post</button >
                                         <input type="hidden" value="${item.id}" name="s" id="s"/>
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
       
        
        function openTab(tabName) {
  		  console.log("function is running");
  		  
  		  var i, x;
  		  x = document.getElementsByClassName("viewcomment");
  		  for (i = 0; i < x.length; i++) {
  		    x[i].style.display = "none";
  		  }
  		  document.getElementById(tabName).style.display = "block";
  		}
  	  
  	  
              $(document).ready(function () {
            	  console.log("5");
            	  
            	  $("#closebtn").hide();
            	  
            	/*  $('input[type="file"]').change(function(e){
                      var fileName = e.target.files[0].name;
                      window.location.href = "savepost";
                      console.log(fileName);
                  });
            	 */
            	  $("#here").hide();
            	  $("#notify").hide();
            	  $(".commenttr").hide();
            	    $("#searchresult").hide();
            	  
                   $("#notification").click(function () {
                             console.log("1");
                          //   $("#notify").slideDown("slow"); 
                             window.location.href = "notification";
                });
                  
                    $("#profile").click(function () {
                             console.log("2");
                    window.location.href = "userProfile";
                });
                
                    $("#logout").click(function () {
                    	 console.log("3");
                   	 window.location.href = "test";
               });
                    
                    $("#search").click(function () {
                   	 console.log("4");
                    // $("#searchresult").show();
                  	 window.location.href = "forsearch";
              });
             
           
                    $(".like" ).on("click", function() {
                    	 console.log("5");
                    	 var groupId = $(this).closest("td").find("#postId").val();
              	  		var id=groupId.toString();	
              	  		console.log(id);
              	  	$.get("liked?id=" + id, function(response){
        	  		
        	  		})
                    })
                    
                     $(".comment" ).on("click", function() {
                    	 console.log("6");
                    	 var groupId = $(this).closest("td").find("#postId").val();
               	  		var id=groupId.toString();	
               	  		console.log(id);
               	  	 $(".commenttr").show();
                    })
                    
                   
                   $(".viewcomment" ).on("click", function() {
                    	console.log("can see");
                    	 var postId = $(this).closest("td").find("#postId").val();
                    		console.log("vccccccccc"+postId);
                    	  
                    	  
                    	  $.get("seecomment?id=" + postId, function(response){
                    		  console.log("gooo");
                    		  var data = response;
                    		  console.log(data);
                    		  var list="<ul>";
                    		  data.forEach(function(clist) {
              					console.log(clist.comment);
              				list+= '<li>'+ clist.commentbyname+ ":" +  clist.comment +'</li><br>' ;
              				});
                    	 		
                    		  list+="</ul>" ;
                    		//  document.getElementsByClassName('.createcomment').innerHTML=list;
                    	
                    		  document.getElementById(data[0].postid).innerHTML=list;
                    		
                    		  $("closebtn").show();
            	  		})
            	 
            	  		
            	  		 
                    	  
                  })
                 
                  $(".savecomment ").on("click",function () {
                	  var cmt = $(this).closest("td").find("#writecmt").val();
                	  var pId = $(this).closest("td").find("#s").val();
                	  console.log(cmt);
                	  console.log(pId);
                	  
                		$.get("commentid?id=" + pId, function(response){
                	  		
            	  		})

            	  		$.get("commentdsc?cmt=" + cmt, function(response){
            	  				
            	  		})
                    });
                  
                    $(".seepost" ).on("click", function() {
                    	
                    	 window.location.href = "mypost";
                    })
                    
               //<button type="submit" class="new-background"  id="signup" style="border:none;">View Comment</button   
               /*
                <div class="column new-background" onclick="openTab('viewcomment');" >View Comment</div>
                                         <button type="submit" class="new-background"  id="signup" style="border:none;">View Comment 
                                         
                                         <div class="column new-background" onclick="openTab('viewcomment');" ></div>
                                         </button >
                                                <div class="viewcomment" id="viewcomment">
                                                <c:forEach var="item" items="${cmt}">
                                                <p class="new-background"> ${item.getCommentbyname()}, ${item.getComment()} </p>
                                                </c:forEach>
                                          </div> 
                                    </td>
                                     </tr>
                                     <tr class="commenttr">
                                     <td>
                                      <input type="text" id="commentbyuser">
                                      <small class="savecomment " id="savecomment">Post</small>
                                      <input type="hidden" value="${item.id}" name="sendorId" id="postId"/>
                                     </td>
                                     </tr>
               */   
                    
            });
              
        </script>
</body>
</html>