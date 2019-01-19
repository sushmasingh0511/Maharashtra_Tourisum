<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class=SC>
<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	String PaymentId="";
	Tourpak.MyFunction MF = new Tourpak.MyFunction();
	PaymentId = MF.genNextID("paymentdetails","PaymentId","1");
	session.setAttribute("PaymentId",PaymentId);
	String CustomerId = request.getParameter("CustomerId");	
	String PaymentMode = request.getParameter("pmode");	
	String BankName = request.getParameter("bname");	
	String CardNo = request.getParameter("ccnum");	
	String NetAmount = request.getParameter("amt");	
	String TicketId = request.getParameter("tid");	
	try{
			con = Tourpak.ConnectionPool.getConnection();
			stmt =  con.createStatement();
	
			
			String Query = "Insert into paymentdetails(PaymentId,CustomerId,PaymentMode,BankName,CardNo,NetAmount,PaymentStatus,TicketId) values('"+PaymentId+"','"+CustomerId+"','"+PaymentMode+"','"+BankName+"',"+CardNo+","+NetAmount+",'Made','"+TicketId+"')";
			int result = stmt.executeUpdate(Query);
			if( result > 0)	{
				%><P align=center><FONT COLOR="green" face='Georgia'><I>Payment details saved successfully</I></FONT></P><%
			}
			else{
				%><P align=center>Error: Please try again</P><% 
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


