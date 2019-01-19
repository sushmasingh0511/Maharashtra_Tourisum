<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat"%> 
<%@page import="java.text.*"%> 
>
 

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
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/maharashtrayatra", "root","");
			PreparedStatement pst1=con.prepareStatement("insert into register values(?,?,?,?,?)");
			PreparedStatement pst2=con.prepareStatement("insert into login values(?,?)");
			pst1.setString(1,fname);
			pst1.setString(2,lname);
			pst1.setString(3,mobno);
			pst1.setString(4,email);
			pst1.setString(5,pass);
			pst2.setString(1,email);
			pst2.setString(2,pass);
			int i =pst1.executeUpdate();
			int j =pst2.executeUpdate();
			if(i>0 && j>0)
			{%>
			<script>
	alert("Record Register Successfully");
	window.location="indexSignIn_mum.html";
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
        <script>
	alert("Username Already Present");
	window.location="index1_mum.html";
        </script>
	
	<%
	session.setAttribute("FNAME",fname);
	session.setAttribute("LNAME",lname);
	session.setAttribute("MOBNO",mobno);
	session.setAttribute("EMAIL",email);
 %>
        
	
	<%

 %>    
 
   </body>
</html>>