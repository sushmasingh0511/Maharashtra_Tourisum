<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,Tourpak.MyFunction"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="admin/Images/validate.js"></script>


	<LINK href="adminstyles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class=SC>
<HR>
<B><FONT COLOR="#CC00CC" face='verdana'>Add Route</FONT></B>
<HR>
<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	String RouteId = request.getParameter("RouteId");	
	MyFunction MF = new MyFunction();
	//RouteId = MF.genNextID("routemaster","RouteId","R");
	String rFrom = request.getParameter("rFrom");	
	String rTo = request.getParameter("rTo");
	String TravelsId = request.getParameter("TravelsId");
	String BusId = request.getParameter("BusId");
	String Departure = request.getParameter("Departure");
	String Arrival = request.getParameter("Arrival");	
	String Fare = request.getParameter("Fare");
	String JDate = request.getParameter("JDate");	
	int Availability = 40;	
	try{
			
			con = Tourpak.ConnectionPool.getConnection();
			stmt =  con.createStatement();
	
			
			String Query = "Insert into routemaster values('"+RouteId+"','"+rFrom+"','"+rTo+"','"+TravelsId+"','"+BusId+"','"+Departure+"','"+Arrival+"','"+Fare+"','"+JDate+"',"+Availability+")";
			int result = stmt.executeUpdate(Query);
			if( result > 0)	{
				%><P align=center><B><Font face="Georgia" color="Green">Route added Successfully</Font></B></P><%
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
</BODY>


