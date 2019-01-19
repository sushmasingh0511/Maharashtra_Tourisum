<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat"%> 
<%@page import="java.text.*"%> 

 

<%
String fname=request.getParameter("fname"); 
String lname=request.getParameter("lname");
String mobno=request.getParameter("mob");

String email=request.getParameter("email");
String pass=request.getParameter("pass");
String cpass=request.getParameter("cpass");







%>

<html>
<head>
<title>Register Record</title>
</head>

	<body>

 
<%

		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/maharashtra", "root","Password@123");
			PreparedStatement pst1=con.prepareStatement("insert into register1(fname,lname,mobileno,email_id,pass,cpass) values(?,?,?,?,?,?)");
			PreparedStatement pst2=con.prepareStatement("insert into Login(userid,password) values(?,?)");
			pst1.setString(1,fname);
			pst1.setString(2,lname);
			pst1.setString(3,mobno);
			pst1.setString(4,email);
			pst1.setString(5,pass);
			pst1.setString(6,cpass);
		
			pst2.setString(1,email);
			pst2.setString(2, pass);
			int i =pst1.executeUpdate();
			int j =pst2.executeUpdate();
			if(i>0 && j>0)
			{%>
			<script>
	alert("Record Register Successfully");
	window.location="indexSignIn.html";
        </script>
<%
				
			}
			con.close();
			System.out.println("Welcome");
			}
			catch(Exception e){
				System.out.println(e);
			}
      %>
        
	
	<%
	session.setAttribute("FNAME",fname);
	session.setAttribute("LNAME",lname);
	session.setAttribute("MOBNO",mobno);
	session.setAttribute("EMAIL",email);
 %>
        
	
	<%

 %>    
 
   </body>
</html>