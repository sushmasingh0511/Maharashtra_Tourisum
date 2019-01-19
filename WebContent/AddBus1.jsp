<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>

<%@page import="Tourpak.MyFunction"%>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,Tourpak.MyFunction"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="admin/Images/validate.js"></script>


	<LINK href="adminstyles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class=SC>
<HR>
<B><FONT COLOR="#CC00CC" face='verdana'>Add Bus</FONT></B>
<HR>
<%

	Connection con=null;
	//ResultSet rs=null;
	Statement stmt=null;
	String BusId = request.getParameter("BusId");
	//MyFunction MF = new MyFunction();
	//BusId = MF.genNextID("busmaster","BusId","B");
	String BusType = request.getParameter("BusType");	
	String BusNumber = request.getParameter("BusNumber");	
	String Capacity = request.getParameter("Capacity");	
	String TravelsId = request.getParameter("TravelsId");
	
	try{
			
			con = Tourpak.ConnectionPool.getConnection();
			stmt =  con.createStatement();
	
			
			String Query = "Insert into busmaster values('"+BusId+"','"+BusType+"','"+BusNumber+"','"+Capacity+"','"+TravelsId+"')";
			int result = stmt.executeUpdate(Query);
			if( result >0)	{
				%><P align=center><B><Font face="Georgia" color="Green">Bus added Successfully</Font></B></P><%
			}
			else{
				%><P align=center><B><Font face="Georgia" color="Red">Error: Please try again</Font></B></P><% 
			}
			stmt.close();
			con.close();
		}catch(Exception e){
			stmt.close();
			con.close();
			%><%=e%><%
		}
	
%>
<center><input type=button value=close onclick="window.close()"></center>

</BODY>


