<%-- 
    Document   : index
    Created on : Feb 27, 2015, 7:39:57 PM
    Author     : OOPs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="home.css">
         <title>JSP Page</title>
        
         <style>
            
        .but{
  
        width: 100px; height: 40px;
        color : red;

   border-top: 1px solid #96d1f8;
   background: #65a9d7;
   background: -webkit-gradient(linear, left top, left bottom, from(#728cdb), to(#65a9d7));
   background: -webkit-linear-gradient(top, #728cdb, #65a9d7);
   background: -moz-linear-gradient(top, #728cdb, #65a9d7);
   background: -ms-linear-gradient(top, #728cdb, #65a9d7);
   background: -o-linear-gradient(top, #728cdb, #65a9d7);
   padding: 5px 10px;
   -webkit-border-radius: 8px;
   -moz-border-radius: 8px;
   border-radius: 8px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: white;
   font-size: 20px;
   font-family: Georgia, serif;
   text-decoration: none;
   vertical-align: middle;
  cursor: pointer;
}
        </style>

<link href="responsiveslides.css" rel="stylesheet" type="text/css"/>
<link href="themes.css" rel="stylesheet" type="text/css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="responsiveslides.min.js" type="text/javascript"></script>
  <script>
      
      $(function () {

      // Slideshow 1
      $("#slider1").responsiveSlides({
        auto: true,
        pager: false,
        nav: true,
        speed: 500,
        maxwidth: 1200,
        namespace: "centered-btns"
      });
   });
  </script>
  
  

  
    </head>
    <body>
       

    <div class="contact-us">
        <h1 style="color:  #ffffff; margin-left: 50px;">Contact US</h1>
        <form action="contact" method="get">
            <br><br>  <label style=" color: #ffffff; font-size: 20px; margin-left: 28px; ">Name: <input name="name" type="text" placeholder="enter name" style="margin-left: 167px; width: 350px;"/></label>
          <br><br>  <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Phone number: <input name="pnumber" type="text" placeholder="enter Phone number:"style="margin-left: 90px; width: 350px;"/></label>
         <br><br>   <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Email: <input name="email" type="text" placeholder="enter mail id"style="margin-left: 170px; width: 350px;"/></label>
         <br><br>   <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Comments and questions:<textarea name="comment" style="width:350px; border:1px solid #999999; margin-top: 0px; "></textarea></label>
            <br><br>
             <input type="submit" name="btn" class ="cbtn" />
            
        </form>
    
    </div>
        
        <div class="contact-us-right">
            <h1 style="color: #ffffff; font-size: 25px; margin-top: -2px; margin-left: 12px;">Indian Online Tour</h1>
            <p style="color: #ffffff;margin-top: -50px;margin-left: 22px;">(A Division of Trans India Holidays)<br>
                <b style="font-size: 20px;">Miss. Somya Khan</b><br>
                <b style="font-size: 20px;">Add..</b> No. 18, Community Center, Teliphone nagar 
            Extension, Greater Noida, - 452001, 
            Delhi,IndiaS <br>
            <b style="font-size: 20px;">Phone</b> : +(91)-8878982889
            +(91)-9993146134<br>
            <b style="font-size: 20px;">E-Mail</b> : Somyakhan42@gmail.com 
            
            </p>
            
        </div> 
        
        
</div>


    
        
        
        
             
    </body>

</html>
