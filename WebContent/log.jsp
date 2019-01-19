<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align:center;
    margin: 24px 0 12px 0;
    position: relative;
}




img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 20px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}



.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Home Page</title>
<link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css'>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />



   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!--  <link rel="stylesheet" href="styles_menu.css"> -->
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>


</head>
<body>

<body>
<div id="wrapper">
	<div id="header-wrapper3" class="container">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="#">Maharashtrayatra.com </a></h1>
		</div>
	</div>


<div id="page">


<h2>Login Form</h2>

<center>
<div class="imgcontainer1">
      <span onclick="document.getElementById('id01').style.display='none'" ></span>
      <img src="images/12.jpg" alt="Avatar" class="avatar">
      
    </div>

 <button onclick="location.href = 'indexSignIn.html';" style="width:auto;">Login</button>

<div id="id01" class="modal">
  
  <!--  <form class="modal-content animate" action="indexSignIn.html"> -->
    <div class="imgcontainer2">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="log1.png" alt="Avatar" class="avatar">
    </div>
<!--   </form> -->
</div>

<button onclick="location.href = 'AdminLogin.html';" style="width:auto;"> Admin Login</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="AdminLogin.html">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="log1.png" alt="Avatar" class="avatar">
    </div>
 </form>
</div>

</center>
	</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

<div id="footer-content"></div>
<div id="footer">
	<p>Copyright (c) 2016 Mahatashtrayatra.com. All rights reserved. Design by <a href="http://www.maharashtrayatra.org">FCT</a>.</p>
</div>
<!-- end #footer -->
</div><!-- end #header -->

</body>
</html>
    